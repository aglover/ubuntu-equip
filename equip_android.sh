#!/bin/sh

#
# Ubuntu Equip 
#  Android Equip (installs EVERYTHING)
# Licence: MIT

wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_base.sh && bash equip_base.sh
wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_android_base.sh && bash equip_android_base.sh

sudo apt-get install expect
wget --no-check-certificate https://raw.github.com/aglover/ubuntu-equip/master/etc/android_expect_all.sh && bash android_expect_all.sh
rm android_expect_all.sh