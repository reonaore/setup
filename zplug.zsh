export ZPLUG_HOME=$HOME/.zplug
source $ZPLUG_HOME/init.zsh

zplug "~/.zsh/plugins", from:local
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zaw"
zplug "willghatch/zsh-hooks"
zplug "willghatch/zsh-cdr"
zplug "git/git", from:github, use:"contrib/completion/git-prompt.sh"
zplug "plugins/common-aliases", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/tmux", from:oh-my-zsh
zplug "plugins/colored-man-pages", from:oh-my-zsh

if ! zplug check; then
    zplug install
fi

zplug load
