#!/bin/bash

TMP_DIR="$HOME/.cache/eww"
TMP_COVER_PATH=$TMP_DIR/cover.png
TMP_TEMP_PATH=$TMP_DIR/temp.png

if [[ ! -d $TMP_DIR ]]; then
	mkdir -p $TMP_DIR
fi

ART_FROM_SPOTIFY="$(playerctl -p spotify metadata mpris:artUrl | sed -e 's/open.spotify.com/i.scdn.co/g')"
# ART_FROM_BROWSER="$(playerctl -p %any,mpd,chromium,brave metadata mpris:artUrl | sed -e 's/file:\/\///g')"

if [[ $(playerctl -p spotify metadata mpris:artUrl) ]]; then
	curl -s "$ART_FROM_SPOTIFY" --output $TMP_TEMP_PATH
elif [[ -n $ART_FROM_BROWSER ]]; then
	cp $ART_FROM_BROWSER $TMP_TEMP_PATH
else
	cp $HOME/.config/eww/assets/ui/music-fallback.png $TMP_TEMP_PATH
fi

cp $TMP_TEMP_PATH $TMP_COVER_PATH

# an epic effekt
# convert $TMP_TEMP_PATH -alpha set -channel A -evaluate multiply 1.0  $TMP_COVER_PATH
# convert $TMP_TEMP_PATH -gravity center +repage -alpha set -channel A \
# 	-sparse-color Barycentric '%[fx:w*2/32],0 transparent  %[fx:w+0.5],0 opaque' \
# 	-evaluate multiply 0.45 \
# 	$TMP_COVER_PATH

