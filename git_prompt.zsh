# git ps1
source ~/.zsh/git-prompt.sh
fpath=(~/.zsh $fpath)
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

setopt PROMPT_SUBST
PS1='[%B%F{cyan}%n%f%b@%m %B%F{green}%~%f%b %F{red}$(__git_ps1 "(%s)")%f]
\$ '
