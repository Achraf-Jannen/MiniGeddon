#!/bin/bash

echo "[*] Starting Wi-Fi scan..."

read -p "[?] Enter wireless interface (e.g. wlan0): " iface

# Enable monitor mode
sudo airmon-ng start "$iface"

mon_iface="${iface}mon"

# Start scanning
xterm -hold -e "airodump-ng $mon_iface" &

