#!/bin/bash

# install window manager & terminal
sudo pacman -S hyprland hyprpaper hyprlock kitty kitty-terminfo kitty-shell-integration qt5-wayland qt6-wayland polkit-gnome --needed

# install basic programs
sudo pacman -S waybar wofi mako cliphist obsidian discord bitwarden chromium pcmanfm intellij-idea-community-edition --needed