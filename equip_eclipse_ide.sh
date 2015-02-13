#!/bin/sh

#
# Ubuntu Equip 
# Eclipse IDE (latest version Luna https://eclipse.org/downloads/)
# Licence: MIT
# to run: wget --no-check-certificate https://github.com/resilva87/ubuntu-equip/raw/master/equip_eclipse_ide.sh && bash equip_eclipse_ide.sh

wget --no-check-certificate https://github.com/resilva87/ubuntu-equip/raw/master/equip_base.sh && bash equip_base.sh

# Download Eclipse IDE
wget --no-check-certificate "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/luna/SR1a/eclipse-jee-luna-SR1a-linux-gtk-x86_64.tar.gz"

mv eclipse-jee-luna-SR1a-linux-gtk-x86_64.tar.gz eclipse.tar.gz

# Will copy to /opt
cd /opt/ && sudo tar -zxvf ~/Downloads/eclipse.tar.gz

# Cleanup
rm ~/Downloads/eclipse.tar.gz
rm -f equip_base.sh 
rm -f equip_eclipse_ide.sh

echo "Installed in /opt/eclipse"
