#!/bin/sh

#
# Ubuntu Equip 
#  Java 8 Equip
# Licence: MIT
# see http://www.webupd8.org/2012/09/install-oracle-java-8-in-ubuntu-via-ppa.html
# http://stackoverflow.com/questions/13018626/add-apt-repository-not-found
sudo echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_base.sh && bash equip_base.sh

sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update -y
sudo apt-get install oracle-java8-installer -y
sudo apt-get install ant -y
