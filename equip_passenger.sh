#!/bin/sh

#
# Ubuntu Equip 
#  Apache 2 Passenger Equip
#  http://www.modrails.com/install.html
# Licence: MIT

# sudo gem install passenger
# sudo passenger-install-apache2-module

sudo sh -c 'echo "deb http://apt.brightbox.net hardy main" > /etc/apt/sources.list.d/passenger-stable.list'
sudo apt-get install libapache2-mod-passenger -y
