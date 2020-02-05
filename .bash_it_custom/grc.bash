# shellcheck shell=bash
# shellcheck disable=SC2139
# vi: set ft=sh:

# setup grc if the config file exists
if [[ -x "$(command -v grc)" ]]; then
    if [[ -x "$(command -v brew)" ]] && [[ -f "$(brew --prefix grc)/etc/grc.bashrc" ]]; then
        source "$(brew --prefix grc)/etc/grc.bashrc"
    elif [[ -f /etc/grc.bashrc ]]; then
        source /etc/grc.bashrc
    else
        GRC="$(command -v grc)"
        alias colourify="$GRC -es --colour=auto"
        alias blkid='colourify blkid'
        alias configure='colourify ./configure'
        alias df='colourify df'
        alias diff='colourify diff'
        alias docker='colourify docker'
        alias docker-machine='colourify docker-machine'
        alias du='colourify du'
        alias env='colourify env'
        alias free='colourify free'
        alias fdisk='colourify fdisk'
        alias findmnt='colourify findmnt'
        alias make='colourify make'
        alias gcc='colourify gcc'
        alias g++='colourify g++'
        alias id='colourify id'
        alias ip='colourify ip'
        alias iptables='colourify iptables'
        alias as='colourify as'
        alias gas='colourify gas'
        alias ld='colourify ld'
        alias lsof='colourify lsof'
        alias lsblk='colourify lsblk'
        alias lspci='colourify lspci'
        alias netstat='colourify netstat'
        alias ping='colourify ping'
        alias ping6='colourify ping'
        alias traceroute='colourify traceroute'
        alias traceroute6='colourify traceroute6'
        alias head='colourify head'
        alias tail='colourify tail'
        alias dig='colourify dig'
        alias mount='colourify mount'
        alias ps='colourify ps'
        alias mtr='colourify mtr'
        alias semanage='colourify semanage'
        alias getsebool='colourify getsebool'
        alias ifconfig='colourify ifconfig'
    fi
fi
