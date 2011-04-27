#!/bin/sh

#
# Ubuntu Equip 
#  Ruby Equip
# Licence: MIT

apt-get update
apt-get install build-essential rsync telnet screen man -y
apt-get install strace tcpdump -y
apt-get install libssl-dev zlib1g-dev libcurl3-dev libxslt-dev -y
apt-get install zlib1g-dev libreadline5-dev -y
apt-get install gcc g++ linux-headers-generic libsqlite3-dev -y

apt-get install git -y

apt-get install libruby1.9 -y
wget ftp://ftp.ruby-lang.org//pub/ruby/1.9/ruby-1.9.2-p180.tar.gz
tar xzf ruby-1.9.2-p180.tar.gz
cd ruby-1.9.2-p180
./configure
make
make install
make install-doc


gem update --system

gem install bundler 