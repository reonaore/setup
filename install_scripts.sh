#!/bin/sh

install_scripts() {
    install -d -v ~/.zsh/plugins
    install -C -v -b -m 644 ./zplug.zsh ./profile.zsh ~/.zsh
    install -C -v -b -m 644 ./plugins/* ~/.zsh/plugins
    install -C -v -b -m 644 ./.zshrc .tmux.conf ~
}
