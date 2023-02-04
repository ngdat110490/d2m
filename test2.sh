#!/bin/bash

echo 'hello'

sudo -s
id
sudo apt update && apt upgrade -y
sudo apt install -y -q build-essential g++ make
sudo ufw allow 443
sudo ufw allow 22
sudo ufw allow ssh
sudo ufw allow 9033
sudo ufw enable
sudo ufw status verbose

read -p "Are you sure you want to continue (yes/no)? " answer
if [ "$answer" != "yes" ]
then
  echo "Exiting."
  exit 1
fi

read -s -p "Enter your password: " Zxcv
echo
echo "Password entered: $password"

read yes