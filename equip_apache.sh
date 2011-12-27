#!/bin/sh

#
# Ubuntu Equip 
#  Apache + base
# Licence: MIT
# notes for ubuntu https://help.ubuntu.com/8.04/serverguide/C/httpd.html

wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_base.sh && bash equip_base.sh

sudo apt-get install apache2 -y