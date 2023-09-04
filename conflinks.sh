#!/bin/sh

# link all my configs via symlink
# zsh configs
ln -s ~/Documents/dotfiles/.zsh/.zshrc.backup ~/.zshrc
ln -s ~/Documents/dotfiles/.zsh/.zshenv.backup ~/.zshenv
ln -s ~/Documents/dotfiles/.zsh/plugins/ ~/.zsh

# program configs
ln -s ~/Documents/dotfiles/.config/hypr/ ~/.config
ln -s ~/Documents/dotfiles/.config/nvim/ ~/.config
ln -s ~/Documents/dotfiles/.config/kitty/ ~/.config
