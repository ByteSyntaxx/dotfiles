#!/bin/bash

SCRIPTSDIR=$HOME/.config/hypr/scripts

# Apps
"${SCRIPTSDIR}"/desktop-portal &
"${SCRIPTSDIR}"/xauthority &
waybar & hyprpaper & mako &
systemctl start tor --now &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
