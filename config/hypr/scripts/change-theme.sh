#!/usr/bin/env bash

chosen=$(printf "Catppuccin Mocha\nEverforest Dark\nGruvbox Dark\nNord Dark" | fuzzel -d --config=$HOME/.config/fuzzel/config.ini)

case "$chosen" in 
    "Catppuccin Mocha") 
        cp $HOME/Documents/dotfiles/config/fuzzel/themes/catppuccin.ini $HOME/Documents/dotfiles/config/fuzzel/config.ini; 
        cp $HOME/Documents/dotfiles/config/hypr/themes/catppuccin.lua $HOME/Documents/dotfiles/config/hypr/hyprland.lua;
        cp $HOME/Documents/dotfiles/config/hypr/themes/catppuccin-hyprlock.conf $HOME/Documents/dotfiles/config/hypr/hyprlock.conf;
        cp $HOME/Documents/dotfiles/config/hypr/themes/catppuccin-hyprpaper.conf $HOME/Documents/dotfiles/config/hypr/hyprpaper.conf;
        cp $HOME/Documents/dotfiles/config/mako/themes/catppuccin $HOME/Documents/dotfiles/config/mako/config;
        cp $HOME/Documents/dotfiles/config/waybar/theme/catppuccin.css $HOME/Documents/dotfiles/config/waybar/theme/colors.css;
        cp $HOME/Documents/dotfiles/config/kitty/themes/Catppuccin-Mocha.conf $HOME/Documents/dotfiles/config/kitty/theme.conf;
        hyprctl reload;
        makoctl reload;
        killall waybar; waybar &
        gsettings set org.gnome.desktop.interface gtk-theme Catppuccin-Dark;
        gsettings set org.gnome.desktop.wm.preferences theme Catppuccin-Dark;
        notify-send "Theme Changed" "Applied: Catppuccin Mocha" --icon ~/.config/mako/success.png;;
    "Everforest Dark") 
        cp $HOME/Documents/dotfiles/config/fuzzel/themes/everforest.ini $HOME/Documents/dotfiles/config/fuzzel/config.ini; 
        cp $HOME/Documents/dotfiles/config/hypr/themes/everforest.lua $HOME/Documents/dotfiles/config/hypr/hyprland.lua;
        cp $HOME/Documents/dotfiles/config/hypr/themes/everforest-hyprlock.conf $HOME/Documents/dotfiles/config/hypr/hyprlock.conf;
        cp $HOME/Documents/dotfiles/config/hypr/themes/everforest-hyprpaper.conf $HOME/Documents/dotfiles/config/hypr/hyprpaper.conf;
        cp $HOME/Documents/dotfiles/config/mako/themes/everforest $HOME/Documents/dotfiles/config/mako/config;
        cp $HOME/Documents/dotfiles/config/waybar/theme/everforest.css $HOME/Documents/dotfiles/config/waybar/theme/colors.css;
        cp $HOME/Documents/dotfiles/config/kitty/themes/Everforest-Dark-Hard.conf $HOME/Documents/dotfiles/config/kitty/theme.conf;
        hyprctl reload;
        makoctl reload;
        killall waybar; waybar &        
        gsettings set org.gnome.desktop.interface gtk-theme Everforest-Dark-Medium;
        gsettings set org.gnome.desktop.wm.preferences theme Everforest-Dark-Medium
        notify-send "Theme Changed" "Applied: Everforest Dark" --icon ~/.config/mako/success.png;;
    "Gruvbox Dark") 
        cp $HOME/Documents/dotfiles/config/fuzzel/themes/gruvbox-dark.ini $HOME/Documents/dotfiles/config/fuzzel/config.ini; 
        cp $HOME/Documents/dotfiles/config/hypr/themes/gruvbox-dark.lua $HOME/Documents/dotfiles/config/hypr/hyprland.lua;
        cp $HOME/Documents/dotfiles/config/hypr/themes/gruvbox-dark-hyprlock.conf $HOME/Documents/dotfiles/config/hypr/hyprlock.conf;
        cp $HOME/Documents/dotfiles/config/hypr/themes/gruvbox-dark-hyprpaper.conf $HOME/Documents/dotfiles/config/hypr/hyprpaper.conf;
        cp $HOME/Documents/dotfiles/config/mako/themes/gruvbox-dark $HOME/Documents/dotfiles/config/mako/config;
        cp $HOME/Documents/dotfiles/config/waybar/theme/gruvbox.css $HOME/Documents/dotfiles/config/waybar/theme/colors.css;
        cp $HOME/Documents/dotfiles/config/kitty/themes/Gruvbox-Dark-Hard.conf $HOME/Documents/dotfiles/config/kitty/theme.conf;
        hyprctl reload;
        makoctl reload;
        killall waybar; waybar &
        gsettings set org.gnome.desktop.interface gtk-theme Gruvbox-B-LB-Dark;
        gsettings set org.gnome.desktop.wm.preferences theme Gruvbox-B-LB-Dark
        notify-send "Theme Changed" "Applied: Gruvbox Dark" --icon ~/.config/mako/success.png;;
    "Nord Dark") 
        cp $HOME/Documents/dotfiles/config/fuzzel/themes/nord-dark.ini $HOME/Documents/dotfiles/config/fuzzel/config.ini; 
        cp $HOME/Documents/dotfiles/config/hypr/themes/nord-dark.lua $HOME/Documents/dotfiles/config/hypr/hyprland.lua;
        cp $HOME/Documents/dotfiles/config/hypr/themes/nord-dark-hyprlock.conf $HOME/Documents/dotfiles/config/hypr/hyprlock.conf;
        cp $HOME/Documents/dotfiles/config/hypr/themes/nord-dark-hyprpaper.conf $HOME/Documents/dotfiles/config/hypr/hyprpaper.conf;
        cp $HOME/Documents/dotfiles/config/mako/themes/nord-dark $HOME/Documents/dotfiles/config/mako/config;
        cp $HOME/Documents/dotfiles/config/waybar/theme/nord.css $HOME/Documents/dotfiles/config/waybar/theme/colors.css;
        cp $HOME/Documents/dotfiles/config/kitty/themes/Nord-Dark.conf $HOME/Documents/dotfiles/config/kitty/theme.conf;
        hyprctl reload;
        makoctl reload;
        killall waybar; waybar &
        gsettings set org.gnome.desktop.interface gtk-theme Nordic-darker;
        gsettings set org.gnome.desktop.wm.preferences theme Nordic-darker
        notify-send "Theme Changed" "Applied: Nord Dark" --icon ~/.config/mako/success.png;;
esac
