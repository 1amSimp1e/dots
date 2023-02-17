#!/bin/sh

down() {
brillo -u 150000 -U 2
brightness=$(light -g)
dunstify -a "BRIGHTNESS" "Decreasing to $brightness%" -h int:value:"$brightness" -i display-brightness-symbolic -r 2593 -u normal
}

up() {
brillo -u 150000 -A 2
brightness=$(light -g)
dunstify -a "BRIGHTNESS" "Increasing to $brightness%" -h int:value:"$brightness" -i display-brightness-symbolic -r 2593 -u normal
}

case "$1" in
  up) up;;
  down) down;;
esac
