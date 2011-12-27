#!/bin/sh

#
# Ubuntu Equip 
#  Redis Equip
# Licence: MIT

wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_base.sh && bash equip_base.sh

sudo apt-get update -y

wget http://redis.googlecode.com/files/redis-2.2.4.tar.gz
tar -zxf redis-2.2.4.tar.gz
cd redis-2.2.4
make
sudo make install

wget https://github.com/ijonas/dotfiles/raw/master/etc/init.d/redis-server
sudo mv redis-server /etc/init.d/redis-server
sudo chmod +x /etc/init.d/redis-server

sudo mkdir -p /var/lib/redis
sudo mkdir -p /var/log/redis
sudo useradd --system --home-dir /var/lib/redis redis

sudo chown redis.redis /var/lib/redis
sudo chown redis.redis /var/log/redis

sudo update-rc.d redis-server defaults
sudo /etc/init.d/redis-server start