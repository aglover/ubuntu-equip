#!/bin/sh

#
# Ubuntu Equip 
# Maven 3 (latest version 3.2.5 http://maven.apache.org/download.cgi)
# Licence: MIT
# to run: wget --no-check-certificate https://github.com/resilva87/ubuntu-equip/raw/master/equip_maven3.sh && bash equip_maven3.sh [latest_version]

if [ -d "/opt/maven" ]; then
	echo "Maven already installed in /opt/maven, skipping!"
	rm -f equip_maven3.sh
	exit 0
fi

LATEST="3.2.5"

if (( "$#" == 1 )); then
	LATEST=$1
fi

FILENAME="apache-maven-$LATEST-bin.tar.gz"
LINK="http://ftp.unicamp.br/pub/apache/maven/maven-3/$LATEST/binaries/$FILENAME"

echo "$LINK"

wget --no-check-certificate "$LINK"

mkdir maven 
tar -zxvf $FILENAME -C maven --strip-components 1

# Will copy to /opt
sudo mv maven /opt/

# Cleanup
rm -f $FILENAME
rm -f equip_maven3.sh

echo "Installed in /opt/maven"
