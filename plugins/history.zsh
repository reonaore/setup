# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
export HISTSIZE=1000
export SAVEHIST=100000
export HISTFILE=~/.zsh_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt correct
