# vi: set ft=zsh:

if [[ "$(uname)" == *"Darwin"* ]]; then
  export HOMEBREW_CASK_OPTS="--appdir=/Applications"
fi
