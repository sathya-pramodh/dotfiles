#!/bin/bash 
monitor="eDP-1-1"
second_monitor="HDMI-1-1"

xrandr --setprovideroutputsource 1 0
xrandr --newmode "1000x750_60.00" 60.75  1000 1056 1152 1304  750 753 757 779 -hsync +vsync
xrandr --addmode "$second_monitor" "1000x750_60.00"
xrandr --output "$second_monitor" --mode "1000x750_60.00" --pos 1920x330 
xrandr --output "$monitor" --primary

# dwmblocks &
blueman-applet &
numlockx on
# virtual_inputs &
picom -b
parcellite &
/usr/libexec/polkit-gnome-authentication-agent-1 & eval $(gnome-keyring-daemon -s --components=pkcs11,secrets,ssh,gpg)
xfce4-power-manager &
nitrogen --restore &
pnmixer &
nm-applet &
xinput set-prop 10 "libinput Accel Speed" -0.86 
xinput set-prop 4 "libinput Accel Speed" -0.86 
Discord --start-minimized &
x11vnc -forever -ncache -multiptr -repeat -clip 1000x750+1920+330 & 
qpwgraph ~/Speedrunning.qpwgraph -axm &
xinput | grep "Logitech G304" | grep "pointer" | awk -F ' ' '{print $5}' | awk -F '=' '{print $2}' > ~/.dev_id &
xset r rate 600 25
