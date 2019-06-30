#!/usr/bin/env bash

echo "Updating apt packages"
sudo apt update
sudo apt upgrade

echo "Reinstall kernel source so wifi works"
sudo apt-get --reinstall install bcmwl-kernel-source

echo "reload broadcom wifi drivers so wifi works without a reboot"
sudo modprobe -r b43 ssb wl brcmfmac brcmsmac bcma
sudo modprobe wl


echo "#############################################################"
echo "#############################################################"

echo "    You can now unplug and connect to wifi"

echo "    Hit enter ONLY when you have an active WIFI connection...."

echo "    Don't forget to reboot after this script!"
echo "#############################################################"
echo "#############################################################"

read


