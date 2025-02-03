#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
# Otherwise you can use the nuclear option:
killall -q waybar 

# Launch bar1 and bar2
echo "---" | tee -a /tmp/waybar.log
waybar 

echo "Bars launched..."
