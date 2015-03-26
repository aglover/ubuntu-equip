#!/bin/sh

#
# Ubuntu Equip 
# Eclipse IDE (latest version Luna https://eclipse.org/downloads/)
# Licence: MIT
# to run: wget --no-check-certificate https://github.com/resilva87/ubuntu-equip/raw/master/equip_eclipse_ide.sh && bash equip_eclipse_ide.sh

if [ -d "/opt/eclipse" ]; then
	echo "Eclipse already installed in /opt/eclipse, skipping!"
	rm -f equip_eclipse_ide.sh
	exit 0
fi

VERSION="eclipse-jee-luna-SR1a-linux-gtk-x86_64.tar.gz"
LINK="http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/luna/SR1a/$VERSION"

wget --no-check-certificate "$LINK"

mv eclipse-jee-luna-SR1a-linux-gtk-x86_64.tar.gz eclipse.tar.gz
tar -zxvf eclipse.tar.gz

# Will copy to /opt
sudo mv eclipse /opt/

# Cleanup
rm -f eclipse.tar.gz
rm -f equip_eclipse_ide.sh

echo "Installed in /opt/eclipse"
