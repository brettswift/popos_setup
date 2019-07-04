#!/usr/bin/env bash

set -e pipefail

./enable_wifi.sh
sudo ./packages.sh
./ohmyzsh.sh
./bat.sh
./node_nvm_and_npm_packages.sh
./neovim.sh
./dconf_settings.sh
./software.sh
./i3_config.sh
./fonts.sh

echo "you are required to change your shell to zsh manually"
echo "chsh -s /usr/bin/zsh"

bat README.md  | grep -A 50 -i manual

echo "Completed aside from the manual steps above."
echo "You should now reboot..."
