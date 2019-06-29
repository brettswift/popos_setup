#!/usr/bin/env bash

# if on docker, or minimal ubuntu, you might need to:
#apt-get install software-properties-common
####

add-apt-repository ppa:cpick/hub -y

apt-get update
apt install jq curl git git-hub howdoi ranger vim  -y

apt install hub -y

apt install docker.io -y

