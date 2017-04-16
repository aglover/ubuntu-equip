# Ubuntu Equip
### Super simple setup scripts for Ubuntu inspired by [Rails Ready](https://github.com/joshfng/railsready)
 
# 
### Run these scripts on a fresh install of Ubuntu. They'll do the rest. 

For instance, these days I use [Ubuntu's ami-46f4092f AMI](http://cloud.ubuntu.com/ami/) or ami-a562a9cc. The `ubuntu` user has [`sudo` privileges](http://alestic.com/2009/04/ubuntu-ec2-sudo-ssh-rsync); thus, you should run these scripts w/a `sudo` prefix.

### To run:
  * Ruby 1.9.3 setup
     * `wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_ruby.sh && bash equip_ruby.sh`
     * you get Ruby 1.9.3 latest patch level, Bundler, and Git 
  * Ruby 2.0.0 setup
     * `wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_ruby_2_0.sh && bash equip_ruby.sh`
     * you get Ruby 2.0.0 latest patch level, Bundler, and Git 
  * MongoDB setup
	 * `wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_mongodb.sh && bash equip_mongodb.sh`
	 * you get latest version of MongoDB
	 * configuration: `etc/mongodb.conf`
  * Java 1.7 setup (see next script for full auto install 64-bit only)
	 * `wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_java.sh && bash equip_java.sh`
	 * you'll need to manually accept Oracle's license agreement
	 * you get Java 7 JDK and Apache Ant
  * Java 1.7 64-bit auto setup
   * `wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_java7_64.sh && bash equip_java7_64.sh`
   * you get the Java 7 JDK for 64-bit
  * Java 8
   * `wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_java8.sh && bash equip_java8.sh`
  * Jenkins CI setup
	 * `wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_jenkins.sh && bash equip_jenkins.sh`
	 * you get latest version of Jenkins CI Server (you must have Java installed first!)	
	   * Jenkins is running on port 8080	 
  * Apache 2 setup
     * `wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_apache.sh && bash equip_apache.sh`
     * you get Apache 2 + common libs and it'll be running on port 80 
     * configuration: `/etc/apache2/apache2.conf`
  * Passenger setup
     * `wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_passenger.sh && bash equip_passenger.sh`
  * Android setup
     * `wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_android.sh && bash equip_android.sh`
     * you should have Java and Ant already installed		
     * you get all versions of SDK
       * this'll take a wee-bit of time
  * Redis setup
     * `wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_redis.sh && bash equip_redis.sh`
     * you get latest stable version of Redis
     * redis.redis user/group
  * Node.js setup
     * `wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_node.sh && bash equip_node.sh`
     * you get latest version of node in apt repository
  * elasticsearch setup
     * `wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_elasticsearch.sh && bash equip_elasticsearch.sh`
     * you will need to have Java installed (see Java 1.6 setup above)
     * you get latest version of elasticsearch
  * Docker setup
     * `wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_docker.sh && bash equip_docker.sh`
     * `docker` command requires `sudo` -- `sudo docker run -i -t ubuntu /bin/bash`
  * Eclipse setup
     * `wget --no-check-certificate https://github.com/resilva87/ubuntu-equip/raw/master/equip_eclipse_ide.sh && bash equip_eclipse_ide.sh`
     * you get latest version of Eclipse IDE
  * Maven setup
     * `wget --no-check-certificate https://github.com/resilva87/ubuntu-equip/raw/master/equip_maven3.sh && bash equip_maven3.sh [latest_version]`
     * if `latest_version` parameter is provided, then it will download such version. if not, latest version is downloaded (3.2.5)
  * PostgreSQL setup
     * `wget --no-check-certificate https://raw.githubusercontent.com/aglover/ubuntu-equip/master/equip_postgres.sh && bash equip_postgres.sh`


### Special Thanks

If you are looking to stand up a Rails stack, you should check out [Josh Frye's Rails Ready](https://github.com/joshfng/railsready). It's the way to go (ubuntu-equip doesn't install Rails as this is a `bundle` task that can be handled at the project level). [Ryan McGeary](http://ryan.mcgeary.org/) was super helpful with Ruby & Mongo setup scripts. 

# License

The MIT License

Copyright (c) 2013 Andrew Glover

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE
