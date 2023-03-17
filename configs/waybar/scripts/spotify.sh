#!/bin/sh

while true; do

	player_status=$(playerctl status 2>/dev/null)

	if [ -z "$(playerctl metadata album)" ]; then
		if [ "$player_status" = "Playing" ]; then
			echo "$(playerctl metadata artist) - $(playerctl metadata title)"
		elif [ "$player_status" = "Paused" ]; then
			echo " $(playerctl metadata artist) - $(playerctl metadata title)"
    else
			echo ""
		fi
	else
		if [ "$player_status" = "Playing" ]; then
			echo "<span color='#1db954'></span> $(playerctl metadata artist) - $(playerctl metadata title)"
		elif [ "$player_status" = "Paused" ]; then
			echo "<span color='#1db954'></span>  $(playerctl metadata artist) - $(playerctl metadata title)"
    else
			echo ""
		fi
	fi

	sleep 1

done
