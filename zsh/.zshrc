# autocompletions
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"


# history
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000

setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_VERIFY


# keybindings
autoload -U up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey '^[[A' up-line-or-beginning-search
bindkey '^[[B' down-line-or-beginning-search
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[3~' delete-char
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
bindkey '^ ' autosuggest-accept


# fzf
source <(fzf --zsh)


# starship
eval "$(starship init zsh)"


# aliases
alias zshrc="micro ~/.zshrc"
alias i3conf="micro ~/.config/i3/config"
alias piconf="micro ~/.config/picom/picom.conf"
alias polyconf="micro ~/.config/polybar/config.ini"
alias aconf="micro ~/.config/alacritty/alacritty.toml"
alias metro="klick -s 1 -i -P"
alias ls="ls --color=auto"
alias ll="ls -lah"
alias la="ls -A"
alias ..="cd .."
alias grep="grep --color=auto"


# exports and setopts
setopt interactive_comments
setopt AUTO_CD
export EDITOR=micro
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --style=numbers --line-range=:200 {}'"
export FZF_ALT_C_OPTS="--preview 'ls --color=always {}'"
export PATH="$HOME/.local/bin:$PATH"


# plugins (syntax-highlighting всегда последним)
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
