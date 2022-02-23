#!/bin/bash

EMAIL="reona.ookikunaru@gmail.com"
DOWNLOAD_DIR="~/Downloads"
BREW_PATH="/opt/homebrew/bin"

# install homw brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
export PATH="$PATH:/opt/homebew/bin"

# install
brew install \
	vim \
	wget \
	curl \
	shellcheck \
	coreutils \
	git

ssh-keygen -t ed25519 -C $EMAIL

# setup zsh
if [ ! -e ~/.zsh ]; then
	mkdir -p ~/.zsh
fi

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O ~/.zsh/git-completion.bash
chmod a+x ~/.zsh/git-completion.bash

wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -O ~/.zsh/git-prompt.sh
chmod a+x ~/.zsh/git-prompt.sh

git clone git://github.com/zsh-users/zaw.git ~/.zsh/zaw

cp ./alias.zsh ~/.zsh
cp ./completion.zsh ~/.zsh
cp ./git_prompt.zsh ~/.zsh
cp ./profile.zsh ~/.zshrc

# install iterm
wget -P $DOWNLOAD_DIR -O iterm.zip https://iterm2.com/downloads/stable/latest
unzip $DOWNLOAD_DIR/iterm.zip -d /Applications
rm $DOWNLOAD_DIR/iterm.zip
curl -L https://iterm2.com/misc/install_shell_integration.sh | bash

# install golang
wget -O - 'https://go.dev/dl/go1.17.7.darwin-amd64.tar.gz' | sudo tar -C /opt -xzvf -
echo "PATH=$PATH:/opt/go/bin" >>~/.zshrc
