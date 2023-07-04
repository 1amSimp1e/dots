#!/bin/sh

bat=/sys/class/power_supply/BAT0/
per="$(cat "$bat/capacity")"

icon() {

if [ "$per" -gt "90" ]; then
	icon="assets/battery_full.png"
elif [ "$per" -gt "80" ]; then
	icon="assets/battery_quarter.png"
elif [ "$per" -gt "70" ]; then
	icon="assets/battery_nearly-half.png"
elif [ "$per" -gt "60" ]; then
	icon="assets/battery_nearly-half.png"
elif [ "$per" -gt "49" ]; then
	icon="assets/battery_half.png"
elif [ "$per" -gt "40" ]; then
	icon="assets/battery_nearly-low.png"
elif [ "$per" -gt "20" ]; then
	icon="assets/battery_nearly-low.png"
elif [ "$per" -gt "10" ]; then
	icon="assets/battery_low.png"
	# notify-send -u critical "Battery Low" "Connect Charger"
elif [ "$per" -gt "0" ]; then
	icon="assets/battery_low.png"
	# notify-send -u critical "Battery Low" "Connect Charger"
else
        echo  && exit
fi
echo "$icon"
}

percent() {
echo $per
}

status(){
    if [ $(cat "$bat/status") = Charging ]; then
        status=""
    fi
    echo "$status"
}

[ "$1" = "icon" ] && icon && exit
[ "$1" = "percent" ] && percent && exit
[ "$1" = "status" ] && status && exit
exit
