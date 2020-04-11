# shellcheck shell=bash
# vi: set ft=sh:

if [[ -d "$HOME/go" ]] && [[ ! ":$PATH:" == *":$HOME/go/bin:"* ]]; then
    export PATH="$PATH:$HOME/go/bin"
fi
