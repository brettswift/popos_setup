#!/usr/bin/env bash
set -e

sudo apt-get install python3-distutils -y

curl -O https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py --user
rm -f get-pip.py

# try to install from apt as well. get-pip.py might not work?
sudo apt install python3-pip -y 

if [ -x "$(command -v pip3)" ]; then 
  sudo pip3 install awscli --upgrade --user
else
  sudo pip install awscli --upgrade --user 
fi

echo "Finished with awscli"

