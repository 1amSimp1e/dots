#!/bin/bash

# SETTINGS vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv

# API settings ________________________________________________________________

APIKEY='c5ab1b207fbddbf305c6f670956d35ea'
# if you leave these empty location will be picked based on your ip-adress
CITY_NAME='Thanh pho Ho Chi Minh'
COUNTRY_CODE='VN'
# Desired output language
LANG="en"
# UNITS can be "metric", "imperial" or "kelvin". Set KNOTS to "yes" if you
# want the wind in knots:

#          | temperature | wind
# -----------------------------------
# metric   | Celsius     | km/h
# imperial | Fahrenheit  | miles/hour
# kelvin   | Kelvin      | km/h

UNITS="metric"

# Color Settings ______________________________________________________________

COLOR_CLOUD="#606060"
COLOR_THUNDER="#d3b987"
COLOR_LIGHT_RAIN="#73cef4"
COLOR_HEAVY_RAIN="#b3deef"
COLOR_SNOW="#FFFFFF"
COLOR_FOG="#606060"
COLOR_TORNADO="#d3b987"
COLOR_SUN="#ffc24b"
COLOR_MOON="#FFFFFF"
COLOR_ERR="#f43753"
COLOR_WIND="#73cef4"
COLOR_COLD="#b3deef"
COLOR_HOT="#f43753"
COLOR_NORMAL_TEMP="#FFFFFF"

# Leave "" if you want the default polybar color
COLOR_TEXT=""
# Polybar settings ____________________________________________________________

# Font for the weather icons
WEATHER_FONT_CODE=1

# Font for the thermometer icon
TEMP_FONT_CODE=1

# Wind settings _______________________________________________________________

# Display info about the wind or not. yes/no
DISPLAY_WIND="yes"

# Show beaufort level in windicon
BEAUFORTICON="yes"

# Display in knots. yes/no
KNOTS="yes"

# How many decimals after the floating point
DECIMALS=0

# Min. wind force required to display wind info (it depends on what
# measurement unit you have set: knots, m/s or mph). Set to 0 if you always
# want to display wind info. It's ignored if DISPLAY_WIND is false.

MIN_WIND=11

# Display the numeric wind force or not. If not, only the wind icon will
# appear. yes/no

DISPLAY_FORCE="yes"

# Display the wind unit if wind force is displayed. yes/no
DISPLAY_WIND_UNIT="yes"

# Thermometer settings ________________________________________________________

# When the thermometer icon turns red
HOT_TEMP=25

# When the thermometer icon turns blue
COLD_TEMP=0

# Other settings ______________________________________________________________

# Display the weather description. yes/no
DISPLAY_LABEL="yes"

# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

if [ "$COLOR_TEXT" != "" ]; then
    COLOR_TEXT_BEGIN="%{F$COLOR_TEXT}"
    COLOR_TEXT_END="%{F-}"
fi
if [ -z "$CITY_NAME" ]; then
    IP=`curl -s ifconfig.me`  # == ip
    IPCURL=$(curl -s https://ipinfo.io/$IP)
    CITY_NAME=$(echo $IPCURL | jq -r ".city")
    COUNTRY_CODE=$(echo $IPCURL | jq -r ".country")
fi

RESPONSE=""
ERROR=0
ERR_MSG=""
if [ $UNITS = "kelvin" ]; then
    UNIT_URL=""
else
    UNIT_URL="&units=$UNITS"
fi
URL="api.openweathermap.org/data/2.5/weather?appid=$APIKEY$UNIT_URL&lang=$LANG&q=$CITY_NAME,$COUNTRY_CODE"

function getData {
    ERROR=0
    # For logging purposes
    # echo " " >> "$HOME/.weather.log"
    # echo `date`" ################################" >> "$HOME/.weather.log"
    RESPONSE=`curl -s $URL`
    if [ "$1" = "-d" ]; then
        echo $RESPONSE
        echo ""
    fi
    CODE="$?"
    # echo "Response: $RESPONSE" >> "$HOME/.weather.log"
    RESPONSECODE=0
    if [ $CODE -eq 0 ]; then
        RESPONSECODE=`echo $RESPONSE | jq .cod`
    fi
    if [ $CODE -ne 0 ] || [ $RESPONSECODE -ne 200 ]; then
        if [ $CODE -ne 0 ]; then
            ERR_MSG="curl Error $CODE"
            # echo "curl Error $CODE" >> "$HOME/.weather.log"
        else
            ERR_MSG="Conn. Err. $RESPONSECODE"
            # echo "API Error $RESPONSECODE" >> "$HOME/.weather.log"
        fi
        ERROR=1
    # else
    #     echo "$RESPONSE" > "$HOME/.weather-last"
    #     echo `date +%s` >> "$HOME/.weather-last"
    fi
}
function setIcons {
    if [ $WID -le 232 ]; then
        #Thunderstorm
        ICON_COLOR=$COLOR_THUNDER
        if [ $DATE -ge $SUNRISE -a $DATE -le $SUNSET ]; then
            ICON=""
        else
            ICON=""
        fi
    elif [ $WID -le 311 ]; then
        #Light drizzle
        ICON_COLOR=$COLOR_LIGHT_RAIN
        if [ $DATE -ge $SUNRISE -a $DATE -le $SUNSET ]; then
            ICON=""
        else
            ICON=""
        fi
    elif [ $WID -le 321 ]; then
        #Heavy drizzle
        ICON_COLOR=$COLOR_HEAVY_RAIN
        if [ $DATE -ge $SUNRISE -a $DATE -le $SUNSET ]; then
            ICON=""
        else
            ICON=""
        fi
    elif [ $WID -le 531 ]; then
        #Rain
        ICON_COLOR=$COLOR_HEAVY_RAIN
        if [ $DATE -ge $SUNRISE -a $DATE -le $SUNSET ]; then
            ICON=""
        else
            ICON=""
        fi
    elif [ $WID -le 622 ]; then
        #Snow
        ICON_COLOR=$COLOR_SNOW
        ICON=""
    elif [ $WID -le 771 ]; then
        #Fog
        ICON_COLOR=$COLOR_FOG
        ICON=""
    elif [ $WID -eq 781 ]; then
        #Tornado
        ICON_COLOR=$COLOR_TORNADO
        ICON=""
    elif [ $WID -eq 800 ]; then
        #Clear sky
        if [ $DATE -ge $SUNRISE -a $DATE -le $SUNSET ]; then
            ICON_COLOR=$COLOR_SUN
            ICON=""
        else
            ICON_COLOR=$COLOR_MOON
            ICON=""
        fi
    elif [ $WID -eq 801 ]; then
        # Few clouds
        if [ $DATE -ge $SUNRISE -a $DATE -le $SUNSET ]; then
            ICON_COLOR=$COLOR_SUN
            ICON=""
        else
            ICON_COLOR=$COLOR_MOON
            ICON=""
        fi
    elif [ $WID -le 804 ]; then
        # Overcast
        ICON_COLOR=$COLOR_CLOUD
        ICON=""
    else
        ICON_COLOR=$COLOR_ERR
        ICON=""
    fi
    WIND=""
    WINDFORCE=`echo "$RESPONSE" | jq .wind.speed`
    WINDICON=""
    if [ $BEAUFORTICON == "yes" ];then
        WINDFORCE2=`echo "scale=$DECIMALS;$WINDFORCE * 3.6 / 1" | bc`
        if [ $WINDFORCE2 -le 1 ]; then
            WINDICON=""
        elif [ $WINDFORCE2 -gt 1 ] && [ $WINDFORCE2 -le 5 ]; then
            WINDICON=""
        elif [ $WINDFORCE2 -gt 5 ] && [ $WINDFORCE2 -le 11 ]; then
            WINDICON=""
        elif [ $WINDFORCE2 -gt 11 ] && [ $WINDFORCE2 -le 19 ]; then
            WINDICON=""
        elif [ $WINDFORCE2 -gt 19 ] && [ $WINDFORCE2 -le 28 ]; then
            WINDICON=""
        elif [ $WINDFORCE2 -gt 28 ] && [ $WINDFORCE2 -le 38 ]; then
            WINDICON=""
        elif [ $WINDFORCE2 -gt 38 ] && [ $WINDFORCE2 -le 49 ]; then
            WINDICON=""
        elif [ $WINDFORCE2 -gt 49 ] && [ $WINDFORCE2 -le 61 ]; then
            WINDICON=""
        elif [ $WINDFORCE2 -gt 61 ] && [ $WINDFORCE2 -le 74 ]; then
            WINDICON=""
        elif [ $WINDFORCE2 -gt 74 ] && [ $WINDFORCE2 -le 88 ]; then
            WINDICON=""
        elif [ $WINDFORCE2 -gt 88 ] && [ $WINDFORCE2 -le 102 ]; then
            WINDICON=""
        elif [ $WINDFORCE2 -gt 102 ] && [ $WINDFORCE2 -le 117 ]; then
            WINDICON=""
        elif [ $WINDFORCE2 -gt 117 ]; then
            WINDICON=""
        fi
    fi
    if [ $KNOTS = "yes" ]; then
        case $UNITS in
            "imperial") 
                # The division by one is necessary because scale works only for divisions. bc is stupid.
                WINDFORCE=`echo "scale=$DECIMALS;$WINDFORCE * 0.8689762419 / 1" | bc`
                ;;
            *)
                WINDFORCE=`echo "scale=$DECIMALS;$WINDFORCE * 1.943844 / 1" | bc`
                ;;
        esac
    else
        if [ $UNITS != "imperial" ]; then
            # Conversion from m/s to km/h
            WINDFORCE=`echo "scale=$DECIMALS;$WINDFORCE * 3.6 / 1" | bc`
        else
            WINDFORCE=`echo "scale=$DECIMALS;$WINDFORCE / 1" | bc`
        fi
    fi
    if [ "$DISPLAY_WIND" = "yes" ] && [ `echo "$WINDFORCE >= $MIN_WIND" |bc -l` -eq 1 ]; then
        WIND="%{T$WEATHER_FONT_CODE}%{F$COLOR_WIND}$WINDICON%{F-}%{T-}"
        if [ $DISPLAY_FORCE = "yes" ]; then
            WIND="$WIND $COLOR_TEXT_BEGIN$WINDFORCE$COLOR_TEXT_END"
            if [ $DISPLAY_WIND_UNIT = "yes" ]; then
                if [ $KNOTS = "yes" ]; then
                    WIND="$WIND ${COLOR_TEXT_BEGIN}kn$COLOR_TEXT_END"
                elif [ $UNITS = "imperial" ]; then
                    WIND="$WIND ${COLOR_TEXT_BEGIN}mph$COLOR_TEXT_END"
                else
                    WIND="$WIND ${COLOR_TEXT_BEGIN}km/h$COLOR_TEXT_END"
                fi
            fi
        fi
        WIND="$WIND |"
    fi
    if [ "$UNITS" = "metric" ]; then
        TEMP_ICON="糖"
    elif [ "$UNITS" = "imperial" ]; then
        TEMP_ICON="宅"
    else
        TEMP_ICON="洞"
    fi
    
    TEMP=`echo "$TEMP" | cut -d "." -f 1`
    
    if [ "$TEMP" -le $COLD_TEMP ]; then
        TEMP="%{F$COLOR_COLD}%{T$TEMP_FONT_CODE}%{T-}%{F-} $COLOR_TEXT_BEGIN$TEMP%{T$TEMP_FONT_CODE}$TEMP_ICON%{T-}$COLOR_TEXT_END"
    elif [ `echo "$TEMP >= $HOT_TEMP" | bc` -eq 1 ]; then
        TEMP="%{F$COLOR_HOT}%{T$TEMP_FONT_CODE}%{T-}%{F-} $COLOR_TEXT_BEGIN$TEMP%{T$TEMP_FONT_CODE}$TEMP_ICON%{T-}$COLOR_TEXT_END"
    else
        TEMP="%{F$COLOR_NORMAL_TEMP}%{T$TEMP_FONT_CODE}%{T-}%{F-} $COLOR_TEXT_BEGIN$TEMP%{T$TEMP_FONT_CODE}$TEMP_ICON%{T-}$COLOR_TEXT_END"
    fi
}

function outputCompact {
    OUTPUT="$WIND %{T$WEATHER_FONT_CODE}%{F$ICON_COLOR}$ICON%{F-}%{T-} $ERR_MSG$COLOR_TEXT_BEGIN$DESCRIPTION$COLOR_TEXT_END| $TEMP"
    # echo "Output: $OUTPUT" >> "$HOME/.weather.log"
    echo "$OUTPUT"
}

getData $1
if [ $ERROR -eq 0 ]; then
    MAIN=`echo $RESPONSE | jq .weather[0].main`
    WID=`echo $RESPONSE | jq .weather[0].id`
    DESC=`echo $RESPONSE | jq .weather[0].description`
    SUNRISE=`echo $RESPONSE | jq .sys.sunrise`
    SUNSET=`echo $RESPONSE | jq .sys.sunset`
    DATE=`date +%s`
    WIND=""
    TEMP=`echo $RESPONSE | jq .main.temp`
    if [ $DISPLAY_LABEL = "yes" ]; then
        DESCRIPTION=`echo "$RESPONSE" | jq .weather[0].description | tr -d '"' | sed 's/.*/\L&/; s/[a-z]*/\u&/g'`" "
    else
        DESCRIPTION=""
    fi
    PRESSURE=`echo $RESPONSE | jq .main.pressure`
    HUMIDITY=`echo $RESPONSE | jq .main.humidity`
    setIcons
    outputCompact
else
    echo " "
fi
