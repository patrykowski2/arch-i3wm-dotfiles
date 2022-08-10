#!/usr/bin/env bash

custom_scheme="$HOME/.config/polybar/scripts/networkmenu/networkmenu_config.rasi"

avalaible_network_list="$(nmcli --fields IN-USE,SSID,BARS device wifi list | sed '1d;/^--/d')"

chosen="$(echo "$avalaible_network_list" | rofi -dmenu -theme "$custom_scheme")"

