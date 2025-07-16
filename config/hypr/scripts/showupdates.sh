#!/bin/bash

updates=$(/bin/checkupdates|wc -l);

if [ $updates -gt 0 ] 2> /dev/null
then
    notify-send "It's Update Time" "There are $updates updates available." --icon ~/.config/mako/notify.png;    
else
    exit 0
fi
