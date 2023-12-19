#!/bin/sh

# link all configs via symlink

# program configs
ln -s ~/Documents/dotfiles/config/fish/ ~/.config
ln -s ~/Documents/dotfiles/config/hypr/ ~/.config
ln -s ~/Documents/dotfiles/config/nvim/ ~/.config
ln -s ~/Documents/dotfiles/config/wofi/ ~/.config
ln -s ~/Documents/dotfiles/config/kitty/ ~/.config
ln -s ~/Documents/dotfiles/config/neofetch/ ~/.config

# wallpaper
ln -s ~/Documents/dotfiles/wallpaper/ ~/Pictures
