#!/bin/env bash

# Options for powermenu
lock="Lock"
logout="Logout"
shutdown="Shutdown"
reboot="Reboot"
sleep="Sleep"

# Get answer from user via rofi
selected_option=$(echo "$logout
$sleep
$reboot
$shutdown" | dmenu\
            -i \
            -p "Power"\
            -sf '#1e1e1e'\
            -nb '#1e1e1e'\
            -nf '#b0b5bd'\
            -sb '#fe7d7d' )

# Do something based on selected option
# if [ "$selected_option" == "$lock" ]
# then
#     /home/$USER/.config/bspwm/scripts/i3lock-fancy/i3lock-fancy.sh
# i3-lock not available in minimal edition

if [ "$selected_option" == "$logout" ]
then
    bspc quit
elif [ "$selected_option" == "$shutdown" ]
then
    systemctl poweroff
elif [ "$selected_option" == "$reboot" ]
then
    systemctl reboot
elif [ "$selected_option" == "$sleep" ]
then
    amixer set Master mute
    systemctl suspend
else
    echo "No match"
fi
