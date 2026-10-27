# XLIM RFIC — Python Control

Ce programme Python permet de piloter les RFIC **Anokiwave AWMF-0197/0198** à travers une interface UART.

**Architecture :** Python → UART → MicroBlaze (FPGA) → SPI Master → RFIC.

Chaque RFIC utilise une trame SPI de **60 bits** (12 bits d'adresse + 48 bits de données).

## 1. Configuration

Modifier le fichier `rfic_config.json` :

- `num_rfics` : nombre de RFIC dans la Daisy Chain.
- `rfics` : configuration de chaque RFIC.
- `phase_deg` : déphasage de chaque canal (degrés).
- `att_db` : atténuation de chaque canal (dB).
- `enabled` : activation ou désactivation du canal.

**Important :** le nombre de RFIC doit également correspondre à la configuration du firmware MicroBlaze dans Vitis.

## 2. Commandes

### Initialisation des RFIC

```bash
python3 main.py init --send --port /dev/ttyUSB1
```

Envoie les **20 trames SPI d'initialisation**, comprenant les registres MODE, BW0, BW1, les paramètres internes, la calibration et la séquence d'allumage.

À exécuter au démarrage du RFIC.

### Configuration du beamforming

```bash
python3 main.py configure --send --port /dev/ttyUSB1
```

Calcule et envoie les registres **BW0 et BW1** à partir du fichier JSON.

- **BW0** : atténuation et activation des canaux.
- **BW1** : déphasage des canaux.

### Configuration avec MODE

```bash
python3 main.py configure --include-mode --send --port /dev/ttyUSB1
```

Envoie les registres **MODE + BW0 + BW1**.

### Lecture de la télémétrie

```bash
python3 main.py temperature --send --port /dev/ttyUSB1
```

Envoie la trame SPI `011000000000000` (adresse `0x011`) utilisée pour la demande de télémétrie.

Affiche les **60 bits reçus sur SDO**. La conversion en température (°C) n'est pas encore implémentée.

## 3. Options

| Option | Description |
|---|---|
| `--send` | Transmettre les trames au FPGA |
| `--port` | Sélectionner le port UART |
| `--include-mode` | Ajouter le registre MODE à la configuration |

Sans `--send`, les trames sont générées et affichées sans transmission au FPGA.

## 4. Ordre d'utilisation recommandé

**1. Initialiser :**
```bash
python3 main.py init --send --port /dev/ttyUSB1
```

**2. Appliquer le beamforming :**
```bash
python3 main.py configure --send --port /dev/ttyUSB1
```

**3. Lire la télémétrie :**
```bash
python3 main.py temperature --send --port /dev/ttyUSB1
```

## 5. Résultats

Les résultats sont enregistrés dans :

```text
spi_results.json
```

Les données affichées comprennent :
- **TX** : trame SPI transmise.
- **RX** : trame SPI reçue depuis SDO.
- **SPI_DONE** : fin de transmission.
- **LDB_DONE** : fin de l'impulsion LDB.

**Note :** les transactions SPI sont effectuées par le FPGA. Leur exécution ne garantit pas à elle seule que le RFIC a correctement appliqué la configuration.