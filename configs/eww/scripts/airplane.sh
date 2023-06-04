#!/bin/sh

icon() {
  if [ "$STATUS" = "no" ]; then
    echo ""
  else
    echo ""
  fi
}

toggle() {
  if [ "$STATUS" = "no" ]; then
    rfkill block all
    notify-send --urgency=normal -i airplane-mode-symbolic "Airplane Mode" "Airplane mode has been turned on!"
  else
    rfkill unblock all
    notify-send --urgency=normal  -i airplane-mode-disabled-symbolic "Airplane Mode" "Airplane mode has been turned off!"
  fi
}

if [ "$1" = "toggle" ]; then
  toggle
else
  while true; do
    STATUS="$(rfkill list | sed -n 2p | awk '{print $3}')"
    icon
    sleep 3;
  done
fi
