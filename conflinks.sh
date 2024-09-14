#!/bin/bash

# link all configs via symlink

# program configs
ln -s ~/Documents/dotfiles/config/* ~/.config/

# icons & cursros
ln -s ~/Documents/dotfiles/icons/ ~/.icons

# themes
ln -s ~/Documents/dotfiles/themes/ ~/.themes

# wallpaper
ln -s ~/Documents/dotfiles/wallpaper/ ~/Pictures
