#!/usr/bin/env bash

echo "Downloading git repo"
curl -o popos_setup.zip -LOk https://github.com/brettswift/popos_setup/archive/master.zip

unzip popos_setup.zip 
rm -rf popos_setup.zip
mv popos_setup-master popos_setup

echo installing

chmod +x popos_setup/* 
cd ./popos_setup/

./install.sh

echo "Completed Successfully"

