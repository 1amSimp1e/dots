#!/usr/bin/env bash

toggle() {
  status=$(rfkill -J | jaq -r '.rfkilldevices[] | select(.type == "bluetooth") | .soft' | head -1)

  if [ "$status" = "unblocked" ]; then
    rfkill block bluetooth
  else
    rfkill unblock bluetooth
  fi
}

gen_output() {
  powered=$(bluetoothctl show | rg Powered | cut -f 2- -d ' ')
  status=$(bluetoothctl info)
  name=$(echo "$status" | rg Name | cut -f 2- -d ' ')
  mac=$(echo "$status" | head -1 | awk '{print $2}' | tr ':' '_')

  if [[ "$(echo "$status" | rg Percentage)" != "" ]]; then
    battery="$(upower -i /org/freedesktop/UPower/devices/headset_dev_"$mac" | rg percentage | awk '{print $2}' | cut -f 1 -d '%')%"
  else
    battery=""
  fi

  if [ "$powered" = "yes" ]; then
    if [ "$status" != "Missing device address argument" ]; then
      icon=""
      text="$name"
      color="#89b4fa"
      class="bt-connected"
    else
      icon=""
      text="Disconnected"
      color="#45475a"
      class=""
    fi
  else
    icon=""
    text="Bluetooth off"
    color="#45475a"
    class=""
  fi

  echo '{ "icon": "'"$icon"'", "battery": "'"$battery"'", "text": "'"$text"'", "color": "'"$color"'", "class": "'"$class"'" }'
}

if [ "$1" = "toggle" ]; then
  toggle
else
  gen_output
  last_time=$(get_time_ms)

  udevadm monitor | while read -r _; do
    current_time=$(get_time_ms)
    delta=$((current_time - last_time))
    # 50ms debounce
    if [[ $delta -gt 50 ]]; then
      gen_output
      # reset debounce timer
      last_time=$(get_time_ms)
    fi
  done
fi

