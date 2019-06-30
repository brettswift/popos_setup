#!/usr/bin/env bash

set -e pipefail

./enable_wifi.sh
sudo ./packages.sh
./ohmyzsh.sh
sudo ./bat.sh
./node_nvm_and_npm_packages.sh
sudo ./neovim.sh

echo "you are required to change your shell to zsh manually"
echo "chsh -s /usr/bin/zsh"

bat README.md  | grep -A 50 -i manual

cat "Close and reopen terminal."
