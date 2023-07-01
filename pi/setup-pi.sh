#!/bin/bash

# Check if the script is running with root privileges
if [ "$(id -u)" -ne 0 ]; then
  echo "This script must be run with sudo or as root."
  exit 1
fi

# Update package index and upgrade packages
apt update
apt upgrade -y

# Install Telegraf
apt install -y telegraf

# Download the Telegraf configuration from the provided URL
wget -O /etc/telegraf/telegraf.conf https://raw.githubusercontent.com/gogorichie/homeautomation/main/telegraf/telegraf.conf

# Restart Telegraf to apply the new configuration
systemctl restart telegraf
