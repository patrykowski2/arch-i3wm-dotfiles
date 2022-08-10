#!/usr/bin/env bash

shutdown="襤 Shut down"
reboot="累 Restart"
lock=" Lock"
sleep="Sleep"
logout="Logout"

custom_scheme="$HOME/.config/polybar/scripts/powermenu/powermenu_config.rasi"
default_scheme="/usr/share/rofi/themes/arthur.rasi"

chosen="$(echo -e "$shutdown\n$reboot\n$lock" | rofi -dmenu -i -theme "$custom_scheme")"

case $chosen in
	$shutdown)
		systemctl poweroff
		;;
	$reboot)
		systemctl reboot
		;;
	$lock)
		betterlockscreen -l
		;;
esac
