# add specific settings
eval $(ssh-agent -s)
source "$HOME/.sdkman/bin/sdkman-init.sh"

export PATH="$PATH:$HOME/.local/flutter/bin"
ssh-add --apple-use-keychain ~/.ssh/id_ed25519

tmux new-session -A -s main
