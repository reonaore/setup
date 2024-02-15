if [ "$(uname)" = 'Darwin' ]; then
    export LSCOLORS=Gxfxcxdxbxegedabagacad
    alias ls='ls -G'
else
    eval $(dircolors ~/.colorrc)
    alias ls='ls --color=auto'
fi

alias vim='nvim'
