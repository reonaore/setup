#!/bin/bash

get_os() {
    if [ "$(uname)" == 'Darwin' ]; then
        OS='Mac'
    elif [ "$(expr substr "$(uname -s)" 1 5)" == 'Linux' ]; then
        OS='Linux'
    elif [ "$(expr substr "$(uname -s)" 1 10)" == 'MINGW32_NT' ]; then
        OS='Cygwin'
    else
        echo "Your platform ($(uname -a)) is not supported." >&2
        return 1
    fi

    echo $OS
}
