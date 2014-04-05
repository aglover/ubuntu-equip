#!/bin/sh

#
# Ubuntu Equip 
#  Docker Equip
# Licence: MIT
# See http://docs.docker.io/en/latest/installation/ubuntulinux/ 
#  & https://stackoverflow.com/questions/19412911/docker-installation-on-ubuntu-raring/19416387#19416387

sudo sh -c "curl https://get.docker.io/gpg | apt-key add -"
sudo sh -c "echo deb http://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list"
sudo apt-get update
sudo apt-get install lxc-docker -y
