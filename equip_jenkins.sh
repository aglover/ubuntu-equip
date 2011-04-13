#!/bin/sh

#
# Ubuntu Equip 
#  Jenkins CI Equip
# Licence: MIT

# for more information, please see https://wiki.jenkins-ci.org/display/JENKINS/Installing+Jenkins+on+Ubuntu


echo "Assuming Java has already been installed! If not, run equip_java.sh"

sudo wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo echo "deb http://pkg.jenkins-ci.org/debian binary/" > /etc/apt/sources.list.d/jenkins.list
sudo aptitude update -y
sudo aptitude install jenkins -y
