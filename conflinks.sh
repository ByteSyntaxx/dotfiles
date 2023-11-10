#!/bin/sh

# link all configs via symlink

# zsh plugins
ln -s ~/Documents/dotfiles/.zsh/plugins/ ~/.zsh

# zsh configs
ln -s ~/Documents/dotfiles/.zsh/.zshrc ~/.zshrc
ln -s ~/Documents/dotfiles/.zsh/.zshenv ~/.zshenv
ln -s ~/Documents/dotfiles/.zsh/.zlogin ~/.zlogin

# starship config
ln -s ~/Documents/dotfiles/.config/starship.toml ~/.config/starship.toml

# program configs
ln -s ~/Documents/dotfiles/.config/fish/ ~/.config
ln -s ~/Documents/dotfiles/.config/hypr/ ~/.config
ln -s ~/Documents/dotfiles/.config/nvim/ ~/.config
ln -s ~/Documents/dotfiles/.config/wofi/ ~/.config
ln -s ~/Documents/dotfiles/.config/kitty/ ~/.config
ln -s ~/Documents/dotfiles/.config/neofetch/ ~/.config

# wallpaper
ln -s ~/Documents/dotfiles/wallpaper/ ~/Pictures