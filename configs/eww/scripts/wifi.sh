#!/usr/bin/env bash

toggle() {
  status=$(rfkill -J | gojq -r '.rfkilldevices[] | select(.type == "wlan") | .soft' | head -1)

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
    status=$(nmcli g | tail -n 1 | awk '{print $1}')
    signal=$(nmcli -f in-use,signal dev wifi | rg "\*" | awk '{ print $2 }')
    essid=$(nmcli -t -f NAME connection show --active | head -n1 | sed 's/\"/\\"/g')

    icons=("" "" "" "")

    if [ "$status" = "disconnected" ] ; then
      icon=""
    else
      level=$(awk -v n="$signal" 'BEGIN{print int((n-1)/20)}')
      if [ "$level" -gt 4 ]; then
        level=4
      fi

      icon=${icons[$level]}
    fi

    echo '{ "essid": "'"$essid"'", "icon": "'"$icon"'", "color": "'"$color"'", "level": "'"$level"'" }'

    sleep 4
  done
fi
