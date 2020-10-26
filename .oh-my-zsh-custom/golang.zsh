# vi: set ft=zsh:

if [[ -d /usr/local/go/bin ]] && [[ ! ":$PATH:" == *":/usr/local/go/bin:"* ]]; then
  export PATH=$PATH:/usr/local/go/bin 
fi
