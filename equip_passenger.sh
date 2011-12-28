#!/bin/sh

#
# Ubuntu Equip 
#  Apache 2 Passenger Equip
#  http://www.modrails.com/install.html
# Licence: MIT

sudo apt-get install apache2-prefork-dev
sudo apt-get install libapr1-dev 
sudo apt-get install libaprutil1-dev
sudo gem install passenger
sudo passenger-install-apache2-module

# update apache config:
#  LoadModule passenger_module /var/lib/gems/1.9.1/gems/passenger-3.0.11/ext/apache2/mod_passenger.so
#  PassengerRoot /var/lib/gems/1.9.1/gems/passenger-3.0.11
#  PassengerRuby /usr/bin/ruby1.9.1


# Deploying a Ruby on Rails application: an example
# 
# Suppose you have a Rails application in /somewhere. Add a virtual host to your
# Apache configuration file and set its DocumentRoot to /somewhere/public:
# 
#    <VirtualHost *:80>
#       ServerName www.yourhost.com
#       DocumentRoot /somewhere/public    # <-- be sure to point to 'public'!
#       <Directory /somewhere/public>
#          AllowOverride all              # <-- relax Apache security settings
#          Options -MultiViews            # <-- MultiViews must be turned off
#       </Directory>
#    </VirtualHost>


