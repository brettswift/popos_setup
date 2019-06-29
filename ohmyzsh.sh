#!/usr/bin/env bash 

set -ex

apt install zsh -y
        
#if [ -a "/home/${USER}/.oh-my-zsh" ]; then 
#	echo ".oh-my-zsh already exists.  Skipping"
#	exit 0
#fi

FILE=ohmyzsh_installer.sh
curl -Lo $FILE https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
sh $FILE  --unattended

rm $FILE


