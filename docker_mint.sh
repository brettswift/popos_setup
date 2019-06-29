#!/usr/bin/env bash 

set -ex

echo "install packages required for https and setting up docker repos"
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

echo "Add gpg key"

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo "update apt"
sudo apt-get update

echo "install docker"
sudo apt-get install -y docker docker-compose

echo "set docker permissions"
sudo groupadd docker
sudo usermod -aG docker $USER

echo "Verify it works.. hello.. world?"
sudo docker run hello-world
