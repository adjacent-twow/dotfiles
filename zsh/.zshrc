# plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# starship
eval "$(starship init zsh)"

# autocompletions
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# aliases
alias i3conf="micro ~/.config/i3/config"
alias piconf="micro ~/.config/picom/picom.conf"
alias polyconf="micro ~/.config/polybar/config.ini"
alias ls="ls -lah --color=auto"
alias aconf="micro ~/.config/alacritty/alacritty.toml"
