#!/bin/bash

SCREEN=$(xrandr | grep connected | awk '{ print $1 }' | dmenu -i -p "Select your screen" -nb black -nf green -sb purple)

if [[ $SCREEN =~ "HDMI-1" ]];then
    xrandr --output eDP-1 --off --output HDMI-1 --auto
    feh --bg-scale ~/.config/i3/wall.jpg
elif [[ $SCREEN =~ "eDP-1" ]];then
    xrandr --output HDMI-1 --off --output eDP-1 --auto
    feh --bg-scale ~/.config/i3/wall.jpg
fi
