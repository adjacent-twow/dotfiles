My personal Arch Linux dotfiles repository. 

This repo is build around a minimalistic X/i3 setup for Arch Linux and Arch-based systems. It contains:
- i3 (window manager)
- Polybar (status bar)
- Alacritty (terminal emulator)
- Zsh (shell)
- Starship (prompt)
- Rofi (application launcher)
- Dunst (notifications)
- Redshift (night light)


Installation
1. clone the repo (git clone https://github.com/adjacent-twow/dotfiles.git)
2. cd dotfiles/
3. make the install.sh executable (chmod +x install.sh)
4. ./install.sh

The script will:
- Install required packages via pacman
- Symlink configuration files into your home directory
- Set Zsh as the default login shell
