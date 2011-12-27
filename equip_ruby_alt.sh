

wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_base.sh && bash equip_base.sh

sudo apt-get update
sudo apt-get install build-essential rsync telnet screen man -y
sudo apt-get install strace tcpdump -y
sudo apt-get install libssl-dev zlib1g-dev libcurl3-dev libxslt-dev -y
sudo apt-get install zlib1g-dev libreadline5-dev -y
sudo apt-get install gcc g++ linux-headers-generic libsqlite3-dev -y

sudo apt-get install git -y


sudo apt-get install libxml2-dev
sudo apt-get install libxslt1-dev

sudo apt-get install ruby1.9.1-dev
sudo apt-get install ruby1.9.1


sudo update-alternatives --config ruby
sudo update-alternatives --config gem