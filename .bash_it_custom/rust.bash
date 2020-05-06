# shellcheck shell=bash disable=SC1090,SC1091
# vi: set ft=sh:

if [[ -f "$HOME/.cargo/env" ]]; then
    source "$HOME/.cargo/env"
fi
