#!/bin/sh

#
# Ubuntu Equip 
#  Java 6 Equip
# Licence: MIT

wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_base.sh && bash equip_base.sh

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update -y
sudo apt-get install oracle-java7-installer
sudo apt-get install ant -y