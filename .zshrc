export PATH="/usr/local/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"

source ~/.zsh/zplug.zsh

# ssh
if [ -z "$SSH_AUTH_SOCK" ]; then
    eval $(ssh-agent -s)
    ssh-add ~/.ssh/id_ed25519
fi

source ~/.zsh/profile.zsh
