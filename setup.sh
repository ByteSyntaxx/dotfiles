#!/bin/sh

mkdir -p ~/Documents/dotfiles/.zsh-files
mkdir -p ~/Documents/dotfiles/.config

# backup all zsh-files
cp ~/.zshrc ~/Documents/dotfiles/.zsh-files/.zshrc.backup
cp ~/.zshenv ~/Documents/dotfiles/.zsh-files/.zshenv.backup
cp -r ~/.zsh/plugins/* ~/Documents/dotfiles/.zsh-files/plugins/

#backup important config files
cp -r ~/.config/hypr/* ~/Documents/dotfiles/.config/hypr/
cp -r ~/.config/nvim/* ~/Documents/dotfiles/.config/nvim/
cp -r ~/.config/kitty/* ~/Documents/dotfiles/.config/kitty/
