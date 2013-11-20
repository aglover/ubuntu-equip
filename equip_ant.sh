#!/bin/sh

#
# Ubuntu Equip 
#  Apache Ant Equip
# Licence: MIT
# thanks to http://raycoding.net/2013/02/15/installing-ant-on-ubuntu-or-linux-box/

wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_base.sh && bash equip_base.sh

wget http://apache.mirrors.pair.com/ant/binaries/apache-ant-1.9.2-bin.tar.gz

tar -zxf apache-ant-1.9.2-bin.tar.gz
sudo mv apache-ant-1.9.2 /usr/local

sudo ln -s /usr/local/apache-ant-1.9.2/bin/ant /usr/bin/ant

rm apache-ant-1.9.2-bin.tar.gz


# Open up ~/.bashrc and add the below lines
# export ANT_HOME=/usr/bin/ant
# export ANT_OPTS="-XX:MaxPermSize=900m -Xmx900m"

