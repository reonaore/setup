zstyle ':completion:*' completer _complete _correct

zstyle ':completion:*' menu select interactive
# setopt menu_complete
zstyle ':completion:*:rm:*' menu false
zstyle ':completion:*:default' list-colors
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
