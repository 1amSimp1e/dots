#!/bin/bash

DATE="$(date +'%d-%m-%y_%H:%M:%S')"
DIR="$HOME/Pictures/screenshots"
PIC="$DIR/$DATE.png"

[ ! -d "$DIR" ] && mkdir -pv "$DIR"

full() {
  grim "$PIC"
}

crop() {
  grim -g "$(slurp)" "$PIC"
}

abort() {
  dunstify -a "Screenshot info" -i dialog-error "Screenshot" "aborted"
  exit 1
}

case "$1" in
--full)
  full || abort
  wl-copy < "$PIC"
  dunstify -u low -a Screenshot -i "$PIC" "Copied to clipboard" "$PIC"
  ;;
--crop)
  crop || abort
  wl-copy < "$PIC"
  dunstify -u low -a Screenshot -i "$PIC" "Copied to clipboard" "$PIC"
  ;;
esac
