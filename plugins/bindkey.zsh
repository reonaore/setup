function zvm_after_init() {
    bindkey -v
    # for zaw
    bindkey '^R' zaw-history
    bindkey '^@' zaw-cdr
    bindkey '^xf' zaw-git-files
    bindkey '^xb' zaw-git-branches
    bindkey '^xl' zaw-git-log
    bindkey '^xx' zaw-git-status
    bindkey '^xp' zaw-process
}
