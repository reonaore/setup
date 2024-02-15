export PATH="/usr/local/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"

source ~/.zsh/zplug.zsh

# ssh
if [ -z "$SSH_AUTH_SOCK" ]; then
    eval $(ssh-agent -s)
    ssh-add ~/.ssh/id_ed25519
fi

export LC_ALL=en_US.UTF-8

source ~/.zsh/profile.zsh
tmux new-session -A -s main
