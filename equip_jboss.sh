#!/bin/sh

#
# Ubuntu Equip 
#  Apache Ant Equip
# Licence: MIT
# thanks to http://raycoding.net/2013/02/15/installing-ant-on-ubuntu-or-linux-box/

wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_base.sh && bash equip_base.sh

wget http://download.jboss.org/jbossas/7.1/jboss-as-7.1.1.Final/jboss-as-7.1.1.Final.tar.gz

tar -zxf jboss-as-7.1.1.Final.tar.gz
sudo mv jboss-as-7.1.1.Final /opt

sudo ln -s /opt/jboss-as-7.1.1.Final /opt/jboss

rm jboss-as-7.1.1.Final.tar.gz



