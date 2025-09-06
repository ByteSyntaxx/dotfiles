#!/usr/bin/env bash

SCRIPTSDIR=$HOME/.config/hypr/scripts

# Apps
"${SCRIPTSDIR}"/desktop-portal &
"${SCRIPTSDIR}"/xauthority &
systemctl start tor --now &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
