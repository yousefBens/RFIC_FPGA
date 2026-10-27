# AWMF-0197/0198 — Génération de registres et trames SPI

## Fichiers
- `rfic_config.json` : trois RFIC, huit voies chacun, paramètres individuels.
- `rfic_calculator.py` : validation des paramètres, BW0/BW1, MODE, trames série 60 bits, décodage brut de télémétrie.
- `main.py` : génération et affichage des trames daisy chain, UART optionnel.
- `test_rfic.py` : tests unitaires.

## Utilisation
```bash
python3 main.py
python3 main.py --include-mode
python3 -m unittest -v test_rfic.py
pip install pyserial
python3 main.py --send --confirm-hardware --port /dev/ttyUSB1
```

**Par défaut, aucune donnée n'est envoyée au FPGA.**

## Conditions matérielles importantes
1. Les chaînes SPI série classiques sont composées de **60 bits par RFIC**. Trois RFIC = 180 bits avec **CSB maintenu actif** pendant les 180 bits. Un SPI Master configuré sur `DATA_LENGTH=60` ne convient pas sans mécanisme de flux continu.
2. `--send` suppose que le firmware UART du FPGA accepte une ligne ASCII hexadécimale de 45 caractères et la convertit en une transaction SPI continue. **Ce protocole n'est pas confirmé par les fichiers fournis**. L'option `--confirm-hardware` est une confirmation de l'utilisateur, pas une vérification automatique.
3. `ldb_enabled=true` positionne `MODE[12]`, mais **le code Python ne génère pas de pulse LDB**. Il faut que le FPGA gère LDB et sa synchronisation.
4. `--include-mode` utilise `base_mode_hex` du JSON. Cette valeur historique n'est pas une configuration constructeur universelle. Elle peut activer/désactiver des fonctions RF.
5. `--legacy-init` affiche les mots d'initialisation historiques fournis par l'utilisateur. Plusieurs adresses sont réservées dans le guide SPI ; **ne pas envoyer sans validation constructeur**.
6. La lecture température nécessite le retour SDO brut de la transaction complète, l'alignement des données pour chaque RFIC et un protocole UART de retour. La fonction `decode_telemetry_payload` décode seulement un mot de télémétrie de 48 bits **déjà correctement extrait**. Le code de température est un **code brut 6 bits**, pas des °C. Aucun facteur de conversion n'est inventé.
7. Le guide donne les champs de BW0 et BW1, mais une initialisation électrique complète (alimentation, calibrations, timing, mode TX/RX) doit être validée séparément.

## Documentation
Guide SPI AWMF-0197/0198, révision 4 : MODE=0x000, BW0=0x001, BW1=0x002, TEL_PDET_TEMP=0x015, RADDR=0x03D.
