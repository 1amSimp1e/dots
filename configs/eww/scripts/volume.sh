#!/usr/bin/env bash

volicons=("assets/volume-low.svg" "assets/volume-medium.svg" "assets/volume-high.svg")

if [ ! "$XDG_CACHE_HOME" ]; then
  XDG_CACHE_HOME="/home/peter/.local/cache"
fi

vol() {
  wpctl get-volume @DEFAULT_AUDIO_"$1"@ | awk '{print int($2*100)}'
}

ismuted() {
  wpctl get-volume @DEFAULT_AUDIO_"$1"@ | rg -i muted
  echo $?
}
setvol() {
  wpctl set-volume @DEFAULT_AUDIO_"$1"@ "$(awk -v n="$2" 'BEGIN{print (n / 100)}')"
}

setmute() {
  wpctl set-mute @DEFAULT_AUDIO_"$1"@ toggle
}

launch(){
    pavucontrol
}


if [ "$1" = "mute" ]; then
  if [ "$2" != "SOURCE" ] && [ "$2" != "SINK" ]; then
    echo "Can only mute SINK or SOURCE"; exit 1
  fi
  setmute "$2"
elif [ "$1" = "setvol" ]; then
  if [ "$2" != "SOURCE" ] && [ "$2" != "SINK" ]; then
    echo "Can only set volume for SINK or SOURCE"; exit 1
  elif [ "$3" -lt 1 ] || [ "$3" -gt 100 ]; then
    echo "Volume must be between 1 and 100"; exit 1
  fi
  setvol "$2" "$3"
else

  lvl=$(awk -v n="$(vol "SINK")" 'BEGIN{print int(n/34)}')
  ismuted=$(ismuted "SINK")

  if [ "$ismuted" = 1 ]; then
  	icon="${volicons[$lvl]}"
  else
    icon="assets/volume-medium.svg"
  fi
  echo '{ "icon": "'"$icon"'", "percent": "'"$(vol "SINK")"'", "microphone": "'"$(vol "SOURCE")"'" }'


  pactl subscribe | rg --line-buffered "change" | while read -r _; do
    lvl=$(awk -v n="$(vol "SINK")" 'BEGIN{print int(n/34)}')
    ismuted=$(ismuted "SINK")

    if [ "$ismuted" = 1 ]; then
    	icon="${volicons[$lvl]}"
    else
      icon="assets/volume-mute.svg"
    fi
    echo '{ "icon": "'"$icon"'", "percent": "'"$(vol "SINK")"'", "microphone": "'"$(vol "SOURCE")"'" }'
  done
fi
