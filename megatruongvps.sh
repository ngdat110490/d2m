#!/bin/bash

sudo ufw allow 443
sudo ufw allow 22
yes | sudo ufw enable
sudo ufw reload
sudo chmod 777 /root
#"meson"
cd
wget 'https://staticassets.meson.network/public/meson_cdn/v3.1.20/meson_cdn-linux-amd64.tar.gz' && tar -zxf meson_cdn-linux-amd64.tar.gz && rm -f meson_cdn-linux-amd64.tar.gz && cd ./meson_cdn-linux-amd64 && sudo ./service install meson_cdn
sudo ./meson_cdn config set --token=vfntgsfbnvyibcob24c2a56ae1512818 --https_port=443 --cache.size=30
sudo ./service start meson_cdn
#"gaga"
cd
curl -o apphub-linux-amd64.tar.gz https://assets.coreservice.io/public/package/60/app-market-gaga-pro/1.0.4/app-market-gaga-pro-1_0_4.tar.gz && tar -zxf apphub-linux-amd64.tar.gz && rm -f apphub-linux-amd64.tar.gz && cd ./apphub-linux-amd64 && sudo ./apphub service remove && sudo ./apphub service install
sudo ./apphub service start
sleep 60
sudo ./apps/gaganode/gaganode config set --token=xhgdisxcpaeexgrp1ba1f595c8e35758
./apphub restart
cd
