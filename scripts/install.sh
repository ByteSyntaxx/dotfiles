#!/usr/bin/env bash

# install window manager & terminal
sudo pacman -S --noconfirm --needed hyprland hyprpaper hyprlock xdg-desktop-portal-hyprland kitty qt5-wayland qt6-wayland polkit-gnome doas

# install basic programs
sudo pacman -S --noconfirm --needed fish waybar fuzzel mako cliphist obsidian discord bitwarden pcmanfm intellij-idea-community-edition 

# install fonts
sudo pacman -S --noconfirm --needed ttf-firacode-nerd ttf-jetbrains-mono ttf-roboto noto-fonts noto-fonts-extra noto-fonts-emoji

# install audio driver
sudo pacman -S pipewire pipewire-alsa pipewire-audio pipewire-pulse

# change shell for the 'bytesyntaxx' user
sudo chsh $(whoami) -s /bin/fish

# setup chaotic aur
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com                # recieve the primary keyids
sudo pacman-key --lsign-key 3056513887B78AEB                                                # sign the keyids locally

sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'      # This allows us to install our chaotic-keyring
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'   # This allows us to install our chaotic-mirrorlist

sudo pacman -Syu

# install and setup doas instead of sudo
while true; do
    read -p "Do you want to install and setup doas? [yes|no] " yn
    case $yn in
        [Yy]* ) 
            sudo pacman -S doas
            sudo echo permit persist setenv {PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin XAUTHORITY LANG LC_ALL} :wheel > /etc/doas.conf
            if doas -C /etc/doas.conf; then echo "doas config ok"; else echo "doas config error"; fi
            chown -c root:root /etc/doas.conf
            chmod -c 0400 /etc/doas.conf
            (echo '#!/bin/bash'; echo 'exec doas "${@/--preserve-env*/}"') > $HOME/.local/bin/sudo
            break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

# install aur helper
sudo pacman -S --needed base-devel

git clone https://aur.archlinux.org/paru.git
cd paru || exit
makepkg -si

paru -S --noconfirm --needed brave-bin nwg-look