#!/usr/bin/env bash
# Created by newuser for 5.1.1

# set -k
setopt interactivecomments

#[POWERLEVEL9K]
    #export DEFAULT_USER="ferenc"
    # For color codes check spectrum_ls:
    # https://github.com/dmmalam/dotty/blob/master/zsh/functions/spectrum_ls
    # For available segment colors
    # https://github.com/chris-murray/powerlevel9k-custom#special-segment-colors
    export POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="234"
    export POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="015"
    source ~/COMPILED/powerlevel9k/powerlevel9k.zsh-theme
    POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(vi_mode context dir vcs)
#[/POWERLEVEL9K]

#[ZSH-VIMODE-VISUAL]
    source ~/COMPILED/zsh-vimode-visual/zsh-vimode-visual.zsh
#[/ZSH-VIMODE-VISUAL]

#[VI-Mode]
    ## general activation
    bindkey -v

    ## Usual history search
    bindkey '^R' history-incremental-search-backward
    bindkey '^P' history-beginning-search-backward
    bindkey '^N' history-beginning-search-forward

    ## Moving around like in bash
    bindkey '^H' backward-delete-char
    bindkey '^A' beginning-of-line
    bindkey '^E' end-of-line
    #bindkey "${terminfo[khome]}" beginning-of-line
    #bindkey "${terminfo[kend]}" end-of-line
    bindkey '^F' forward-char
    bindkey '^B' backward-char

    ## make it more responsive
    export KEYTIMEOUT=1
#[/VI-Mode]

#[Extra completions]
    autoload -U compinit && compinit

    ## homeshick
    source "$HOME/.homesick/repos/homeshick/homeshick.sh"
    export FPATH=$HOME/.homesick/repos/homeshick/completions:$FPATH
    autoload -U _homeshick
    compdef _homeshick homeshick

    ## mpv
    export FPATH=~/COMPILED/mpv/share/zsh/site-functions:$FPATH
    autoload -U _mpv
    compdef _mpv mpv

    ## Kubernetes kubectl completion only if it is installed and available
    ## https://vishh.github.io/docs/user-guide/kubectl/kubectl_completion/
    which kubectl >/dev/null 2>&1 && source <(kubectl completion zsh)

    ## Helm completion only if it is installed and available
    ## https://github.com/kubernetes/helm/blob/master/docs/helm/helm_completion.md
    which helm >/dev/null 2>&1 && source <(helm completion zsh)
#[/Extra completions]

#[History settings]
    export HISTFILE=~/.zsh_history
    export HISTSIZE=50000
    export SAVEHIST=$HISTSIZE
    setopt EXTENDED_HISTORY
    setopt APPEND_HISTORY
    setopt HIST_NO_STORE

    # Enable History Expansion on magic-space:
    # http://zsh.sourceforge.net/Doc/Release/Expansion.html#History-Expansion
    bindkey " " magic-space
#[/History settings]

#[Zstyle settings]
    ## Enable Menu-Style Autocompletion
    ## navigate the suggestions using the arrow keys on the keyboard
    zstyle ':completion:*' menu select
#[/Zstyle settings]

#[Programming language / language server specific settings]
    #[Rust]
        if which rustc >/dev/null 2>&1;
        then
            export PATH="$HOME/.cargo/bin:$PATH"
            export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"
        fi
    #[/Rust]

    #[Go]
        export GOROOT="$HOME/COMPILED/go1.10.3.linux-amd64/go"
        export export PATH="${GOROOT}/bin:${PATH}"
    #[/Go]
#[/Programming language / language server specific settings]

#[Binutil aliases]
    #[H]
        alias h='helm ls -a'
    #[H]
    #[J]
        alias j='jobs'
    #[/J]
    #[K]
        source "$HOME/COMPILED/k/k.sh"
        alias k='k -ha'
    #[/K]
    #[L]
        alias l='ls -lah --color=always'
    #[/L]
    #[N]
        alias n='nvim'
    #[/N]
    #[Rg|Ag|Ack]
        alias rg='rg -n --heading --color=always --hidden --context 3 --smart-case'
    #[/Rg|Ag|Ack]
    #[Git]
        alias s='git status'
        alias d='git difftool'
        alias f='git difftool --cached'
    #[/Git]
    #[Tig]
        alias t='tig --all'
    #[/Tig]
#[/Binutil aliases]

#[Sdkman] Management for JVM based SDK versions
    export SDKMAN_DIR="/home/${USER}/.sdkman"
    [[ -s "${SDKMAN_DIR}/bin/sdkman-init.sh" ]] && source "${SDKMAN_DIR}/bin/sdkman-init.sh"
#[/Sdkman]
