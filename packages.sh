#!/usr/bin/env bash

# if on docker, or minimal ubuntu, you might need to:
#apt-get install software-properties-common
####

if [ -x "$(command -v docker)" ]; then
    echo "skipping packages, already found docker so assuming this ran"
    exit 0
fi
add-apt-repository ppa:cpick/hub -y

apt-get update
apt install jq \
	curl \
	git \
	git-hub \
	hub \
       	howdoi \
       	ranger \
	vim \
	awscli \
	i3 i3blocks feh rofi xautolock \
	snapd \
	-y

# for spotify cli, i3pystatus
apt-get install python3-pip -y

pip3 install aws-sam-cli

# gui clients
apt install \
	darktable \
	chromium-browser \
	clipit \
	-y

# common dev modules
apt install python-dev python3-dev \
     build-essential libssl-dev libffi-dev \
     libxml2-dev libxslt1-dev zlib1g-dev

apt install docker.io -y

# snap packages

snap install rd
snap install spotify
