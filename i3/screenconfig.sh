#!/bin/bash

if (xrandr | grep "VGA1 disconnected"); then
    xrandr --output VIRTUAL1 --off --output DP3 --off --output DP2 --off --output DP1 --off --output HDMI3 --off --output HDMI2 --off --output HDMI1 --off --output LVDS1 --mode 1366x768 --pos 0x0 --output VGA1 --off
    feh --bg-scale /home/j4v/Cloud/config/Wallpapers/arch_logo-blueonblack_1600x900.png 
    xbacklight -inc 100
else
    xrandr --output VGA1 --mode 1920x1080
    xrandr --output LVDS1 --off
    xrandr --output VGA1 --mode 1920x1080 --output HDMI3 --mode 1600x900 --right-of VGA1
    feh --bg-scale /home/j4v/Cloud/config/Wallpapers/arch_logo-blueonblack_1600x900.png 
fi


