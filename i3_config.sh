#!/usr/bin/env bash

pip3 install git+https://github.com/enkore/i3pystatus.git

sudo apt-get install libiw-dev

pip3 install pyalsaaudio \
	netifaces \
	basiciw \
	colour \
	psutil \
	requests

sudo mkdir -p /etc/X11/xorg.conf.d && sudo tee <<'EOF' /etc/X11/xorg.conf.d/90-touchpad.conf 1> /dev/null
Section "InputClass"
        Identifier "touchpad"
        MatchIsTouchpad "on"
        Driver "libinput"
        Option "Tapping" "on"
        Option "TappingButtonMap" "lrm"
        Option "NaturalScrolling" "on"
        Option "ScrollMethod" "twofinger"
EndSection

EOF

