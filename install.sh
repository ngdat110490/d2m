#!/bin/bash

sudo apt update && apt upgrade -y
sudo apt install -y -q build-essential g++ make
sudo apt install clang pkg-config libssl-dev libleveldb-dev jq bsdmainutils git ncdu unzip bc fail2ban apt-utils net-tools htop tmux tar nano vim curl -y
sudo apt install -y -q docker.io
sudo apt-get install -y nodejs
sudo ufw allow 443
sudo ufw allow 22
sudo ufw allow 3000
sudo ufw allow 3610
sudo ufw allow 8080
sudo ufw allow 8000
sudo ufw allow 9000
sudo ufw allow 9033
sudo ufw allow 9933
sudo ufw allow 9944
sudo ufw allow 30303
sudo ufw allow 30304
sudo ufw allow 30333
yes | sudo ufw enable
sudo ufw reload
sudo chmod 777 /root
