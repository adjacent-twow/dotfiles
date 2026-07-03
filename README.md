## My personal Arch Linux dotfiles repository. 

## This repo is build around a minimalistic X/i3 setup for Arch Linux and Arch-based systems. It contains:
- i3 (window manager)
- Polybar (status bar)
- Alacritty (terminal emulator)
- Zsh (shell)
- Starship (prompt)
- Rofi (application launcher)
- Dunst (notifications)
- Redshift (night light)


## Installation
1. clone the repo (git clone https://github.com/adjacent-twow/dotfiles.git)
2. cd dotfiles/
3. make the install.sh executable (chmod +x install.sh)
4. ./install.sh

## The script will:
- Install required packages via pacman
- Symlink configuration files into your home directory
- Set Zsh as the default login shell

## Files overview and important notes

### Session startup (no display manager)

This setup does not use a display manager (e.g. `ly`, `sddm`, `lightdm`).

Instead, `.zprofile` contains a small script that automatically starts the X session after login, so you don’t need to run `startx` manually after entering your username and password.

This means:

* You log in on a TTY
* X/i3 starts automatically via `.zprofile`
* No manual `startx` step is required
