#!/bin/sh

#
# Ubuntu Equip 
#  Redis Equip
# Licence: MIT

wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_base.sh && bash equip_base.sh

sudo apt-get update -y

curl -OL https://github.com/downloads/elasticsearch/elasticsearch/elasticsearch-0.18.6.zip
unzip elasticsearch-* && rm elasticsearch-*.zip
mv elasticsearch-* /usr/local/elasticsearch

wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/elasticsearch.init.d

sudo mv ./elasticsearch.init.d /etc/init.d/elasticsearch
sudo chmod +x /etc/init.d/elasticsearch
sudo update-rc.d elasticsearch defaults