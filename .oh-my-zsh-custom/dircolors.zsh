# vi: set ft=zsh:

if [[ -e "$HOME/.dir_colors" ]] && [[ -x "$(command -v dircolors)" ]]; then
    eval "$(dircolors -b ~/.dir_colors)"
fi
