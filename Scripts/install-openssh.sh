#!/bin/sh

sudo apt update
sudo apt install openssh-server -y
sudo systemctl enable ssh
