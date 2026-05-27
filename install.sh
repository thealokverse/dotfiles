#!/bin/bash

echo "Installing dotfiles..."

mkdir -p ~/.config

cp -r i3 ~/.config/
cp -r polybar ~/.config/
cp -r rofi ~/.config/
cp -r picom ~/.config/
cp -r dunst ~/.config/
cp -r eww ~/.config/
cp -r alacritty ~/.config/

cp zsh/.zshrc ~/
cp zsh/.p10k.zsh ~/

echo "Done."
