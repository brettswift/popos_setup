#!/usr/bin/env bash 

bat_url=$(curl -sL https://api.github.com/repos/sharkdp/bat/releases/latest | jq -r '.assets[] | select(.name|test("^(?!.*musl).*amd.*$")) | .browser_download_url')
wget -O bat.deb $bat_url

sudo dpkg -i bat.deb

rm -rf bat.deb

