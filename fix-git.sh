#!/bin/fish
git config --global user.email "95436329+ByteSyntaxx@users.noreply.github.com"
git config --global user.name "ByteSyntaxx"
git config --global pull.rebase false

git remote remove origin
git remote add origin git@github.com:ByteSyntaxx/dotfiles.git
git remote add main origin