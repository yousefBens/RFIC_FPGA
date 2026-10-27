"""Transport UART : commande SPI:N mots 60 bits, lecture des N mots RX."""
import re
import time
RX_PATTERN = re.compile(r'RX\s+HIGH=0x([0-9a-fA-F]+)\s+LOW=0x([0-9a-fA-F]+)')

def frame_to_command(frame, num_rfics=None):
    frame = frame.strip().upper()
    if num_rfics is None:
        if len(frame) % 15:
            raise ValueError('La longueur doit être multiple de 15 caractères')
        num_rfics = len(frame)//15
    if not 1 <= num_rfics <= 8:
        raise ValueError('Nombre de RFIC attendu: 1..8')
    if len(frame) != 15*num_rfics or not re.fullmatch(r'[0-9A-F]+', frame):
        raise ValueError(f'Trame invalide: {15*num_rfics} caractères HEX requis')
    return 'SPI:' + ':'.join(frame[i:i+15] for i in range(0,len(frame),15))

def send_transaction(ser, name, frame, num_rfics, timeout_s=10.0):
    command = frame_to_command(frame, num_rfics)
    print(f'\n[{name}] {command}')
    ser.write((command+'\n').encode('ascii'))
    ser.flush()
    deadline = time.monotonic() + timeout_s
    log, rx = [], []
    success, error = False, None
    while time.monotonic() < deadline:
        raw = ser.readline()
        if not raw:
            continue
        line = raw.decode('ascii', errors='replace').strip()
        if not line:
            continue
        print('[FPGA]', line)
        log.append(line)
        match = RX_PATTERN.search(line)
        if match:
            high = int(match.group(1),16) & 0x0FFFFFFF
            low = int(match.group(2),16) & 0xFFFFFFFF
            rx.append(f'{((high<<32)|low):015X}')
        if 'CONFIGURATION COMPLETED' in line:
            success = True
            break
        if '[ERROR]' in line or 'Configuration failed' in line or 'Invalid UART command' in line:
            error = line
            break
    if not success and error is None:
        error = f'Timeout ({timeout_s:g} s)'
    if success and len(rx) != num_rfics:
        success, error = False, f'RX incomplets: {len(rx)}/{num_rfics}'
    tx = command.split(':')[1:]
    for i, word in enumerate(tx):
        print(f'  RFIC {num_rfics-i}: TX={word} RX={rx[i] if i<len(rx) else "MANQUANT"}')
    return {'register':name, 'success':success, 'error':error, 'tx_words':tx,
            'rx_words':rx, 'uart_log':log}

def send_frames(frames, port, num_rfics, baudrate=115200, timeout_s=10.0):
    try:
        import serial
    except ImportError as exc:
        raise RuntimeError('Installer pyserial: python3 -m pip install pyserial') from exc
    results = []
    with serial.Serial(port, baudrate=baudrate, timeout=.2, write_timeout=2) as ser:
        time.sleep(.3)
        ser.reset_input_buffer()
        for name, frame in frames.items():
            result = send_transaction(ser,name,frame,num_rfics,timeout_s)
            results.append(result)
            if not result['success']:
                break
    return results