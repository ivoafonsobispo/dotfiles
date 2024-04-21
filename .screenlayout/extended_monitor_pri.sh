#!/bin/sh

# Set Xresources file for HDMI-0 output
export XENVIRONMENT=~/.Xresources2

xrandr --output DP-0 --off \
       --output DP-1 --off \
       --output DP-2 --off \
       --output DP-3 --off \
       --output HDMI-0 --primary --mode 2560x1440 --pos 2560x80 --rotate normal \
       --output DP-4 --off \
       --output eDP-1-1 --mode 2560x1600 --pos 0x0 --rotate normal \
       --output DP-1-1 --off \
       --output HDMI-1-1 --off \
       --output DP-1-2 --off \
       --output DP-1-3 --off \
       --output DP-1-4 --off \
       --output DP-1-5 --off

# Reset Xresources file to default (if needed)
unset XENVIRONMENT

xrdb ~/.Xresources

