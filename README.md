# XLIM_RFIC — Guide complet de la configuration RFIC, de Python aux broches SPI

> **Périmètre :** architecture de test avec **3 RFIC en daisy chain**, un **MicroBlaze**, une interface **AXI4-Lite**, un **SPI Master VHDL** et un **contrôleur LDB**. Ce document distingue les comportements observés dans les journaux des points qui restent à valider sur le matériel et dans la documentation RFIC.

## 1. Objectif et principe

Le PC définit les phases, atténuations et activations des huit voies de chaque RFIC. Python convertit ces grandeurs en codes binaires et prépare des mots SPI. Le MicroBlaze reçoit les commandes via UART, puis pilote un IP matériel par AXI4-Lite. Le SPI Master émet les bits sur MOSI avec SCLK et CSB ; un contrôleur distinct génère LDB pour demander l'application synchronisée des paramètres, lorsque ce mode est pris en charge et correctement configuré.

**Trois concepts distincts :**

1. **Paramètre RF** : par exemple phase 45°, atténuation 1 dB, voie active.
2. **Écriture de registre** : mot SPI de **60 bits** = champ commande/adresse **12 bits** + données **48 bits**.
3. **Transaction daisy chain** : pour un même registre, **3 mots de 60 bits = 180 bits**, envoyés dans l'ordre RFIC 3 → RFIC 2 → RFIC 1 sous un même CSB actif.

Pour écrire les trois registres **MODE**, **BW0** et **BW1** sur les trois RFIC : **3 transactions de 180 bits = 540 bits**. Une mise à jour des seules phases et atténuations nécessite normalement seulement BW0 et BW1, soit **360 bits** sur trois RFIC. Le registre MODE n'a pas à être réécrit à chaque mise à jour s'il est déjà correctement initialisé.

## 2. Vue d'ensemble : entrées, traitements et sorties

```text
UTILISATEUR
  | phases [°], atténuations [dB], activation de 8 voies × 3 RFIC
  v
rfic_config.json
  | paramètres structurés
  v
rfic_calculator.py
  | codes de phase/atténuation, payloads MODE/BW0/BW1 (48 bits)
  | puis mots SPI (12 bits commande/adresse + 48 bits payload)
  v
main.py
  | ordre de daisy chain : RFIC3, RFIC2, RFIC1
  | 45 chiffres hexadécimaux = 180 bits par registre
  v
rfic_uart.py
  | ASCII : SPI:<15HEX>:<15HEX>:<15HEX>\n
  v
UART PC → UART Lite dans FPGA
  | octets reçus
  v
MicroBlaze (main.c)
  | analyse ASCII, convertit les 3 mots, découpe HIGH/LOW
  | écrit/relit les registres AXI4-Lite
  v
SPI_Master_AXI_slave_lite_v1_0_S00_AXI.vhd
  | tx_data[59:0], tx_valid, tx_last
  v
SPI_Master.vhd
  | MOSI, SCLK, CSB ; retour MISO → rx_data[59:0]
  v
Adaptation de niveau logique 3,3 V ↔ 1,2 V
  v
RFIC1 → RFIC2 → RFIC3 (daisy chain)

MicroBlaze → registre AXI CTRL_LDB → LDB_Controller_bg.vhd
  | attend SPI inactif, temporise, émet LDB actif bas
  v
LDB commun vers les RFIC (sous réserve du mode LDB du composant)
```

### Tableau des interfaces

| Bloc | Entrées | Traitement | Sorties |
|---|---|---|---|
| `rfic_config.json` | Valeurs saisies | Stockage | Configuration des 3 RFIC |
| `rfic_calculator.py` | Phases, atténuations, `enabled`, MODE | Quantification, placement des bits, ajout d'adresse | Payloads 48 bits, mots SPI 60 bits |
| `main.py` | JSON + options CLI | Validation, construction des transactions, ordre RFIC3→1 | Chaînes de 45 caractères HEX |
| `rfic_uart.py` | Trame HEX de 180 bits | Ajout préfixe et séparateurs, envoi, lecture des réponses | Octets UART ASCII ; rapport TX/RX |
| UART Lite | RX série, horloge | Conversion série/octets | Octets lus par MicroBlaze |
| MicroBlaze `main.c` | Ligne ASCII, états AXI | Parsing, HIGH/LOW, orchestration, attente/ACK | Écritures AXI, réponses UART |
| AXI Slave VHDL | Adresses, données, contrôle AXI | Registres TX, commandes et états | `tx_data`, `tx_valid`, `tx_last`, `ldb_trigger` |
| `SPI_Master.vhd` | `tx_data`, `tx_valid`, `tx_last`, MISO, clk | FSM SPI, décalage série | MOSI, SCLK, CSB, RX, `busy`, `done` |
| `LDB_Controller_bg.vhd` | `trigger`, `spi_busy`, clk, reset | Attente, délai, impulsion | LDB, `busy`, `done` |
| RFIC | SPI et LDB aux niveaux électriques adéquats | Décodage et chargement de registres | État RF ; éventuellement SDO/MISO |

## 3. Étape Python 1 : le fichier `rfic_config.json`

La structure utilisée dans le projet contient notamment :

```json
{
  "num_rfics": 3,
  "ldb_enabled": true,
  "base_mode_hex": "000000020400",
  "rfics": [
    {
      "id": 1,
      "channels": {
        "1a": {"phase_deg": 45.0, "att_db": 1.0, "enabled": true},
        "1b": {"phase_deg": 90.0, "att_db": 2.0, "enabled": true}
      }
    }
  ]
}
```

**Extrait pédagogique** : le fichier réel doit renseigner les **8 voies de chacun des 3 RFIC** ; le fragment ci-dessus n'est pas un fichier complet exécutable.

Les voies sont parcourues dans cet ordre : `1a, 1b, 2a, 2b, 3a, 3b, 4a, 4b`. Cet ordre détermine leur position dans les registres. Les identifiants des RFIC dans le JSON sont `[1, 2, 3]`, puis inversés lors de la construction de la chaîne série.

## 4. Étape Python 2 : quantification des paramètres RF

### 4.1 Phase sur 6 bits

La résolution utilisée par le programme est **5,625°** :

\[
\text{phase\_code} = \frac{\text{phase\_deg}}{5{,}625}
\]

Exemple : 45° → code 8 → `001000` sur 6 bits. Les valeurs doivent être compatibles avec la résolution et les limites du programme. Les 64 codes correspondent aux phases de 0° à 354,375° par pas de 5,625°.

### 4.2 Atténuation sur 4 bits

La résolution utilisée est **0,5 dB** :

\[
\text{att\_code} = \frac{\text{att\_db}}{0{,}5}
\]

Exemple : 1 dB → code 2 → `0010` sur 4 bits. Les 16 codes couvrent 0 à 7,5 dB.

### 4.3 Activation/désactivation

Le générateur forme un champ `rf_dis` :

- `enabled = true` → bit de désactivation à **0** ;
- `enabled = false` → bit de désactivation à **1**.

Ces conventions sont celles du générateur actuel et doivent être confrontées au mapping exact du composant.

## 5. Étape Python 3 : construction de BW0, BW1 et MODE

### 5.1 BW0 : atténuations et désactivations

Pour chaque voie d'indice `i` (de 0 à 7), Python place l'atténuation codée sur 4 bits :

```python
bw0 |= att_code << (4 * i)
```

Les atténuations occupent donc les bits **0 à 31** du payload. Le champ `rf_dis` est placé avec :

```python
bw0 |= rf_dis << 34
```

Soit des bits de désactivation aux positions **34 à 41** du payload, selon la convention du code. Les autres bits ne sont pas utilisés par cette construction.

**Exemple pédagogique :** seule la voie `1a` a 1 dB et `1b` a 2 dB, toutes les autres sont à 0 dB et actives :

```python
bw0 = (2 << 0) | (4 << 4)  # 0x000000000042 (48 bits)
```

### 5.2 BW1 : phases

Chaque phase occupe 6 bits :

```python
bw1 |= phase_code << (6 * i)
```

| Bits BW1 | Voie |
|---|---|
| 5:0 | 1a |
| 11:6 | 1b |
| 17:12 | 2a |
| 23:18 | 2b |
| 29:24 | 3a |
| 35:30 | 3b |
| 41:36 | 4a |
| 47:42 | 4b |

**Exemple pédagogique :** voie `1a` à 45° (code 8), voie `1b` à 90° (code 16), autres phases à 0° :

```python
bw1 = (8 << 0) | (16 << 6)  # 0x000000000408 (48 bits)
```

### 5.3 MODE : paramètres de fonctionnement

Le projet utilise les constantes :

```python
ADDR_MODE = 0x000
ADDR_BW0  = 0x001
ADDR_BW1  = 0x002
DEFAULT_MODE = 0x000000020400
```

La fonction `build_mode(...)` prépare un payload MODE de 48 bits, notamment en positionnant le bit 12 pour demander l'activation du mécanisme LDB :

```python
mode = build_mode(
    int("000000020400", 16),
    ldb_enabled=True,
    telemetry_sel=0,
)
```

Avec ce seul changement de bit, le payload obtenu est `0x000000021400` ; il dépend des autres options éventuelles de `build_mode`. **La validité des champs MODE et la séquence d'initialisation doivent être vérifiées dans la documentation RFIC avant utilisation physique.**

### 5.4 Une trame de 60 bits par écriture

La fonction `serial_write_frame(address, payload)` effectue :

```python
word = (address << 48) | payload
return f"{word:015X}"
```

Le résultat comporte **15 caractères hexadécimaux = 60 bits** :

```text
┌─────────────────────────────┬────────────────────────────────────┐
│ Commande/adresse : 12 bits  │ Payload registre : 48 bits         │
└─────────────────────────────┴────────────────────────────────────┘
```

Pour les trois adresses de notre programme, le champ supérieur vaut respectivement `000`, `001` et `002` en hexadécimal. Dans le modèle de protocole utilisé, il correspond à un accès en écriture ; il faut valider l'interprétation précise des bits de commande sur la fiche constructeur.

**Exemple pour un RFIC :**

| Registre | Payload (48 bits) | Mot SPI (60 bits) |
|---|---|---|
| MODE | `000000021400` | `000000000021400` |
| BW0 | `000000000042` | `001000000000042` |
| BW1 | `000000000408` | `002000000000408` |

Pour écrire ces trois registres d'un RFIC isolé, il faut **3 transactions de 60 bits**, soit **180 bits transmis au total**. Ce n'est pas un seul mot de 180 bits : ce sont trois écritures distinctes.

## 6. Étape Python 4 : former les transactions pour trois RFIC

Les RFIC sont disposés comme suit :

```text
FPGA MOSI → SDI RFIC1 → SDO RFIC1 → SDI RFIC2
          → SDO RFIC2 → SDI RFIC3 → SDO RFIC3 → FPGA MISO
```

Pour un registre donné, les mots sont émis **du RFIC le plus éloigné au plus proche** : RFIC3, RFIC2, RFIC1.

### Exemple réel de la transaction BW0

```text
RFIC3 : 00100C02200CCAA
RFIC2 : 001000066443311
RFIC1 : 00100C055FF0022
```

Concaténation :

```text
00100C02200CCAA00100006644331100100C055FF0022
```

Longueur : **45 chiffres HEX = 180 bits**.

### Exemple réel de la transaction BW1

```text
RFIC3 : 002186082C30820
RFIC2 : 00241030C208104
RFIC1 : 002820000410208
```

Concaténation :

```text
002186082C3082000241030C208104002820000410208
```

**Pourquoi ne pas concaténer BW0 et BW1 d'un RFIC ?** Parce que les trois RFIC en daisy chain doivent chacun recevoir un mot destiné au **même registre** dans une transaction de 180 bits. Nous effectuons donc une transaction BW0 pour toute la chaîne, puis une transaction BW1 pour toute la chaîne.

## 7. Étape Python 5 : construire et envoyer la commande UART

Le fichier `rfic_uart.py` transforme la chaîne HEX de 180 bits en commande ASCII :

```text
SPI:<mot_RFIC3>:<mot_RFIC2>:<mot_RFIC1>\n
```

Exemple BW0 :

```text
SPI:00100C02200CCAA:001000066443311:00100C055FF0022
```

- `SPI:` : mot-clé interprété par le programme MicroBlaze ;
- `:` : séparateurs entre les mots ;
- `\n` : fin de ligne ;
- **les caractères ASCII ne sont pas des bits SPI** ; le FPGA doit d'abord les décoder.

`send_transaction(...)` attend ensuite les messages du MicroBlaze, repère les lignes `RX HIGH=... LOW=...`, les convertit en mots RX de 60 bits et recherche le message `CONFIGURATION COMPLETED`. `send_frames(...)` ouvre le port série et enchaîne les transactions.

Exemple de commande PC :

```bash
python3 -m unittest discover -v
python3 main.py                        # calcul seulement
python3 main.py --send --port /dev/ttyUSB1
python3 main.py --send --port /dev/ttyUSB1 --include-mode
```

**Précautions :** `--include-mode` écrit MODE en plus de BW0/BW1 ; ne pas l'utiliser sur des RFIC physiques avant validation du registre MODE. Fermer tout autre terminal qui occupe le port série. Les résultats sont sauvegardés dans `spi_results.json`.

## 8. Étape FPGA 1 : UART Lite → MicroBlaze

L'UART Lite reçoit un signal série physique (`UART_RX`), reconstruit les octets ASCII et les met à disposition du MicroBlaze. Le MicroBlaze exécute le logiciel C `main.c` ; il ne génère pas lui-même les impulsions SPI.

### Entrées du MicroBlaze

- octets ASCII de l'UART Lite ;
- registres de statut SPI et LDB accessibles via AXI4-Lite.

### Traitement

1. Lire jusqu'au caractère de fin de ligne ;
2. vérifier le préfixe `SPI:` et le nombre de mots ;
3. convertir chacun des trois groupes de 15 caractères HEX en entier 60 bits ;
4. séparer chaque mot en **28 bits HIGH** et **32 bits LOW** ;
5. écrire les données dans les registres AXI de l'IP ;
6. déclencher la transmission, attendre la réception et lire les mots RX ;
7. attendre la fin de transaction SPI ;
8. déclencher LDB dans la version actuelle du firmware ;
9. renvoyer les messages de statut et les données RX au PC.

### Exemple réel : premier mot BW0 (RFIC3)

```text
Mot 60 bits : 0x00100C02200CCAA
HIGH 28 bits : 0x000100C0
LOW  32 bits : 0x2200CCAA
```

Le MicroBlaze écrit ces deux valeurs dans les registres AXI. Le découpage HIGH/LOW est uniquement lié à la largeur de données **32 bits d'AXI4-Lite** ; il ne modifie pas les 60 bits envoyés par SPI.

## 9. Étape FPGA 2 : registres AXI4-Lite de l'IP personnalisé

Dans notre architecture de test, l'IP SPI est mappé à l'adresse de base **`0x44A00000`**.

| Offset | Registre | Usage |
|---|---|---|
| `0x00` | `REG_CTRL` | `SEND` bit 0 ; `LAST` bit 1 ; `LDB` bit 2 |
| `0x04` | `REG_TX_LOW` | 32 bits de poids faible |
| `0x08` | `REG_TX_HIGH` | 28 bits de poids fort |
| `0x0C` | `REG_STATUS` | `SPI_BUSY`, `TX_READY`, `RX_VALID`, `SPI_DONE`, `LDB_BUSY`, `LDB_DONE`, `ERROR` |
| `0x10` | `REG_RX_LOW` | Réception : 32 bits faibles |
| `0x14` | `REG_RX_HIGH` | Réception : 28 bits forts |
| `0x18` | `REG_RX_COUNT` | Nombre de mots reçus |
| `0x1C` | `REG_ACK` | Acquittement des états persistants |

> **Important :** ce tableau décrit le mapping attendu par le firmware utilisé dans les essais. La correspondance définitive doit être confirmée dans le RTL exact de `SPI_Master_AXI_slave_lite_v1_0_S00_AXI.vhd`.

### Interface entre AXI Slave et SPI Master

```text
AXI Slave ──────────────────────────────► SPI_Master.vhd
    tx_data[59:0]       60 bits à transmettre
    tx_valid            nouveau mot disponible
    tx_last             1 seulement pour le dernier mot

SPI_Master.vhd ─────────────────────────► AXI Slave
    tx_ready            prêt à accepter un mot
    rx_data[59:0]       mot reçu sur MISO
    rx_valid            réception d'un mot terminée
    busy                transaction en cours
    done                transaction terminée
```

Pour les trois mots :

| Mot transmis | `tx_last` | Comportement CSB attendu |
|---|---:|---|
| RFIC3 | 0 | Reste bas après les 60 bits |
| RFIC2 | 0 | Reste bas après les 60 bits |
| RFIC1 | 1 | Remonte après les 60 derniers bits |

L'AXI Slave fournit les commandes au SPI Master selon la logique de handshake (`tx_valid` / `tx_ready`) implémentée dans le VHDL.

## 10. Étape FPGA 3 : `SPI_Master.vhd`

### Entrées et sorties

| Port | Sens | Taille | Fonction |
|---|---|---:|---|
| `Clk` | Entrée | 1 | Horloge FPGA |
| `rst` | Entrée | 1 | Réinitialisation |
| `tx_data` | Entrée | 60 | Mot série à envoyer |
| `tx_valid` | Entrée | 1 | Mot proposé par l'AXI Slave |
| `tx_last` | Entrée | 1 | Dernier mot de la transaction |
| `miso` | Entrée | 1 | Retour série RFIC |
| `tx_ready` | Sortie | 1 | Accepte un nouveau mot |
| `mosi` | Sortie | 1 | Données série vers RFIC |
| `sclk` | Sortie | 1 | Horloge SPI |
| `ss_n` | Sortie | 1 | CSB actif bas |
| `rx_data` | Sortie | 60 | Données série reçues |
| `rx_valid` | Sortie | 1 | Mot RX disponible |
| `busy` | Sortie | 1 | Transaction active |
| `done` | Sortie | 1 | Transaction achevée |

### Fonctionnement

1. À l'acceptation d'un mot, charger `tx_data` dans un registre à décalage ;
2. activer CSB (`ss_n = 0`) ;
3. produire les fronts SCLK et placer les bits MOSI **MSB first** (bit 59 jusqu'au bit 0) ;
4. échantillonner MISO suivant le mode SPI configuré ;
5. après 60 bits, rendre les 60 bits RX disponibles ;
6. si `tx_last = 0`, maintenir CSB bas en attendant le mot suivant ;
7. si `tx_last = 1`, libérer CSB et signaler `done`.

Avec `Clk = 100 MHz` et `CLK_DIV = 8`, **si le diviseur est appliqué à chaque demi-période**, la fréquence SCLK est :

\[
f_{SCLK}=\frac{100\ \mathrm{MHz}}{2\times8}=6{,}25\ \mathrm{MHz}.
\]

La durée de **180 périodes SCLK** est alors **28,8 µs**, hors pauses entre mots et latences de contrôle. Il faut confirmer ce calcul dans le VHDL exact et à l'oscilloscope/ILA.

### Point critique : CSB et pauses

La transaction de 180 bits doit conserver CSB actif durant les trois mots. Le logiciel peut introduire des **pauses d'horloge SCLK entre les mots** ; il faut vérifier dans la documentation RFIC que ce fonctionnement est autorisé. Le journal `180 bits transmitted` ne remplace pas une mesure des 180 impulsions SCLK.

## 11. Étape FPGA 4 : `LDB_Controller_bg.vhd`

### Entrées / sorties

| Port | Sens | Fonction |
|---|---|---|
| `clk` | Entrée | Horloge FPGA |
| `rst` | Entrée | Reset |
| `trigger` | Entrée | Demande de déclenchement LDB |
| `spi_busy` | Entrée | Indication de SPI occupé |
| `ldb` | Sortie | Impulsion LDB, active à l'état bas dans le design |
| `busy` | Sortie | Contrôleur occupé |
| `done` | Sortie | Séquence LDB terminée |

### Traitement

À la demande du MicroBlaze (`CTRL_LDB` via AXI), le contrôleur attend que SPI ne soit plus occupé, respecte un délai programmé, produit l'impulsion LDB, puis signale la fin. La largeur d'impulsion et les délais exacts dépendent des paramètres et de l'implémentation du module : **ne pas les déduire uniquement du nom `LDB_DELAY`**.

**LDB n'est pas un mot de 60 bits :** c'est un **signal logique séparé** des lignes SPI, distribué en commun aux RFIC pour demander l'application des configurations selon le mode constructeur.

### Séquence actuelle et séquence visée

**Firmware actuellement testé :**

```text
BW0 RFIC3+2+1 (180 bits) → CSB haut → LDB
BW1 RFIC3+2+1 (180 bits) → CSB haut → LDB
```

Les journaux montrent bien **deux commandes LDB**, une après BW0 et une après BW1.

**Architecture souhaitée pour mise à jour synchronisée :**

```text
Initialiser MODE selon la séquence constructeur
BW0 RFIC3+2+1 (180 bits) → CSB haut
BW1 RFIC3+2+1 (180 bits) → CSB haut
Attendre SPI libre et délai requis
LDB commun unique
```

Cette dernière séquence **n'est pas encore celle du firmware testé** : elle nécessite de **dissocier la commande UART `SPI` de la commande `LDB`**. La possibilité de préparer BW0 et BW1 puis de les appliquer par une impulsion commune doit être confirmée dans la documentation du composant.

## 12. Interface électrique : FPGA, level shifter et RFIC

Le FPGA travaille côté logique **3,3 V** dans le montage prévu, tandis que les lignes numériques RFIC sont prévues côté **1,2 V**. Utiliser une adaptation de niveau appropriée et respecter le sens des signaux :

```text
FPGA MOSI (3,3 V) ──► adaptation ──► RFIC SDI (1,2 V)
FPGA SCLK (3,3 V) ──► adaptation ──► RFIC SCLK (1,2 V)
FPGA CSB  (3,3 V) ──► adaptation ──► RFIC CSB  (1,2 V)
FPGA LDB  (3,3 V) ──► adaptation ──► RFIC LDB  (1,2 V)
FPGA MISO (3,3 V) ◄── adaptation ◄── RFIC SDO  (1,2 V)
```

Les connexions internes RFIC1→RFIC2→RFIC3 suivent les exigences électriques des composants. Ne pas relier directement une sortie 3,3 V à une entrée RFIC 1,2 V. Vérifier également la masse commune, les alimentations VCCA/VCCB et les spécifications des traducteurs de niveau.

## 13. Exemple de bout en bout : les résultats de test réels

Le PC a affiché :

```text
BW0: 00100C02200CCAA00100006644331100100C055FF0022
BW1: 002186082C3082000241030C208104002820000410208
```

Commande UART BW0 :

```text
SPI:00100C02200CCAA:001000066443311:00100C055FF0022
```

Le firmware a répondu pour chaque RFIC :

```text
[SPI] Sending RFIC 3
TX HIGH=0x000100C0 LOW=0x2200CCAA
RX HIGH=0x0FFFFFFF LOW=0xFFFFFFFF
...
[SPI] 180 bits transmitted
[SPI] CSB released
[LDB] Trigger
[LDB] DONE
CONFIGURATION COMPLETED
```

Puis la même séquence a réussi pour BW1.

### Ce qui est prouvé et ce qui ne l'est pas

**Confirmé par les tests logiciels et les journaux :**

- 8 tests unitaires Python réussis ;
- commande UART reçue et analysée ;
- trois mots de 60 bits reconnus par le firmware pour BW0 et BW1 ;
- états `SPI_DONE` et `LDB_DONE` rapportés ;
- deux transactions marquées `OK (firmware)`.

**Pas encore vérifié physiquement :**

- les 180 fronts SCLK réellement présents sur la broche ;
- la continuité de CSB bas pendant toute la transaction ;
- les valeurs MOSI réellement émises ;
- la largeur, polarité et position temporelle de LDB sur la broche ;
- les niveaux 3,3 V / 1,2 V après translation ;
- l'acceptation et l'application des configurations par les RFIC réels.

Le RX `FFFFFFFFFFFFFFF` (60 bits à 1) observé sans RFIC ni loopback **ne valide pas la réception SPI** : l'entrée MISO peut être flottante ou tirée au niveau haut.

## 14. Plan de validation recommandé

### Test A — Génération Python

```bash
python3 -m unittest discover -v
python3 main.py
```

Vérifier les 15 caractères HEX par mot, les 45 caractères par chaîne et l'ordre RFIC3→RFIC1.

### Test B — Communication PC/MicroBlaze

```bash
python3 main.py --send --port /dev/ttyUSB1
```

Fermer le terminal Vitis qui pourrait occuper le port. Examiner `spi_results.json` et les logs.

### Test C — Loopback SPI (sans RFIC)

Relier **MOSI à MISO au même niveau logique**, uniquement sur les broches FPGA adaptées, sans tension externe. Réexécuter la commande. Comparer les mots RX et TX. Leur égalité dépend également du mode SPI et du timing d'échantillonnage ; une différence impose une analyse des fronts et non une conclusion immédiate sur le câblage.

### Test D — Simulation LDB

Tester dans un testbench :

1. `trigger=0` → LDB au repos ;
2. `trigger=1`, `spi_busy=0` → une impulsion après délai ;
3. `trigger=1`, `spi_busy=1` → aucune impulsion pendant l'activité SPI ;
4. nouvelle demande après retour au repos → nouvelle impulsion.

### Test E — ILA ou analyseur logique

Observer `SCLK`, `MOSI`, `CSB`, `spi_busy`, `ldb_trigger`, `LDB`, `ldb_done`. Vérifier les **180 cycles**, le maintien CSB, la chronologie LDB et les délais. Un ILA voit les signaux internes ; un oscilloscope/analyseur logique permet de vérifier les **broches physiques** et les niveaux électriques.

### Test F — RFIC réel

Seulement après validation du mapping constructeur, des niveaux, du mode SPI et des timings : connecter un RFIC, initialiser MODE, écrire BW0/BW1, appliquer LDB selon la procédure requise et vérifier la réponse RF ou télémétrie disponible.

## 15. Passage de 3 à 64 RFIC

Architecture cible : **8 SPI Masters en parallèle**, chacun contrôlant une chaîne de **8 RFIC**. Une transaction d'écriture d'un registre représente **8 × 60 = 480 bits par chaîne**. Chaque SPI Master envoie sa chaîne de 480 bits ; un contrôleur commun attend que les huit SPI Masters soient libres avant d'autoriser LDB. Pour trois registres, cela représente **1 440 bits par chaîne** (MODE, BW0, BW1), ou **11 520 bits au total** sur les huit chaînes, répartis entre les moteurs parallèles.

Le logiciel Python devra produire les mots pour les 64 RFIC et les organiser par chaîne ; le MicroBlaze devra commander huit IP ou un IP multichaîne ; le contrôleur LDB devra surveiller l'état global des huit transferts.

## 16. Résumé essentiel

```text
Une voie RF : phase + atténuation + activation
      ↓
Un RFIC : 8 voies → BW0 (48 bits) + BW1 (48 bits) ; MODE si nécessaire
      ↓
Une écriture : 12 bits commande/adresse + 48 bits données = 60 bits
      ↓
Trois RFIC : 3 × 60 = 180 bits par registre, RFIC3→RFIC2→RFIC1
      ↓
Python : calcule, assemble, envoie une commande ASCII UART
      ↓
MicroBlaze : décode et pilote des registres AXI4-Lite
      ↓
AXI Slave : présente tx_data[59:0], tx_valid, tx_last au SPI Master
      ↓
SPI Master VHDL : génère MOSI, SCLK, CSB et reçoit MISO
      ↓
LDB Controller : émet une impulsion commune après les transferts requis
      ↓
RFIC : reçoit les écritures et applique les paramètres selon son mode
```

**Référence de travail :** descriptions des modules et sorties de test communiquées dans le projet XLIM_RFIC. Ce README décrit l'architecture logicielle/RTL discutée ; il **ne remplace pas** la vérification du VHDL exact ni la fiche technique du RFIC pour le mapping, les timings et les conditions d'application LDB.
