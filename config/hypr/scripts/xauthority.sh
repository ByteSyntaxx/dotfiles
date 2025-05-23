#!/usr/bin/env sh

# generate an ~/.Xauthority file if there is none
# sublime text needs it to save as sudo and other apps
xauth_file=$(xauth -q info | grep "Xauthority" | awk -F ":" '{print$2}' | tr -d ' ')
if [ ! -f "$xauth_file" ]; then
  xauth gen "$DISPLAY" > /dev/null 2>& 1
fi