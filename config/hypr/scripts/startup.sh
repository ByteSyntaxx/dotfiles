#!/bin/bash

SCRIPTSDIR=$HOME/.config/hypr/scripts

# Apps
"${SCRIPTSDIR}"/dportal &
"${SCRIPTSDIR}"/xauthority &
"${SCRIPTSDIR}"/globaltheme &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
