My personal Arch Linux dotfiles.
A minimalistic X/i3 setup for Arch and Arch-based systems.

## Contents

* i3 (window manager)
* Polybar (status bar)
* Alacritty (terminal emulator)
* Zsh (shell)
* Fzf (fuzzy finder)
* Rofi (application launcher)
* Dunst (notifications)
* Redshift (night light)

## Installation

```bash
git clone https://github.com/adjacent-twow/dotfiles.git
cd dotfiles
chmod +x install.sh
./install.sh
```

The script will:

* install required packages via pacman
* symlink configuration files into your home directory
* set Zsh as the default login shell

## Zsh

Shell config lives in `zsh/.zshrc`. It needs these packages:
`zsh-autosuggestions`, `zsh-syntax-highlighting`, `fzf` (0.48+), `starship`, `bat`, `micro`.

Highlights:

* shared history between sessions (50k entries)
* prefix history search on up/down arrows
* `Ctrl+R` / `Ctrl+T` / `Alt+C` via fzf with previews
* `Ctrl+Space` accepts the autosuggestion
* `ll`, `la`, `..` and quick-edit aliases for configs (`zshrc`, `i3conf`, `polyconf`, ...)

## Session startup (no display manager)

This setup does not use a display manager (`ly`, `sddm`, `lightdm`, etc.).
Instead, `zsh/.zprofile` contains a small script that starts the X session automatically after login.

This means:

* you log in on a TTY
* X/i3 starts automatically via `.zprofile`
* no manual `startx` is needed
