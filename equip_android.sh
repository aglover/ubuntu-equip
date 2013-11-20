#!/bin/sh

#
# Ubuntu Equip 
#  Android Equip
# Licence: MIT

wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_base.sh && bash equip_base.sh

sudo apt-get update -y

wget --no-check-certificate http://dl.google.com/android/android-sdk_r22.3-linux.tgz

tar -zxf android-sdk_r22.3-linux.tgz

sudo mv android-sdk-linux /usr/local

rm android-sdk_r22.3-linux.tgz

/usr/local/android-sdk-linux/tools/android update sdk --no-ui

