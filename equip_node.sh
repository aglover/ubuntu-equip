#!/bin/sh

#
# Ubuntu Equip 
#  Node.js Equip
# Licence: MIT


sudo apt-get update
sudo apt-get install build-essential rsync telnet screen man -y
sudo apt-get install strace tcpdump -y
sudo apt-get install libssl-dev zlib1g-dev libcurl3-dev libxslt-dev -y
sudo apt-get install zlib1g-dev libreadline5-dev -y
sudo apt-get install gcc g++ linux-headers-generic libsqlite3-dev -y

sudo apt-get install git -y

git clone --depth 1 git://github.com/joyent/node.git
cd node
git checkout origin/v0.4 
mkdir ~/local
./configure --prefix=$HOME/local/node
make
make install
echo 'export PATH=$HOME/local/node/bin:$PATH' >> ~/.profile
echo 'export NODE_PATH=$HOME/local/node:$HOME/local/node/lib/node_modules' >> ~/.profile
source ~/.profile