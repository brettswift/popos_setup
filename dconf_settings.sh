#!/usr/bin/env bash

# To back any of these up again: 
# 1. copy the command below
# 2. change load to dumplsdffsaf:q
# 3. chnage '<' to '>'

echo load key bindings
dconf load /org/gnome/desktop/wm/keybindings/ < popos_keybindings.dconf

echo load trackpad settings 
dconf load /org/gnome/desktop/peripherals/ < popos_peripherals.dconf
