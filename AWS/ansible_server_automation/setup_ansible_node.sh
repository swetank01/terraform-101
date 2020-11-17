#!/bin/bash
sudo yum -y update

echo "Install python"
yum install -y python

echo "Install Nginx As Proxy"
amazon-linux-extras install nginx1

echo "Install git"
yum install -y git

echo "Install Docker engine"
yum update -y
yum install docker -y
#sudo usermod -a -G docker jenkins
sudo service docker start
sudo chkconfig docker on