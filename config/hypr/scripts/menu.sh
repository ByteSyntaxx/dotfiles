#!/bin/bash

if [[ ! $(pidof wofi) ]]; then
	wofi --show drun --prompt ''
else
	pkill wofi
fi