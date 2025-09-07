#!/bin/sh

NETWORK=192.168.0.0/24
COCKPIT_PORT=9090

sudo apt -y install iptables iptables-persistent

# Disable cockpit on internal network, accessable only with proxy

sudo iptables -A INPUT -p tcp -s $NETWORK --dport $COCKPIT_PORT -j DROP

sudo iptables-save | sudo tee /etc/iptables/rules.v4
