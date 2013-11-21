#!/bin/sh

#
# Ubuntu Equip 
#  Android base install Equip
# Licence: MIT

wget --no-check-certificate http://dl.google.com/android/android-sdk_r22.3-linux.tgz
tar -zxf android-sdk_r22.3-linux.tgz
sudo mv android-sdk-linux /usr/local
rm android-sdk_r22.3-linux.tgz
sudo apt-get install expect -y