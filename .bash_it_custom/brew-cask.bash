# shellcheck shell=bash
# vi: set ft=sh:

if [[ "$(uname)" == *"Darwin"* ]]; then
  export HOMEBREW_CASK_OPTS="--appdir=/Applications"
fi
