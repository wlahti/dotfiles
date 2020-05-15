# vi: set ft=zsh:

if [[ -e "$HOME/.dir_colors" ]] && [[ -x "$(command -v dircolors)" ]]; then
    eval "$(dircolors -b "$HOME/.dir_colors")"
elif [[ -e "$HOME/.dircolors" ]] && [[ -x "$(command -v dircolors)" ]]; then
    eval "$(dircolors -b "$HOME/.dircolors")"
fi
