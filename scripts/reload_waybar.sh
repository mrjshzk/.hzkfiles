#!/usr/bin/env bash

#if pgrep waybar:
#killall waybar ; waybar & disown; dunstify "Reloaded Waybar"
output=$(pgrep waybar)
if [ ! -z "${output}" ]; then
    killall waybar
fi
# stdout to one file, stderr to another
waybar >stderr.txt
