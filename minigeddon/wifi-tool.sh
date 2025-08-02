#!/bin/bash

clear
echo "=== MiniGeddon ==="
echo "1) Check dependencies"
echo "2) Scan Wi-Fi networks"
echo "3) Run deauth attack"
echo "4) Exit"
read -p "Select an option: " choice

case $choice in
    1) ./utils/check_deps.sh ;;
    2) ./modules/scan.sh ;;
    3) ./modules/deauth.sh ;;
    4) exit ;;
    *) echo "Invalid option." ;;
esac

