#!/usr/bin/env bash

while true; do    
  # human-readable
  freeH=$(free -h --si | rg "Mem:")
  # non-human-readable
  freeN=$(free --mega | rg "Mem:")

  total="$(echo "$freeH" | awk '{ print $2 }')"
  used="$(echo "$freeH" | awk '{ print $3 }')"
  t="$(echo "$freeN" | awk '{ print $2 }')"
  u="$(echo "$freeN" | awk '{ print $3 }')"

  free=$(printf '%.1fG' "$(bc -l <<< "($t - $u) / 1000")")
  perc=$(printf '%.1f' "$(free -m | rg Mem | awk '{print ($3/$2)*100}')")

  echo '{ "total": "'"$total"'", "used": "'"$used"'", "free": "'"$free"'", "percent": '"$perc"' }'

  sleep 3
done
