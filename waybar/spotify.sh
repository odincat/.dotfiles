#!/bin/sh
player_status=$(playerctl status -p spotify 2> /dev/null)
if [ "$player_status" = "Playing" ]; then
    echo "$(playerctl -p spotify metadata xesam:title) – $(playerctl -p spotify metadata xesam:artist)"
elif [ "$player_status" = "Paused" ]; then
    echo " $(playerctl -p spotify metadata xesam:title) – $(playerctl -p spotify metadata xesam:artist)"
fi
