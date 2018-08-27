# Set the base image to Ubuntu 16.04 
FROM ubuntu:16.04

# File Author / Maintainer 
MAINTAINER Arnaud Meng <arnaud.meng@gmail.com>

# make sure the package repository is up to date
RUN DEBIAN_FRONTEND=noninteractive apt-get -qq update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y wget
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y ruby

# set installation directory
WORKDIR /usr/bin/

# download binary & untar/uncompress
RUN wget  --no-check-certificate https://bintray.com/artifact/download/blahah/generic/transrate-1.0.3-linux-x86_64.tar.gz

# install
RUN tar xvf transrate-1.0.3-linux-x86_64.tar.gz
RUN chmod a+xr -R /usr/bin/transrate-1.0.3-linux-x86_64/
RUN /usr/bin/transrate-1.0.3-linux-x86_64/transrate --install-deps ref

# clean
RUN apt-get clean