#!/bin/bash
set -e
echo "Installing X packages and i3..."
sudo pacman -S --needed xorg-server xorg-xset xorg-xinit xorg-xrandr xwallpaper i3 polybar

echo "Installing terminal, shell and other stuff..."
sudo pacman -S --needed git base-devel zsh zsh-syntax-highlighting zsh-autosuggestions starship alacritty dunst rofi firefox picom redshift

echo "Linking configs from the repo..."
mkdir -p ~/.config/i3
ln -sf ~/dotfiles/i3/config ~/.config/i3/config
ln -sf ~/dotfiles/polybar ~/.config/polybar
ln -sf ~/dotfiles/alacritty ~/.config/alacritty
ln -sf ~/dotfiles/.xinitrc ~/.xinitrc
ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -sf ~/dotfiles/zsh/.zprofile ~/.zprofile

echo "Changing shell..."
chsh -s $(which zsh)

echo "Done. Reboot to apply"
