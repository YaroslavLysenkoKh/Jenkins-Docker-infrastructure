#! /bin/bash

sudo yum update -y;
sudo yum install mc -y;
sudo yum install wget -y;

#Java
sudo yum install java-1.8.0-openjdk -y;
java -version;

sudo yum update -y;
#Jenkins Repo
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

sudo yum update -y;

#Install jenkins
sudo yum install jenkins -y;
