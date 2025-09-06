#!/usr/bin/env bash

timestamp=$(date +%Y%m%d-%H%M%S)
shots_dir="$HOME/Pictures/screenshots"
grim -g "$(slurp)" "$shots_dir"/"$timestamp".png; notify-send "Screenshot saved!" "$timestamp.png" --icon ~/.config/mako/notify.png
