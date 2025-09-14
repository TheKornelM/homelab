#!/bin/sh

sudo apt update

sudo apt install systemd-timesyncd vim tcpdump -y

# Enable time sync service
sudo systemctl enable systemd-timesyncd.service
sudo systemctl start systemd-timesyncd.service
