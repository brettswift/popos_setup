#!/usr/bin/env bash

pip3 install git+https://github.com/enkore/i3pystatus.git

sudo apt-get install libiw-dev \
	scrot \
	imagemagick \
	-y

pip3 install pyalsaaudio \
	netifaces \
	basiciw \
	colour \
	psutil \
	requests

sudo mkdir -p /etc/X11/xorg.conf.d && sudo tee <<'EOF' /etc/X11/xorg.conf.d/90-touchpad.conf 1> /dev/null
# START OF PASTING contents from /usr/share/X11/xorg.conf.d/70-synaptics.conf 

# These two sections seem to help disable the touchpad while typing
Section "InputClass"
        Identifier "touchpad catchall"
        Driver "synaptics"
        MatchIsTouchpad "on"
# This option is recommend on all Linux systems using evdev, but cannot be
# enabled by default. See the following link for details:
# http://who-t.blogspot.com/2010/11/how-to-ignore-configuration-errors.html
      MatchDevicePath "/dev/input/event*"
EndSection

Section "InputClass"
        Identifier "touchpad ignore duplicates"
        MatchIsTouchpad "on"
        MatchOS "Linux"
        MatchDevicePath "/dev/input/mouse*"
        Option "Ignore" "on"
EndSection

# END OF PASTING contents from /usr/share/X11/xorg.conf.d/70-synaptics.conf 

# After the above, this config below might be ignored.. 
Section "InputClass"
        Identifier "touchpad"
        MatchIsTouchpad "on"
        Driver "libinput"
        Option "Tapping" "on"
        Option "TappingButtonMap" "lrm"
        Option "NaturalScrolling" "on"
        Option "ScrollMethod" "twofinger"
        Option "Middle Emulation Enabled" "1"
      	#Option "AccelProfile" "flat"
     	  Option "AccelSpeed" "0.4"       # some curved deceleration
     	  # doesn't work: Option "Accel Speed Default" "0.1"       # slower default speed for more accuracy
     	  # set the following to 1 1 0 respectively to disable acceleration.
     	  # https://askubuntu.com/questions/205676/how-to-change-mouse-speed-sensitivity
      	#Option "AccelerationNumerator" "4"
      	#Option "AccelerationDenominator" "1"
      	#Option "AccelerationThreshold" "4"
        #Option "AdaptiveDeceleration" "2"
        # linear deceleration (mouse speed reduction)
	      #Option "ConstantDeceleration" "2"
EndSection


EOF

