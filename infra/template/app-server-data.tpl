#!/bin/bash
set -e

#do an update
sudo yum update -y

### setup Tomcat
### install JDK-8 and update JRE link
sudo yum -y install java-1.8.0-openjdk-devel.x86_64

cd /tmp
sudo wget http://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.96/bin/apache-tomcat-7.0.96.tar.gz
sudo tar xzf apache-tomcat-7.0.96.tar.gz
sudo mv apache-tomcat-7.0.96 /usr/local/tomcat7

cd /usr/local/tomcat7
sudo ./bin/startup.sh

## install nodejs
sudo yum install -y gcc-c++ make
sudo curl -sL https://rpm.nodesource.com/setup_10.x | sudo -E bash -
sudo yum install nodejs -y