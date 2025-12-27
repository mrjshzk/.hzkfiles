#!/usr/bin/env bash

function reload {
    local o=$(pgrep "$1")
    if [ ! -z "${o}" ]; then
        killall "$1"
    fi
    $1
}

if ! hyprctl reload; then
    dunstify "Hyprland couldn't reload."
fi

reload waybar
reload hyprpaper
