#!/usr/bin/env/bash

# From:  https://howchoo.com/linux/the-perfect-almost-touchpad-settings-on-linux-2

cd /tmp
git clone https://github.com/p2rkw/xf86-input-mtrack.git
cd xf86-input-mtrack

sudo apt build-dep xserver-xorg-input-mtrack

./configure --with-xorg-module-dir=/usr/lib/xorg/modules
sudo make
sudo make install

mv ./50-mtrack.conf /usr/share/X11/xorg.conf.d/50-mtrack.conf

echo "Restart to take trackpad configuration"
