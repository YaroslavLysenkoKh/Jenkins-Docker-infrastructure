#! /bin/bash

sudo apt-get update;
sudo apt-get upgrade -y;
sudo apt-get install mc -y;

sudo add-apt-repository ppa:openjdk-r/ppa -y;
sudo apt-get update;

sudo apt-get install openjdk-8-jdk -y;


sudo apt-get install \
    linux-image-extra-$(uname -r) \
    linux-image-extra-virtual


sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common;

DOCKER_EE_URL="https://storebits.docker.com/ee/trial/sub-b72071cf-9849-4974-b123-028f5f94977a";
DOCKER_EE_VERSION=18.09;

curl -fsSL "${DOCKER_EE_URL}/ubuntu/gpg" | sudo apt-key add -

sudo add-apt-repository \
  "deb [arch=$(dpkg --print-architecture)] $DOCKER_EE_URL/ubuntu \
  $(lsb_release -cs) \
  stable-$DOCKER_EE_VERSION"

sudo apt-get update;
sudo apt-get upgrade -y;

sudo apt-get install docker-ee docker-ee-cli containerd.io -y

sudo usermod -aG docker $USER

sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker

sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

docker-compose --version

echo -e "********* DONE *********"
