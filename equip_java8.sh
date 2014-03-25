#!/bin/sh

#
# Ubuntu Equip 
#  Java 8 Equip
# Licence: MIT

sudo echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_base.sh && bash equip_base.sh

sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update -y
sudo apt-get install oracle-java8-installer -y
sudo apt-get install ant -y
