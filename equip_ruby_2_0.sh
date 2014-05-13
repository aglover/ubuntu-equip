#!/bin/sh
 
#
# Ubuntu Equip
# Ruby Equip
# Licence: MIT
 
 
wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_base.sh && bash equip_base.sh
 
sudo apt-get install libssl-dev zlib1g-dev libcurl3-dev libxslt-dev zlib1g-dev libreadline-dev libsasl2-dev -y
sudo apt-get install gcc g++ linux-headers-generic libsqlite3-dev libyaml -y
 
sudo apt-get install libruby2.0 -y
sudo wget http://ftp.ruby-lang.org/pub/ruby/2.0/ruby-2.0.0-p353.tar.gz
sudo tar xzf ruby-2.0.0-p353.tar.gz
cd ruby-2.0.0-p353
sudo ./configure
sudo make
sudo make install
sudo make install-doc
 
sudo apt-get install rubygems
 
sudo gem install bundler 