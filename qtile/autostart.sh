#!/bin/bash 
numlockx on
picom -f -b
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 & eval $(gnome-keyring-daemon -s --components=pkcs11,secrets,ssh,gpg)
xfce4-power-manager &
nitrogen --restore &
pnmixer &
nm-applet &
discord --start-minimized &
