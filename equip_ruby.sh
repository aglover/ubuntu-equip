#!/bin/sh

#
# Ubuntu Equip 
#  Ruby Equip
# Licence: MIT

sudo apt-get update
sudo apt-get install build-essential rsync telnet screen man -y
sudo apt-get install strace tcpdump -y
sudo apt-get install libssl-dev zlib1g-dev libcurl3-dev libxslt-dev -y
sudo apt-get install zlib1g-dev libreadline5-dev -y
sudo apt-get install gcc g++ linux-headers-generic libsqlite3-dev -y

sudo apt-get install git -y

sudo apt-get install libruby1.9 -y
sudo wget ftp://ftp.ruby-lang.org//pub/ruby/1.9/ruby-1.9.2-p180.tar.gz
sudo tar xzf ruby-1.9.2-p180.tar.gz
cd ruby-1.9.2-p180
sudo ./configure
sudo make
sudo make install
sudo make install-doc

sudo apt-get install rubygems

sudo gem install bundler 