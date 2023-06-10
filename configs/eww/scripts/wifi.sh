#!/bin/sh

# Script to listen for networkmanager updates and return an appriopriate icon and tooltip.
# This script runs until it's manually terminated.

# Requires: NetworkManager, gawk
# Usage: networkmanager


# get initialize network device info and states
nm="$(nmcli d | jc --nmcli | jaq -r '.[] | select(.type | test("^(wifi|ethernet)$", "ix"))')"
icons=("" "" "" "" "")

function toggle() {
  status=$(rfkill -J | jaq -r '.rfkilldevices[] | select(.type == "wlan") | .soft' | head -1)

  if [ "$status" = "unblocked" ]; then
    rfkill block wlan
  else
    rfkill unblock wlan
  fi
}

function gen_wifi() {
  signal=$(nmcli -t -f in-use,ssid,signal dev wifi | rg '\*' | sed 's/\"/\\"/g' | awk -F: '{print $3}')
  level=$(awk -v n="$signal" 'BEGIN{print int((n-1)/20)}')
  if [ "$level" -gt 4 ]; then
    level=4
  fi

  icon=${icons[$level]}
  color="#BDCBD6"
  class="net-connected"
  name=$(echo "$nm" | jaq -r 'select(.type == "wifi") .connection')
}


status() {
  echo "$(nmcli -f state g| tail -1)"
}

function gen_ethernet() {
  icon=""
  class="net-connected"
  color="#BDCBD6"
  name=$(echo "$nm" | jaq -r 'select(.type == "ethernet") .connection')
}

function make_content() {
  local ethernet wifi
  ethernet=$(echo "$nm" | jaq -r 'select(.type == "ethernet") .state')
  wifi=$(echo "$nm" | jaq -r 'select(.type == "wifi") .state')

  # test ethernet first
  if [[ $ethernet == "connected" ]]; then
    gen_ethernet
  elif [[ $wifi == "connected" ]]; then
    gen_wifi
  else
    icon=""
    color="#3e4041"
    class="net-disconnected"
    name="Disconnected"
  fi

  jaq --null-input -r -c \
    --arg icon "$icon" \
    --arg name "$name" \
    --arg color "$color" \
    --arg class "$class" \
    '{"icon": $icon, "name": $name, "color": $color, "class": $class}'
}

# first run
make_content
last_time=$(get_time_ms)

nmcli monitor | while read -r _; do
  current_time=$(get_time_ms)
  delta=$((current_time - last_time))
  # 50ms debounce
  if [[ $delta -gt 50 ]]; then
    sleep 0.5
    nm="$(nmcli d | jc --nmcli | jaq -r '.[] | select(.type | test("^(wifi|ethernet)$", "ix"))')"
    make_content
    # reset debounce timer
    last_time=$(get_time_ms)
  fi
done
