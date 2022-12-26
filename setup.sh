#!/bin/bash

. getOS.sh
. ./install_scripts.sh

if [ -z $EMAIL ]; then
	echo "please set EMAIL" >&2
	exit 1
fi

OS=$(getOS)

if [ $? -ne 0 ]; then
	exit 1
fi

# install brew
if [ $OS = "Darwin" ]; then
	DOWNLOAD_DIR="$HOME/Downloads"
	BREW_PATH="/opt/homebrew/bin"

	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	export PATH="$PATH:$BREW_PATH"
fi

COMMAND_LIST=(vim wget curl shellcheck coreutils git tmux)

# install commands
if [ $OS = "Darwin" ]; then
	brew install "${COMMAND_LIST[@]}"
elif [ $OS = "Linux" ]; then
	COMMAND_LIST+=("zsh")
	sudo apt-get update && sudo apt-get install -y "${COMMAND_LIST[@]}"
fi

if [ $? -ne 0 ]; then
	exit 1
fi

install_scripts

# install zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

# install iterm
if [ $OS = "Darwin" ]; then
	wget -P $DOWNLOAD_DIR -O iterm.zip https://iterm2.com/downloads/stable/latest
	unzip $DOWNLOAD_DIR/iterm.zip -d /Applications
	rm $DOWNLOAD_DIR/iterm.zip
	curl -L https://iterm2.com/misc/install_shell_integration.sh | bash
fi

ssh-keygen -t ed25519 -C $EMAIL
if [ $OS = "Darwin" ]; then
	echo "ssh-add --apple-use-keychain ~/.ssh/id_ed25519" >>~/.zshrc
fi

chsh -s "$(which zsh)"
