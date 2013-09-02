#!/bin/sh

#
# Ubuntu Equip 
#  Ruby Equip
# Licence: MIT


wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_base.sh && bash equip_base.sh

sudo apt-get install libssl-dev zlib1g-dev libcurl3-dev libxslt-dev zlib1g-dev libreadline-dev libsasl2-dev -y
sudo apt-get install gcc g++ linux-headers-generic libsqlite3-dev -y

sudo apt-get install libruby1.9 -y
sudo wget http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p448.tar.gz
sudo tar xzf ruby-1.9.3-p448.tar.gz
cd ruby-1.9.3-p448
sudo ./configure
sudo make
sudo make install
sudo make install-doc

sudo apt-get install rubygems

sudo gem install bundler 
