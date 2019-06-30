#!/usr/bin/env bash

echo "Downloading git repo"
curl -o popos_setup.zip -LOk https://github.com/brettswift/popos_setup/archive/master.zip

unzip popos_setup.zip 
rm -rf popos_setup.zip

mkdir -p ~/src
WORKING_DIR=~/src/popos_setup
mv popos_setup-master $WORKING_DIR

echo installing

chmod +x ${WORKING_DIR} 
cd ${WORKING_DIR}

./install.sh

echo "Completed Successfully"

