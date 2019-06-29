#!/usr/bin/env bash

set -e pipefail

sudo ./packages.sh
# sudo ./ohmyzsh.sh
sudo ./awscli.sh
sudo ./bat.sh
sudo ./node_nvm_and_npm_packages.sh
sudo ./neovim.sh

echo "you are required to change your shell to zsh manually"
echo "chsh -s /usr/bin/zsh"

bat README.md

cat "Close and reopen terminal."
