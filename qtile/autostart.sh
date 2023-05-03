#!/bin/bash 
numlockx on
picom -f -b
/usr/libexec/polkit-gnome-authentication-agent-1 & eval $(gnome-keyring-daemon -s --components=pkcs11,secrets,ssh,gpg)
xfce4-power-manager &
nitrogen --restore &
pnmixer &
qpwgraph -m &
nm-applet &
flatpak run com.discordapp.Discord --start-minimized &
