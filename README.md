# WiFi-Deauther-Script
# WiFi Deauther Script

## 📌 Description
This script performs a **WiFi deauthentication attack** on all nearby devices across all channels using `aireplay-ng`. It continuously cycles through all WiFi channels and sends **deauth packets**, disconnecting devices from their networks.

⚠️ **Disclaimer**: This script is for **educational and authorized testing purposes only**. Unauthorized use is illegal.

## 🛠️ Requirements
- **Kali Linux**
- **Aircrack-ng**
- **A Wireless Adapter that supports monitor mode and packet injection**

## 🚀 Installation & Usage
1. Install dependencies:
   ```sh
   sudo apt update
   sudo apt install aircrack-ng
This script automates WiFi deauthentication attacks using `aireplay-ng` and targets all nearby devices.

## Usage
```
chmod +x wifi_deauther.sh
```
```
sudo bash wifi_deauther.sh
