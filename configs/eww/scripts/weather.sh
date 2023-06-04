#!/bin/sh

encode_to_url_format() {
    echo "$1" | sed 's/ /%20/g'
}

check_if_empty() {
	[[ -z "$1" ]] && echo "0" || echo "$1"
}

KEY="c5ab1b207fbddbf305c6f670956d35ea"
CITY="Houston"
CITY=$(encode_to_url_format "$CITY")
WEATHER=$(curl -sf "api.openweathermap.org/data/2.5/weather?q=$CITY&appid=$KEY&units=metric")

WEATHER_DESC=$(echo $WEATHER | jq -r ".weather[0].main")
WEATHER_TEMP=$(echo $WEATHER | jq ".main.temp" | cut -d "." -f 1)
WEATHER_ICON_CODE=$(echo "$WEATHER" | jq -r ".weather[].icon" | head -1)
WEATHER_FEELS_LIKE=$(echo $WEATHER | jq ".main.feels_like" | cut -d "." -f 1)
WEATHER_HUMIDITY=$(echo $WEATHER | jq ".main.humidity" | cut -d "." -f 1)
WEATHER_ICON=""
WEATHER_HEX=""

case $WEATHER_ICON_CODE in
	"01d")
		WEATHER_ICON=""
		WEATHER_HEX="#ffd86b"
        STYLE="padding-left: 12px"
		;;
	"01n")
		WEATHER_ICON=""
		WEATHER_HEX="#fcdcf6"
		;;
	"02d")
		WEATHER_ICON=""
		WEATHER_HEX="#adadff"
		;;
	"02n")
		WEATHER_ICON=""
		WEATHER_HEX="#adadff"
		;;
	"03d")
		WEATHER_ICON=""
		WEATHER_HEX="#F2F2F1"
		;;
	"03n")
		WEATHER_ICON=""
		WEATHER_HEX="#adadff"
		;;
	"04d")
		WEATHER_ICON=""
		WEATHER_HEX="#adadff"
		;;
	"04n")
		WEATHER_ICON=""
		WEATHER_HEX="#adadff"
		;;
	"09d")
		WEATHER_ICON=""
		WEATHER_HEX="#6b95ff"
		;;
	"09n")
		WEATHER_ICON=""
		WEATHER_HEX="#6b95ff"
		;;
	"10d")
		WEATHER_ICON=""
		WEATHER_HEX="#6b95ff"
		;;
	"10n")
		WEATHER_ICON=""
		WEATHER_HEX="#6b95ff"
		;;
	"11d")
		WEATHER_ICON=""
		WEATHER_HEX="#ffeb57"
		;;
	"11n")
		WEATHER_ICON=""
		WEATHER_HEX="#ffeb57"
		;;
	"13d")
		WEATHER_ICON=""
		WEATHER_HEX="#e3e6fc"
		;;
	"13n")
		WEATHER_ICON=""
		WEATHER_HEX="#e3e6fc"
		;;
	"40d")
		WEATHER_ICON=""
		WEATHER_HEX="#84afdb"
		;;
	"40n")
		WEATHER_ICON=""
		WEATHER_HEX="#84afdb"
		;;
	*)
		WEATHER_ICON=""
		WEATHER_HEX="#adadff"
		;;
esac

case $1 in
	"current_temp")
		check_if_empty $WEATHER_TEMP
		;;
	"current_temp_fahrenheit")
		WEATHER_TEMP=$((($WEATHER_TEMP * 9 / 5) + 32))
		check_if_empty $WEATHER_TEMP
		;;
	"feels_like")
		check_if_empty $WEATHER_FEELS_LIKE
		;;
	"humidity")
		check_if_empty $WEATHER_HUMIDITY
		;;
	"weather_desc")
		[[ -z $WEATHER_DESC ]] && echo "N/A" || echo "$WEATHER_DESC"
		;;
	"icon")
		echo $WEATHER_ICON
		;;
	"hex")
		echo $WEATHER_HEX
		;;
	"full")
		echo $WEATHER
		;;
	"style")
		echo $STYLE
		;;
esac

