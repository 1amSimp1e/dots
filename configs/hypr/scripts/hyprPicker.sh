#!/bin/sh
~/.config/hypr/scripts/hyprpicker --format hex | head -c -1 | wl-copy
convert -size 100x100 xc:$(wl-paste) /tmp/color.png
dunstify --icon=/tmp/color.png "$(wl-paste)"  "Copied to your clipboard!"
