# shellcheck shell=bash
# vi: set ft=sh:

if [[ -x "$(command -v brew)" ]]; then
  # Use GNU coreutils by default when available
  if [ -d "$(brew --prefix)/opt/coreutils/libexec" ]; then
    export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
    export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
  fi
fi
