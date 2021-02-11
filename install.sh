git clone --bare https://github.com/wlahti/dotfiles "$HOME/.dotfiles"
alias dotfiles='git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
dotfiles config --local status.showUntrackedFiles no
dotfiles config --local core.excludesFile "$HOME/.dot-gitignore"
dotfiles checkout -f # destroys any local changes

if [ ! -d ~/.bash_it ]; then
    git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
    ~/.bash_it/install.sh --silent --no-modify-config
    echo 'bash-it enable completion ssh terraform tmux xterm' | bash -i
fi

if [ ! -d ~/.oh-my-zsh ]; then
    git clone --depth=1 https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
fi

if [ ! -d ~/.zsh-syntax-highlighting ]; then
    git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh-syntax-highlighting
fi

if [ ! -d ~/.tmux/plugins/tpm ]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    ~/.tmux/plugins/tpm/bin/install_plugins
fi
