#!/bin/bash

xrandr \
    --dpi 96 \
    --output DisplayPort-1 --mode 2560x1440 --rate 144 --pos 0x0 --primary \
    --output DisplayPort-2 --off \
    --output DisplayPort-3 --off \
    --output HDMI-A-2 --mode 1920x1080 --rate 144 --pos 2560x0 \
    --output DP-1-1 --off \
    --output HDMI-1-1 --off \
    --output HDMI-1-2 --off

echo "Display Set"
