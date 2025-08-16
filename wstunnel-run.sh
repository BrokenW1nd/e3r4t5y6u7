#!/data/data/com.termux/files/usr/bin/sh

# URL до бинарника
URL="https://github.com/BrokenW1nd/ws/raw/refs/heads/main/wstunnel"
BIN="./wstunnel"

# Скачиваем, если ещё нет
if [ ! -f "$BIN" ]; then
    echo "[*] Скачиваю wstunnel..."
    curl -L -o "$BIN" "$URL"
    chmod +x "$BIN"
fi

# Запускаем клиент
echo "[*] Запускаю wstunnel..."
$BIN client -L tcp://127.0.0.1:51820:127.0.0.1:51820 wss://vpn.brokenvps.top/
