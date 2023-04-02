#!/bin/bash

sudo ufw allow 443
sudo ufw allow 22
yes | sudo ufw enable
sudo ufw reload
sudo chmod 777 /root
#"meson"
cd
wget 'https://staticassets.meson.network/public/meson_cdn/v3.1.18/meson_cdn-linux-amd64.tar.gz' && tar -zxf meson_cdn-linux-amd64.tar.gz && rm -f meson_cdn-linux-amd64.tar.gz && cd ./meson_cdn-linux-amd64 && sudo ./service install meson_cdn
sudo ./meson_cdn config set --token=ulwagplbgbyqlwynegwliupa --https_port=443 --cache.size=30
sudo ./service start meson_cdn
#"gaga"
cd
curl -o app-linux-amd64.tar.gz https://assets.coreservice.io/public/package/22/app/1.0.3/app-1_0_3.tar.gz && tar -zxf app-linux-amd64.tar.gz && rm -f app-linux-amd64.tar.gz && cd ./app-linux-amd64 && sudo ./app service install
sudo ./app service start
sleep 60
sudo ./apps/gaganode/gaganode config set --token=colksbbgnadotlxqc2eb5db4e871e083
./app restart
cd
