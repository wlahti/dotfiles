# shellcheck shell=bash
# vi: set ft=sh:

# Don't save duplicate commands or simple commands in history
export HISTCONTROL="ignorespace:ignoredups"
export HISTIGNORE="&:ls:bg:fg:exit"
export HISTFILESIZE=2048
export HISTTIMEFORMAT="%+ "
