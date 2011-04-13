#Ubuntu Equip
###Setup scripts for Ubuntu 
 
# 
###Run this on a fresh install. It'll do the rest (i.e. update your system). 

For instance, these days I use [Ubuntu's ami-46f4092f AMI](http://cloud.ubuntu.com/ami/). The `ubuntu` user has `sudo` privileges; thus, you should run these scripts w/a `sudo` prefix.

###To run:
  * Ruby 1.9.2 setup
     * `wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_ruby.sh && bash equip_ruby.sh`
     * you get Ruby 1.9.2 latest patch level, Bundler, and Git 
  * MongoDB 1.8 setup
	 * `wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_mongodb.sh && bash equip_mongodb.sh`
	 * you get latest version of MongoDB
  * Java 1.6 setup
	 * `wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_java.sh && bash equip_java.sh`
	 * you get Sun's Java 6 JDK
  * Jenkins CI setup
	 * `wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_jenkins.sh && bash equip_jenkins.sh`
	 * you get latest version of Jenkins CI Server (you must have Java installed first!)		 
  
