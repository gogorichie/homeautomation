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

# Start the Telegraf service
systemctl start telegraf

# Enable Telegraf to start on boot
systemctl enable telegraf
