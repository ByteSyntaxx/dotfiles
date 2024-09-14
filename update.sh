#!/bin/bash

# Make sure that local dotfiles are up to date 
git pull

# Date and Time timestamps

date=`/bin/date '+%Y-%m-%d'`
time=`/bin/date '+%H:%M'`

# push to github
git add .
git commit -m "Updated Dotfiles ${date} ${time}"
git push
