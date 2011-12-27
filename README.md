#Ubuntu Equip
###Super simple setup scripts for Ubuntu inspired by [Rails Ready](https://github.com/joshfng/railsready)
 
# 
###Run these scripts on a fresh install of Ubuntu. They'll do the rest. 

For instance, these days I use [Ubuntu's ami-46f4092f AMI](http://cloud.ubuntu.com/ami/). The `ubuntu` user has [`sudo` privileges](http://alestic.com/2009/04/ubuntu-ec2-sudo-ssh-rsync); thus, you should run these scripts w/a `sudo` prefix.

###To run:
  * Ruby 1.9.2 setup
     * `wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_ruby.sh && bash equip_ruby.sh`
     * you get Ruby 1.9.2 latest patch level, Bundler, and Git 
  * MongoDB setup
	 * `wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_mongodb.sh && bash equip_mongodb.sh`
	 * you get latest version of MongoDB
	 * configuration: `etc/mongodb.conf`
  * Java 1.6 setup
	 * `wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_java.sh && bash equip_java.sh`
	 * you'll need to manually accept Sun's license agreement
	 * you get Sun's Java 6 JDK and Apache Ant
  * Jenkins CI setup
	 * `wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_jenkins.sh && bash equip_jenkins.sh`
	 * you get latest version of Jenkins CI Server (you must have Java installed first!)	
	   * Jenkins is running on port 8080	 
  * Apache 2 setup
     * `wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_apache.sh && bash equip_apache.sh`
     * you get Apache 2 + common libs and it'll be running on port 80 
     * configuration: `/etc/apache2/apache2.conf`
  * Android setup
     * `wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_android.sh && bash equip_android.sh`
     * you should have Java and Ant already installed		
     * you get all versions of SDK
       * this'll take a wee-bit of time
  

###Special Thanks

If you are looking to stand up a Rails stack, you should check out [Josh Frye's Rails Ready](https://github.com/joshfng/railsready). It's the way to go (ubuntu-equip doesn't install Rails as this is a `bundle` task that can be handled at the project level). [Ryan McGeary](http://ryan.mcgeary.org/) was super helpful with Ruby & Mongo setup scripts. 