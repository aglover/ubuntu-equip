FROM ubuntu
MAINTAINER Andy Glover "ajglover@gmail.com"

RUN apt-get update -y
RUN apt-get install wget -y
RUN wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_base.sh && bash equip_base.sh

RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN add-apt-repository ppa:webupd8team/java -y
RUN apt-get update -y
RUN apt-get install oracle-java8-installer -y

