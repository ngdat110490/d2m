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
#"meson"
cd
tmux new-session -s meson
wget 'https://staticassets.meson.network/public/meson_cdn/v3.1.18/meson_cdn-linux-amd64.tar.gz' && tar -zxf meson_cdn-linux-amd64.tar.gz && rm -f meson_cdn-linux-amd64.tar.gz && cd ./meson_cdn-linux-amd64 && sudo ./service install meson_cdn
sudo ./meson_cdn config set --token=ulwagplbgbyqlwynegwliupa --https_port=443 --cache.size=30
sudo ./service start meson_cdn
tmux detach
#"gaga"
cd
tmux new-session -s gaga
curl -o app-linux-amd64.tar.gz https://assets.coreservice.io/public/package/22/app/1.0.3/app-1_0_3.tar.gz && tar -zxf app-linux-amd64.tar.gz && rm -f app-linux-amd64.tar.gz && cd ./app-linux-amd64 && sudo ./app service install
sudo ./app service start
sleep 60
sudo ./apps/gaganode/gaganode config set --token=colksbbgnadotlxqc2eb5db4e871e083
./app restart
tmux detach
