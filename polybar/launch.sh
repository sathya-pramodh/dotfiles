#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
MONITOR=eDP-1-1 polybar --reload topbar 2>&1 | tee -a /tmp/polybareDP-1-1.log & disown
MONITOR=HDMI-1-1 polybar --reload topbar-alt 2>&1 | tee -a /tmp/polybarHDMI-1-1.log & disown

echo "Bars launched..."
