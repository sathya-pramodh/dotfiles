#!/bin/bash

monitor="DP-0"
second_monitor="HDMI-1-1"
third_monitor="DP-1-1"

xrandr --setprovideroutputsource 1 0

xrandr --output "$monitor" --primary

xrandr --newmode "1000x750_60.00" 60.75  1000 1056 1152 1304  750 753 757 779 -hsync +vsync
xrandr --addmode "$second_monitor" "1000x750_60.00"
xrandr --output "$second_monitor" --mode "1000x750_60.00" --right-of "$monitor"

xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
xrandr --addmode "$third_monitor" "1920x1080_60.00"
xrandr --output "$third_monitor" --mode "1920x1080_60.00" --left-of "$monitor"

blueman-applet &
picom -f --backend=glx -b
parcellite &
/usr/libexec/polkit-mate-authentication-agent-1 &
nitrogen --restore &
pnmixer &
nm-applet &
xinput set-prop "pointer:Logitech G304" "libinput Accel Speed" -0.86
# vesktop --start-minimized &
Discord --start-minimized &
# x11vnc -forever -ncache -multiptr -repeat -clip 1000x750+3840+425 &
# x11vnc -forever -ncache -multiptr -repeat -clip 1920x1080+0+520 &
# x11vnc -forever -ncache -multiptr -clip 1000x750+3840+425 &
# x11vnc -forever -ncache -multiptr -clip 1920x1080+0+520 &
x11vnc -forever -ncache -multiptr -clip 1000x750+3840+0 &
x11vnc -forever -ncache -multiptr -clip 1920x1080+0+0 &
qpwgraph ~/Speedrunning.qpwgraph -axm &
xset r rate 600 25
