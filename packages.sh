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
	-y

# gui clients
apt install \
	darktable \
	chromium-browser \
	-y


apt install docker.io -y

