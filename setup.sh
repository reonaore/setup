#!/bin/bash

if [ -z $EMAIL ]; then
	echo "please set EMAIL" >&2
	exit 1
fi

DOWNLOAD_DIR="$HOME/Downloads"
BREW_PATH="/opt/homebrew/bin"

# install homw brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
export PATH="$PATH:$BREW_PATH"

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

cp -r ./plugins ~/.zsh
cp ./zplug.zsh ~/.zsh
cp ./profile.zsh ~/.zsh
cp ./.zshrc ~/.zshrc

# install zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

# install iterm
wget -P $DOWNLOAD_DIR -O iterm.zip https://iterm2.com/downloads/stable/latest
unzip $DOWNLOAD_DIR/iterm.zip -d /Applications
rm $DOWNLOAD_DIR/iterm.zip
curl -L https://iterm2.com/misc/install_shell_integration.sh | bash

# install golang
wget -O - 'https://go.dev/dl/go1.17.7.darwin-amd64.tar.gz' | sudo tar -C /opt -xzvf -
echo "PATH=$PATH:/opt/go/bin" >>~/.zshrc
