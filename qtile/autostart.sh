#!/bin/bash 
dwmblocks &
blueman-applet &
numlockx on
virtual_inputs &
picom -b --backend=glx
/usr/libexec/polkit-gnome-authentication-agent-1 & eval $(gnome-keyring-daemon -s --components=pkcs11,secrets,ssh,gpg)
xfce4-power-manager &
nitrogen --restore &
pnmixer &
qpwgraph ~/Speedrunning.qpwgraph -axm &
nm-applet &
# xinput set-prop 11 "Coordinate Transformation Matrix" 0.625 0.0 0.0 0.0 0.625 0.0 0.0 0.0 1.0
# xinput set-prop 11 "Coordinate Transformation Matrix" 1.0 0.0 0.0 0.0 1.0 0.0 0.0 0.0 1.0
# xinput set-prop 11 "Coordinate Transformation Matrix" 0.25 0.0 0.0 0.0 0.25 0.0 0 0 1
xinput set-prop 11 "Coordinate Transformation Matrix" 0.125 0.0 0.0 0.0 0.125 0.0 0.0 0.0 1.0
flatpak run com.discordapp.Discord --start-minimized &
