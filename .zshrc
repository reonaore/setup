export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/opt/homebrew/bin"

source ~/.zsh/zplug.zsh

# ssh
if [ -z "$SSH_AUTH_SOCK" ]; then
    eval $(ssh-agent -s)
    ssh-add ~/.ssh/id_ed25519
fi

source ~/.zsh/profile.zsh
