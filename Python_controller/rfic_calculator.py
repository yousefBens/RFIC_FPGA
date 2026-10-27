"""Encodage des mots SPI AWMF-0197/0198 (60 bits)."""
from math import isfinite
CHANNELS = ('1a','1b','2a','2b','3a','3b','4a','4b')
ADDR_MODE, ADDR_BW0, ADDR_BW1 = 0, 1, 2
DEFAULT_MODE = 0x000000020400

def quantize(value, step, maximum, label):
    if isinstance(value, bool) or not isinstance(value, (int,float)) or not isfinite(value):
        raise ValueError(f'{label}: nombre fini requis')
    if not 0 <= value <= maximum:
        raise ValueError(f'{label}: hors plage 0..{maximum}')
    code = round(value/step)
    if abs(value-code*step) > 1e-6:
        raise ValueError(f'{label}: multiple de {step} requis')
    return code

def calculate_beamforming_registers(config):
    if set(config) != set(CHANNELS):
        raise ValueError('Il faut exactement les huit voies: ' + ', '.join(CHANNELS))
    bw0 = bw1 = rf_dis = 0
    for i, ch in enumerate(CHANNELS):
        c = config[ch]
        if not isinstance(c.get('enabled'), bool):
            raise ValueError(f'{ch}: enabled doit être booléen')
        bw1 |= quantize(c['phase_deg'], 5.625, 354.375, f'{ch}.phase') << (6*i)
        bw0 |= quantize(c['att_db'], .5, 7.5, f'{ch}.att') << (4*i)
        if not c['enabled']:
            rf_dis |= 1 << i
    bw0 |= rf_dis << 34
    return {'BW0': bw0, 'BW1': bw1}

def build_mode(base_mode=DEFAULT_MODE, *, ldb_enabled=True, telemetry_sel=0, rf_enabled=None):
    if not 0 <= base_mode < (1<<48):
        raise ValueError('MODE hors 48 bits')
    if telemetry_sel not in (0,1,2,7):
        raise ValueError('telemetry_sel doit valoir 0,1,2,7')
    mode = (base_mode & ~(7<<14)) | (telemetry_sel<<14)
    mode = (mode | (1<<12)) if ldb_enabled else (mode & ~(1<<12))
    if rf_enabled is not None:
        mode = (mode | (1<<23)) if rf_enabled else (mode & ~(1<<23))
    return mode

def serial_write_frame(address, payload):
    if not 0 <= address < (1<<10) or not 0 <= payload < (1<<48):
        raise ValueError('Adresse (10 bits) ou données (48 bits) invalides')
    return f'{((address<<48)|payload):015X}'

def daisy_chain_frames(rfics, *, mode_values=None):
    if not rfics:
        raise ValueError('Chaîne vide')
    ids = [r['id'] for r in rfics]
    if len(set(ids)) != len(ids):
        raise ValueError('IDs dupliqués')
    frames = {}
    if mode_values is not None:
        frames['MODE'] = ''.join(serial_write_frame(ADDR_MODE, mode_values[r['id']]) for r in reversed(rfics))
    for name, addr in [('BW0', ADDR_BW0), ('BW1', ADDR_BW1)]:
        frames[name] = ''.join(serial_write_frame(addr, calculate_beamforming_registers(r['config'])[name]) for r in reversed(rfics))
    return frames

def decode_telemetry_payload(payload):
    if not 0 <= payload < (1<<48):
        raise ValueError('Payload télémétrie hors 48 bits')
    return {'temperature_raw': payload & 0x3F,
            'power_detector_raw': {ch: (payload >> (6+5*i)) & 0x1F for i,ch in enumerate(CHANNELS)},
            'zcal_applied': bool((payload >> 46) & 1)}