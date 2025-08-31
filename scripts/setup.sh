#!/usr/bin/env bash

# link all configs via symlink

# program configs
ln -fs ~/Documents/dotfiles/config/* ~/.config/

# icons & cursros
ln -fs ~/Documents/dotfiles/icons/ ~/.icons

# themes
ln -fs ~/Documents/dotfiles/themes/ ~/.themes

# wallpaper
ln -fs ~/Documents/dotfiles/wallpaper/ ~/Pictures/
