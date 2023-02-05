#!/bin/bash
sudo -s
sudo apt update && apt upgrade -y
sudo apt install -y -q build-essential g++ make
sudo ufw allow 443
sudo ufw allow 22
sudo ufw allow 9033
sudo ufw allow 8080
sudo ufw allow 8000
sudo ufw enable

tmux new-session -s meson
wget 'https://staticassets.meson.network/public/meson_cdn/v3.1.18/meson_cdn-linux-amd64.tar.gz' && tar -zxf meson_cdn-linux-amd64.tar.gz && rm -f meson_cdn-linux-amd64.tar.gz && cd ./meson_cdn-linux-amd64 && sudo ./service install meson_cdn
sudo ./meson_cdn config set --token=ulwagplbgbyqlwynegwliupa --https_port=443 --cache.size=30
sudo ./service start meson_cdn

tmux new-session -s gaga
curl -o app-linux-amd64.tar.gz https://assets.coreservice.io/public/package/22/app/1.0.3/app-1_0_3.tar.gz && tar -zxf app-linux-amd64.tar.gz && rm -f app-linux-amd64.tar.gz && cd ./app-linux-amd64 && sudo ./app service install
sudo ./app service start
sleep 30
sudo ./apps/gaganode/gaganode config set --token=colksbbgnadotlxqc2eb5db4e871e083
./app restart

tmux new-session -s p2p
curl -L https://raw.githubusercontent.com/spiritLHLS/peer2profit-one-click-command-installation/main/p.sh -o p.sh && chmod +x p.sh && bash p.sh -m ngduydat@gmail.com


tmux new-session -s ironfish1
sudo curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash - &&\
sudo apt-get install -y nodejs
sudo npm install -g ironfish
ironfish