#!/bin/bash

killall -q polybar

polybar main 2>&1 | tee -a /tmp/polybar.log & disown
polybar external 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched..."
