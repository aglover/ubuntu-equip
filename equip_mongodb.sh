#!/bin/sh

#
# Ubuntu Equip 
#  MongoDB Equip
# Licence: MIT

sudo apt-get install tcsh git-core scons g++ -y
sudo apt-get install libpcre++-dev libboost-dev libreadline-dev xulrunner-1.9.1-dev -y
sudo apt-get install libboost-program-options-dev libboost-thread-dev libboost-filesystem-dev libboost-date-time-dev -y


sudo sh -c 'echo "deb http://downloads.mongodb.org/distros/ubuntu  10.4 10gen" > /etc/apt/sources.list.d/mongo-stable.list'

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
sudo apt-get update -y
sudo apt-get install mongodb-stable -y