"""XLIM_RFIC : configuration N RFIC ou lecture brute de télémétrie."""
import argparse
import json
import time
from pathlib import Path
from rfic_calculator import build_mode, daisy_chain_frames, decode_telemetry_payload
from rfic_uart import frame_to_command, send_frames, send_transaction

def load_config(path):
    cfg = json.loads(path.read_text(encoding='utf-8'))
    rfics = cfg['rfics']
    n = cfg['num_rfics']
    if not isinstance(n,int) or isinstance(n,bool) or not 1 <= n <= 8:
        raise ValueError('num_rfics doit être entre 1 et 8 (une chaîne)')
    if len(rfics) != n:
        raise ValueError(f'num_rfics={n}, mais {len(rfics)} éléments dans rfics')
    if [r['id'] for r in rfics] != list(range(1,n+1)):
        raise ValueError('Les RFIC doivent être ordonnés physiquement 1..N depuis le FPGA')
    return cfg

def make_frames(cfg, *, include_mode=False):
    modes = None
    if include_mode:
        base = int(cfg.get('base_mode_hex','000000020400'),16)
        mode = build_mode(base, ldb_enabled=cfg.get('ldb_enabled',True), telemetry_sel=0)
        modes = {r['id']:mode for r in cfg['rfics']}
    return daisy_chain_frames(cfg['rfics'],mode_values=modes)

# Trames exactes reprises de l'ancien programme ayant fonctionné sur banc.
LEGACY_INIT_FRAMES = [
    ('000000000020400', 'MODE_BASE'),
    ('001000000000000', 'BW0_ZERO'),
    ('002000000000000', 'BW1_ZERO'),
    ('003000000000000', 'MEM_ZERO'),
    ('004000000000000', 'MISC_ZERO'),
    ('00500294A5294A5', 'ATT0_CAL'),
    ('0060000000001A8', 'ATT1_CAL'),
    ('007000000000000', 'REG_007'),
    ('00800039BCE01FE', 'REG_008'),
    ('00900003611B4BE', 'REG_009'),
    ('00A00006DB6DC12', 'REG_00A'),
    ('00B000001200120', 'REG_00B'),
    ('00C000000090001', 'REG_00C'),
    ('00D000000000800', 'REG_00D'),
    ('00E000000000000', 'REG_00E'),
    ('00F000000000000', 'REG_00F'),
    ('010000000000000', 'REG_010'),
    ('011000000000000', 'REG_011_INIT'),
    ('000000000020410', 'CALIBRATION'),
    ('000000000820400', 'POWER_ON'),
]
TELEMETRY_FRAME = '011000000000000'

def make_legacy_init_frames(n, *, power_on=True):
    selected = LEGACY_INIT_FRAMES if power_on else LEGACY_INIT_FRAMES[:-2]
    return {f'{i:02d}_{name}': word * n for i,(word,name) in enumerate(selected)}

def save_results(path, result):
    path.write_text(json.dumps(result,indent=2,ensure_ascii=False),encoding='utf-8')
    print('Résultats:',path)

def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('action',nargs='?',choices=['configure','temperature','init','turnoff'],default='configure')
    p.add_argument('--config',type=Path,default=Path(__file__).with_name('rfic_config.json'))
    p.add_argument('--send',action='store_true',help='Effectuer réellement les transactions UART')
    p.add_argument('--include-mode',action='store_true',help='Inclure MODE dans configure')
    p.add_argument('--port',default='/dev/ttyUSB1')
    p.add_argument('--baudrate',type=int,default=115200)
    p.add_argument('--timeout',type=float,default=10)
    p.add_argument('--output',type=Path,default=Path('spi_results.json'))
    p.add_argument('--telemetry-shift',type=int,default=12,
                   help='Décalage du payload 48 bits dans RX60 (à confirmer sur matériel)')
    args = p.parse_args()
    cfg = load_config(args.config)
    n = cfg['num_rfics']
    print(f'=== XLIM RFIC | {n} RFIC | {60*n} bits par transaction ===')
    if args.action in ('init', 'turnoff'):
        frames = make_legacy_init_frames(n, power_on=(args.action == 'init'))
        for name, frame in frames.items():
            print(name, frame, 'UART:', frame_to_command(frame,n))
        if not args.send:
            print('Simulation uniquement; ajouter --send pour transmettre.')
            return
        results = send_frames(frames,args.port,n,args.baudrate,args.timeout)
        save_results(args.output,results)
        if not results or not all(r['success'] for r in results):
            raise SystemExit('Echec de transaction UART')
        print('Séquence envoyée; état physique du RFIC non confirmé.')
        return
    if args.action == 'configure':
        frames = make_frames(cfg,include_mode=args.include_mode)
        for name,frame in frames.items():
            print(name,frame,'\n UART:',frame_to_command(frame,n))
        if not args.send:
            print('Simulation uniquement; utiliser --send pour envoyer.')
            return
        results = send_frames(frames,args.port,n,args.baudrate,args.timeout)
        save_results(args.output,results)
        if not results or not all(r['success'] for r in results):
            raise SystemExit('Echec de transaction UART')
        print('Transactions acceptées par firmware; état physique RFIC non confirmé.')
        return

    # Reprise exacte de la trame 0x011 de l'ancien code (une transaction).
    # La correspondance du RX avec la télémétrie doit être validée sur matériel.
    frame = TELEMETRY_FRAME * n
    print('Trame télémétrie historique:',frame_to_command(frame,n))
    if not args.send:
        print('Simulation uniquement; ajouter --send pour transmettre.')
        return
    results = send_frames({'TELEMETRY_0x011':frame},args.port,n,args.baudrate,args.timeout)
    if not results or not results[0]['success']:
        save_results(args.output,results)
        raise SystemExit('Echec de transaction télémétrie')
    rx_words = results[0]['rx_words']
    decoded = []
    for i, word in enumerate(rx_words):
        rx60 = int(word,16)
        payload = (rx60 >> args.telemetry_shift) & ((1<<48)-1)
        item = {'rfic_id':n-i, 'rx60_hex':word, 'payload48_hex':f'{payload:012X}'}
        decoded.append(item)
        print(f'RFIC {n-i}: RX brut={word}')
    save_results(args.output,{'transactions':results,'telemetry_raw':decoded,
        'warning':'Lecture brute uniquement. Position et validité du champ température à confirmer dans le protocole SPI.'})

if __name__=='__main__':
    main()