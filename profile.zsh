export PATH="$PATH:/opt/homebrew/bin"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/opt/go/bin:$GOPATH/bin"

source ~/.zsh/alias.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/git_prompt.zsh
source ~/.zsh/zaw/zaw.zsh

bindkey -e
bindkey '^h' zaw-history

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt correct

# ssh
if [ -z "$SSH_AUTH_SOCK" ]; then
    eval $(ssh-agent -s)
    ssh-add ~/.ssh/id_ed25519
fi
