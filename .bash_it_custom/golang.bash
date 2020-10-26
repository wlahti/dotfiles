# shellcheck shell=bash
# vi: set ft=sh:

if [[ -d /usr/local/go/bin ]] && [[ ! ":$PATH:" == *":/usr/local/go/bin:"* ]]; then
  export PATH=$PATH:/usr/local/go/bin 
fi
