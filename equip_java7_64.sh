#!/bin/sh

#
# Ubuntu Equip 
#  Java 7 64-bit Equip
# Licence: MIT
# to run: wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_java7_64.sh && bash equip_java7_64.sh

wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_base.sh && bash equip_base.sh

sudo apt-get install curl -y 

curl -L --cookie "oraclelicensejdk-7u25-b15-oth-JPR=accept-securebackup-cookie;gpw_e24=http://edelivery.oracle.com" http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jdk-7u25-linux-x64.tar.gz -o jdk-7-linux-x64.tar.gz
tar -xvf jdk-7-linux-x64.tar.gz

sudo mkdir -p /usr/lib/jvm
sudo mv ./jdk1.7.* /usr/lib/jvm/jdk1.7.0

sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk1.7.0/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk1.7.0/bin/javac" 1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/lib/jvm/jdk1.7.0/bin/javaws" 1

sudo chmod a+x /usr/bin/java 
sudo chmod a+x /usr/bin/javac 
sudo chmod a+x /usr/bin/javaws
sudo chown -R root:root /usr/lib/jvm/jdk1.7.0

rm jdk-7-linux-x64.tar.gz
rm equip_base.sh
rm equip_java7_64.sh

sudo apt-get install ant -y

java -version

