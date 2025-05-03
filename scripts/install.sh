#!/bin/bash

# install window manager & terminal
sudo pacman -S --noconfirm --needed hyprland hyprpaper hyprlock xdg-desktop-portal-hyprland kitty kitty-terminfo kitty-shell-integration qt5-wayland qt6-wayland polkit-gnome

# install basic programs
sudo pacman -S --noconfirm --needed waybar fuzzel mako cliphist obsidian discord bitwarden pcmanfm intellij-idea-community-edition

# install paru / aur helper
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru || exit
makepkg -si

paru -S --noconfirm --needed brave-bin visual-studio-code-bin