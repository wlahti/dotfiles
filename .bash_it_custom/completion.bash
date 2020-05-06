# shellcheck shell=bash disable=SC1090,SC1091
# vi: set ft=sh:

if ! shopt -oq posix; then
    if [[ "$(uname)" == "Darwin" ]] && [[ -x "$(command -v brew)" ]]; then
        # Use homebrew bash-completions if available
        if [ -f "$(brew --prefix)/etc/bash_completion" ]; then
            source "$(brew --prefix)/etc/bash_completion"
        fi
    fi

    if [[ -f /usr/share/bash-completion/bash_completion ]]; then
        . /usr/share/bash-completion/bash_completion
    elif [[ -f /etc/bash_completion ]]; then
        . /etc/bash_completion
    fi

    if [[ -d "$HOME/.bash_completion.d" ]]; then
        for i in "$HOME"/.bash_completion.d/*; do
            [ -f "$i" ] && source "$i"
        done
    fi
fi
