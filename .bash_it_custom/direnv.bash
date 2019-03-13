# shellcheck shell=bash
# vi: set ft=sh:

# Configure direnv when available
if [[ -x "$(command -v direnv)" ]]; then
  eval "$(direnv hook bash)"
fi
