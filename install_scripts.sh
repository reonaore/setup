#!/bin/sh

install_scripts() {
    install -d -v ~/.zsh/plugins
    install -C -v -b -m 644 ./zplug.zsh ./profile.zsh ~/.zsh
    install -C -v -b -m 644 ./plugins/* ~/.zsh/plugins
    install -C -v -b -m 644 ./.zshrc .tmux.conf ~
}

sync() {
    rootDir=$(dirname "$0")
    # the profile.zsh is not copied because this is a customization file
    # cp ~/.zsh/profile.zsh "$rootDir"
    cp ~/.zsh/zplug.zsh "$rootDir"
    cp ~/.zsh/plugins/* ./plugins
    cp ~/.zshrc ~/.tmux.conf "$rootDir"
}
