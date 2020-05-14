# vi: set ft=zsh:

if [[ -d "$HOME/go" ]] && [[ ! ":$PATH:" == *":$HOME/go/bin:"* ]]; then
    export PATH="$PATH:$HOME/go/bin"
fi
