#!/usr/bin/env bash

toggle() {
  status=$(rfkill -J | jaq -r '.rfkilldevices[] | select(.type == "wlan") | .soft' | head -1)

  if [ "$status" = "unblocked" ]; then
    rfkill block wlan
  else
    rfkill unblock wlan
  fi
}

if [ "$1" = "toggle" ]; then
  toggle
else
  while true; do
    status=$(nmcli -f state g| tail -1)
    wifistatus=$(nmcli -t -f in-use,ssid,signal dev wifi | rg '\*' | sed 's/\"/\\"/g')
    signal=$(echo "$wifistatus" | awk -F: '{print $3}')
    essid=$(echo "$wifistatus" | awk -F: '{print $2}')

    icons=( "󰤟 " "󰤢 " "󰤥 " "󰤨 " "󰤨 ")

    if [ "$status" = "disconnected" ] ; then
      icon=""
      class="wifi-diconnected"
    else
      level=$(awk -v n="$signal" 'BEGIN{print int((n-1)/20)}')
      if [ "$level" -gt 4 ]; then
        level=4
      fi

      icon=${icons[$level]}
      class="wifi-connected"
    fi


    echo '{ "essid": "'"$essid"'", "icon": "'"$icon"'", "color": "'"$color"'", "status": "'"$status"'", "class": "'"$class"'" }'

    sleep 3
  done
fi

