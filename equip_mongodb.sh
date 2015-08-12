#!/bin/sh

#
# Ubuntu Equip 
#  MongoDB Equip
# Licence: MIT
wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_base.sh && bash equip_base.sh

sudo apt-get install tcsh git-core scons g++ -y
sudo apt-get install libpcre++-dev libboost-dev libreadline-dev xulrunner-1.9.1-dev -y
sudo apt-get install libboost-program-options-dev libboost-thread-dev libboost-filesystem-dev libboost-date-time-dev -y

sudo sh -c 'echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list'

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
sudo apt-get update -y
sudo apt-get install -y mongodb-org
