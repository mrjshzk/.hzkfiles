#!/usr/bin/env bash

# increment volume
wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%$1

# notification for volume
dunstify -h string:x-canonical-private-synchronous:audio "Volume: " \
    -h int:value:"$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | sed 's/^Volume: \(.*\)/\1/' | sed 's|[.,]||g')"
