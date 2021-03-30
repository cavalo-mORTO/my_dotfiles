#!/bin/bash

# Simple script to handle a DIY display menu.
#
# Requirements:
# - rofi
# - autorandr
# - bspwm
#
# Instructions:
# - Save this file as display.sh or anything
# - Give it exec priviledge, or chmod +x /path/to/display.sh
# - Run it

chosen=$(echo -e "[Cancel]\n$(autorandr --detected)" | rofi -dmenu -i)

if [ "$chosen" = "[Cancel]" ]; then
    exit 1;
fi

autorandr --load $chosen
bspc wm -r
