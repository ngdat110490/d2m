#!/bin/bash

echo hello

sudo -s
sudo apt update && apt upgrade -y
sudo apt install -y -q build-essential g++ make
sudo ufw allow 443
sudo ufw allow 22
sudo ufw allow ssh
sudo ufw allow 9033
sudo ufw enable
sudo ufw status verbose