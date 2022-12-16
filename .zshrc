export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/opt/homebrew/bin"
export PATH="$PATH:/opt/go/bin:$GOPATH/bin"
#
source ~/.zsh/zplug.zsh

# ssh
if [ -z "$SSH_AUTH_SOCK" ]; then
    eval $(ssh-agent -s)
    ssh-add ~/.ssh/id_ed25519
fi
ssh-add --apple-use-keychain ~/.ssh/id_ed25519

source ~/.zsh/profile.zsh
