#!/bin/bash 
numlockx on
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 & eval $(gnome-keyring-daemon -s --components=pkcs11,secrets,ssh,gpg)
xfce4-power-manager &
pnmixer &
nm-applet &
discord &
