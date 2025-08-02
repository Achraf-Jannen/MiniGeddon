#!/bin/bash

REQUIRED_TOOLS=(airmon-ng airodump-ng aireplay-ng iwconfig ifconfig macchanger)

echo "[*] Checking for required tools..."
for tool in "${REQUIRED_TOOLS[@]}"; do
    if ! command -v "$tool" >/dev/null 2>&1; then
        echo "[-] $tool is not installed!"
    else
        echo "[+] $tool is installed."
    fi
done

