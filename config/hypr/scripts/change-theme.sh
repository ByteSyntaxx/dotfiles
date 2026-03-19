#!/usr/bin/env bash

chosen=$(printf "Catppuccin Mocha\nEverforest Dark\nGruvbox Dark\nSolarized Dark" | fuzzel -d --config=$HOME/.config/fuzzel/config.ini)

case "$chosen" in 
    "Catppuccin Mocha") 
        ln -sf $HOME/Documents/dotfiles/config/fuzzel/themes/catppuccin.ini $HOME/Documents/dotfiles/config/fuzzel/config.ini; 
        ln -sf $HOME/Documents/dotfiles/config/hypr/themes/catppuccin.conf $HOME/Documents/dotfiles/config/hypr/hyprland.conf;
        ln -sf $HOME/Documents/dotfiles/config/hypr/themes/catppuccin-hyprlock.conf $HOME/Documents/dotfiles/config/hypr/hyprlock.conf;
        ln -sf $HOME/Documents/dotfiles/config/hypr/themes/catppuccin-hyprpaper.conf $HOME/Documents/dotfiles/config/hypr/hyprpaper.conf;
        ln -sf $HOME/Documents/dotfiles/config/mako/themes/catppuccin $HOME/Documents/dotfiles/config/mako/config;
        ln -sf $HOME/Documents/dotfiles/config/waybar/themes/catppuccin.css $HOME/Documents/dotfiles/config/waybar/style.css;
        hyprctl reload;
        makoctl reload;
        killall waybar; waybar &;;
    "Everforest Dark") 
        ln -sf $HOME/Documents/dotfiles/config/fuzzel/themes/everforest.ini $HOME/Documents/dotfiles/config/fuzzel/config.ini; 
        ln -sf $HOME/Documents/dotfiles/config/hypr/themes/everforest.conf $HOME/Documents/dotfiles/config/hypr/hyprland.conf;
        ln -sf $HOME/Documents/dotfiles/config/hypr/themes/everforest-hyprlock.conf $HOME/Documents/dotfiles/config/hypr/hyprlock.conf;
        ln -sf $HOME/Documents/dotfiles/config/hypr/themes/everforest-hyprpaper.conf $HOME/Documents/dotfiles/config/hypr/hyprpaper.conf;
        ln -sf $HOME/Documents/dotfiles/config/mako/themes/everforest $HOME/Documents/dotfiles/config/mako/config;
        ln -sf $HOME/Documents/dotfiles/config/waybar/themes/everforest.css $HOME/Documents/dotfiles/config/waybar/style.css;
        hyprctl reload;
        makoctl reload;
        killall waybar; waybar &;;
    "Gruvbox Dark") ;;
    "Solarized Dark") ;;
esac