#!/usr/bin/env bash

SCRIPTSDIR=$HOME/.config/hypr/scripts

# Apps
"${SCRIPTSDIR}"/desktop-portal &
"${SCRIPTSDIR}"/xauthority &
systemctl start tor --now &