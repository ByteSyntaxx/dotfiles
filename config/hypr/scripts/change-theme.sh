#!/usr/bin/env bash

chosen=$(printf "Catppuccin Mocha\nEverforest Dark\nGruvbox Dark\nNord Dark" | fuzzel -d --config=$HOME/.config/fuzzel/config.ini)

case "$chosen" in 
    "Catppuccin Mocha") 
        ln -sf $HOME/Documents/dotfiles/config/fuzzel/themes/catppuccin.ini $HOME/Documents/dotfiles/config/fuzzel/config.ini; 
        ln -sf $HOME/Documents/dotfiles/config/hypr/themes/catppuccin.conf $HOME/Documents/dotfiles/config/hypr/hyprland.conf;
        ln -sf $HOME/Documents/dotfiles/config/hypr/themes/catppuccin-hyprlock.conf $HOME/Documents/dotfiles/config/hypr/hyprlock.conf;
        ln -sf $HOME/Documents/dotfiles/config/hypr/themes/catppuccin-hyprpaper.conf $HOME/Documents/dotfiles/config/hypr/hyprpaper.conf;
        ln -sf $HOME/Documents/dotfiles/config/mako/themes/catppuccin $HOME/Documents/dotfiles/config/mako/config;
        ln -sf $HOME/Documents/dotfiles/config/waybar/themes/catppuccin.css $HOME/Documents/dotfiles/config/waybar/style.css;
        ln -sf $HOME/Documents/dotfiles/config/kitty/themes/Catppuccin-Mocha.conf $HOME/Documents/dotfiles/config/kitty/theme.conf;
        hyprctl reload;
        makoctl reload;
        killall waybar; waybar &
        gsettings set org.gnome.desktop.interface gtk-theme Catppuccin-Dark;
        gsettings set org.gnome.desktop.wm.preferences theme Catppuccin-Dark;;
    "Everforest Dark") 
        ln -sf $HOME/Documents/dotfiles/config/fuzzel/themes/everforest.ini $HOME/Documents/dotfiles/config/fuzzel/config.ini; 
        ln -sf $HOME/Documents/dotfiles/config/hypr/themes/everforest.conf $HOME/Documents/dotfiles/config/hypr/hyprland.conf;
        ln -sf $HOME/Documents/dotfiles/config/hypr/themes/everforest-hyprlock.conf $HOME/Documents/dotfiles/config/hypr/hyprlock.conf;
        ln -sf $HOME/Documents/dotfiles/config/hypr/themes/everforest-hyprpaper.conf $HOME/Documents/dotfiles/config/hypr/hyprpaper.conf;
        ln -sf $HOME/Documents/dotfiles/config/mako/themes/everforest $HOME/Documents/dotfiles/config/mako/config;
        ln -sf $HOME/Documents/dotfiles/config/waybar/themes/everforest.css $HOME/Documents/dotfiles/config/waybar/style.css;
        ln -sf $HOME/Documents/dotfiles/config/kitty/themes/Everforest-Dark-Hard.conf $HOME/Documents/dotfiles/config/kitty/theme.conf;
        hyprctl reload;
        makoctl reload;
        killall waybar; waybar &        
        gsettings set org.gnome.desktop.interface gtk-theme Everforest-Dark-Medium;
        gsettings set org.gnome.desktop.wm.preferences theme Everforest-Dark-Medium;;
    "Gruvbox Dark") 
        ln -sf $HOME/Documents/dotfiles/config/fuzzel/themes/gruvbox-dark.ini $HOME/Documents/dotfiles/config/fuzzel/config.ini; 
        ln -sf $HOME/Documents/dotfiles/config/hypr/themes/gruvbox-dark.conf $HOME/Documents/dotfiles/config/hypr/hyprland.conf;
        ln -sf $HOME/Documents/dotfiles/config/hypr/themes/gruvbox-dark-hyprlock.conf $HOME/Documents/dotfiles/config/hypr/hyprlock.conf;
        ln -sf $HOME/Documents/dotfiles/config/hypr/themes/gruvbox-dark-hyprpaper.conf $HOME/Documents/dotfiles/config/hypr/hyprpaper.conf;
        ln -sf $HOME/Documents/dotfiles/config/mako/themes/gruvbox-dark $HOME/Documents/dotfiles/config/mako/config;
        ln -sf $HOME/Documents/dotfiles/config/waybar/themes/gruvbox-dark.css $HOME/Documents/dotfiles/config/waybar/style.css;
        ln -sf $HOME/Documents/dotfiles/config/kitty/themes/Gruvbox-Dark-Hard.conf $HOME/Documents/dotfiles/config/kitty/theme.conf;
        hyprctl reload;
        makoctl reload;
        killall waybar; waybar &
        gsettings set org.gnome.desktop.interface gtk-theme Gruvbox-B-LB-Dark;
        gsettings set org.gnome.desktop.wm.preferences theme Gruvbox-B-LB-Dark;;
    "Nord Dark") 
        ln -sf $HOME/Documents/dotfiles/config/fuzzel/themes/nord-dark.ini $HOME/Documents/dotfiles/config/fuzzel/config.ini; 
        ln -sf $HOME/Documents/dotfiles/config/hypr/themes/nord-dark.conf $HOME/Documents/dotfiles/config/hypr/hyprland.conf;
        ln -sf $HOME/Documents/dotfiles/config/hypr/themes/nord-dark-hyprlock.conf $HOME/Documents/dotfiles/config/hypr/hyprlock.conf;
        ln -sf $HOME/Documents/dotfiles/config/hypr/themes/nord-dark-hyprpaper.conf $HOME/Documents/dotfiles/config/hypr/hyprpaper.conf;
        ln -sf $HOME/Documents/dotfiles/config/mako/themes/nord-dark $HOME/Documents/dotfiles/config/mako/config;
        ln -sf $HOME/Documents/dotfiles/config/waybar/themes/nord-dark.css $HOME/Documents/dotfiles/config/waybar/style.css;
        ln -sf $HOME/Documents/dotfiles/config/kitty/themes/Nord-Dark.conf $HOME/Documents/dotfiles/config/kitty/theme.conf;
        hyprctl reload;
        makoctl reload;
        killall waybar; waybar &
        gsettings set org.gnome.desktop.interface gtk-theme Nordic-darker;
        gsettings set org.gnome.desktop.wm.preferences theme Nordic-darker;;
esac