#!/usr/bin/env bash

cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

sudo curl -o /usr/local/bin/dropbox.py -LOk https://www.dropbox.com/download?dl=packages/dropbox.py

echo "Dropbox installed. "
echo "Dotfiles include an alias in .zshrc for 'dotfiles'"
