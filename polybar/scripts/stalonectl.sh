#!/bin/sh

if xwininfo -tree -root | grep 'stalonetray":'; then
    killall stalonetray
else
    stalonetray&
fi
