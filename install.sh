#!/usr/bin/env bash

set -e pipefail

sudo ./packages.sh
sudo ./ohmyzsh.sh
sudo ./awscli.sh
sudo ./bat.sh
sudo ./nvm.sh
sudo ./npm_install_apps.sh
sudo ./awscli.sh
sudo ./docker.sh
sudo ./neovim.sh

echo "you are required to change your shell to zsh manually"

echo "chsh -s /usr/bin/zsh"

bat README.md
