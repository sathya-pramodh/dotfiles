#!/bin/bash 
monitor="eDP-1-1"
second_monitor="DVI-I-2-1"

xrandr --setprovideroutputsource 1 0 --setprovideroutputsource 2 0
xrandr --newmode "1000x750_60.00" 60.75  1000 1056 1152 1304  750 753 757 779 -hsync +vsync
xrandr --addmode "$second_monitor" "1000x750_60.00"
xrandr --output "$second_monitor" --mode "1000x750_60.00" --right-of $monitor
xrandr --output "$monitor" --primary

dwmblocks &
blueman-applet &
numlockx on
# virtual_inputs &
picom -b --backend=glx
/usr/libexec/polkit-gnome-authentication-agent-1 & eval $(gnome-keyring-daemon -s --components=pkcs11,secrets,ssh,gpg)
xfce4-power-manager &
nitrogen --restore &
pnmixer &
nm-applet &
# xinput set-prop 11 "Coordinate Transformation Matrix" 0.625 0.0 0.0 0.0 0.625 0.0 0.0 0.0 1.0
# xinput set-prop 11 "Coordinate Transformation Matrix" 1.0 0.0 0.0 0.0 1.0 0.0 0.0 0.0 1.0
# xinput set-prop 11 "Coordinate Transformation Matrix" 0.25 0.0 0.0 0.0 0.25 0.0 0 0 1
xinput set-prop 15 "Coordinate Transformation Matrix" 0.125 0.0 0.0 0.0 0.125 0.0 0.0 0.0 1.0
flatpak run com.discordapp.Discord --start-minimized &
x11vnc -forever -ncache -multiptr -repeat -clip 1000x750+1920+0 & 
qpwgraph ~/Speedrunning.qpwgraph -axm &
