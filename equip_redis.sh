#!/bin/sh

#
# Ubuntu Equip 
#  Redis Equip
# Licence: MIT
# with help from http://www.denofubiquity.com/nosql/412/

wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_base.sh && bash equip_base.sh

sudo apt-get update -y
sudo apt-get install tcl8.5

wget http://download.redis.io/redis-stable.tar.gz
tar xvzf redis-stable.tar.gz
cd redis-stable

make install
make test

wget --no-check-certificate https://raw.github.com/aglover/ubuntu-equip/master/etc/redis.conf
sudo mv redis.conf /etc/redis.conf

wget https://github.com/ijonas/dotfiles/raw/master/etc/init.d/redis-server
sudo mv redis-server /etc/init.d/redis-server
sudo chmod +x /etc/init.d/redis-server

sudo update-rc.d redis-server defaults
sudo /etc/init.d/redis-server start

