#!/usr/bin/env bash

if ! hyprctl reload; then
    dunstify "Hyprland couldn't reload."
fi

output=$(pgrep waybar)
if [ ! -z "${output}" ]; then
    killall waybar
fi
waybar
