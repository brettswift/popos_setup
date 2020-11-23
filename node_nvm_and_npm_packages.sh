#!/usr/bin/env zsh

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

export NVM_DIR="$HOME/.nvm"
chmod +x $NVM_DIR/nvm.sh
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

nvm install 10;
nvm install 12;
nvm use 12  

# Install packages
echo "Installing github search (ghs)"
npm install -g gh-search-cli 

npm i -g neovim 

