export ZPLUG_HOME=$HOME/.zplug
source $ZPLUG_HOME/init.zsh

source $HOME/.zsh/plugins/bindkey.zsh

zplug "~/.zsh/plugins", from:local
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zaw"
zplug "git/git", from:github, use:"contrib/completion/git-prompt.sh"
zplug "plugins/common-aliases", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/tmux", from:oh-my-zsh
zplug "plugins/docker", from:oh-my-zsh
zplug "plugins/docker-compose", from:oh-my-zsh
zplug "jeffreytse/zsh-vi-mode"

if ! zplug check; then
    zplug install
fi

zplug load
