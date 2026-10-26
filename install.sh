#!/usr/bin/env bash

set -euo pipefail

command -v pacman >/dev/null || {
    echo "This installer is for Arch Linux only."
    exit 1
}

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

x_packages=(
    xorg-server
    xorg-xset
    xorg-xinit
    xwallpaper
    xorg-xrandr
    i3
    polybar
)

desktop_packages=(
    git
    alacritty
    base-devel
    zsh
    zsh-syntax-highlighting
    zsh-autosuggestions
    starship
    fzf
    bat
    micro
    dunst
    rofi
    firefox
    picom
    calcurse
    redshift
)

sudo pacman -S --needed "${x_packages[@]}" "${desktop_packages[@]}"

echo "Linking configs from the repo..."

mkdir -p ~/.config/i3

ln -sf  "$DOTFILES_DIR/i3/config" ~/.config/i3/config
ln -sfn "$DOTFILES_DIR/polybar" ~/.config/polybar
ln -sfn "$DOTFILES_DIR/alacritty" ~/.config/alacritty
ln -sfn "$DOTFILES_DIR/picom" ~/.config/picom
ln -sf  "$DOTFILES_DIR/.xinitrc" ~/.xinitrc
ln -sf  "$DOTFILES_DIR/zsh/.zshrc" ~/.zshrc
ln -sf  "$DOTFILES_DIR/zsh/.zprofile" ~/.zprofile


echo "Changing shell..."

if [ "$SHELL" != "$(command -v zsh)" ]; then
    echo "Changing login shell to zsh..."
    chsh -s "$(command -v zsh)"
fi

echo "Done."
