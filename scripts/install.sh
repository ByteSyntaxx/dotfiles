#!/usr/bin/env bash

# install window manager & terminal
sudo pacman -S --noconfirm --needed hyprland hyprpaper hyprlock xdg-desktop-portal-hyprland kitty qt5-wayland qt6-wayland polkit-gnome

# install basic programs
sudo pacman -S --noconfirm --needed fish waybar fuzzel mako cliphist obsidian discord bitwarden pcmanfm intellij-idea-community-edition 

# install fonts
sudo pacman -S --noconfirm --needed ttf-firacode-nerd ttf-jetbrains-mono ttf-roboto noto-fonts noto-fonts-extra noto-fonts-emoji

# change shell for the 'bytesyntaxx' user
sudo chsh bytesyntaxx -s /bin/fish

# setup chaotic aur
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com                # recieve the primary keyids
sudo pacman-key --lsign-key 3056513887B78AEB                                                # sign the keyids locally

sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'      # This allows us to install our chaotic-keyring
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'   # This allows us to install our chaotic-mirrorlist

sudo pacman -Syu
# install paru / aur helper
#sudo pacman -S --needed base-devel

#git clone https://aur.archlinux.org/paru.git
#cd paru || exit
#makepkg -si

#paru -S --noconfirm --needed brave-bin sysmontask nwg-look
