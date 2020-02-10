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
        alias as='colourify as'
        alias blkid='colourify blkid'
        alias colourify="$GRC -es --colour=auto"
        alias configure='colourify ./configure'
        alias df='colourify df'
        alias diff='colourify diff'
        alias dig='colourify dig'
        alias docker='colourify docker'
        alias docker-machine='colourify docker-machine'
        alias du='colourify du'
        alias env='colourify env'
        alias fdisk='colourify fdisk'
        alias findmnt='colourify findmnt'
        alias free='colourify free'
        alias gas='colourify gas'
        alias gcc='colourify gcc'
        alias g++='colourify g++'
        alias getsebool='colourify getsebool'
        alias go='colourify go'
        alias head='colourify head'
        alias id='colourify id'
        alias ifconfig='colourify ifconfig'
        alias ip='colourify ip'
        alias iptables='colourify iptables'
        alias ld='colourify ld'
        alias lsblk='colourify lsblk'
        alias lsof='colourify lsof'
        alias lspci='colourify lspci'
        alias make='colourify make'
        alias mount='colourify mount'
        alias mtr='colourify mtr'
        alias netstat='colourify netstat'
        alias ping6='colourify ping'
        alias ping='colourify ping'
        alias ps='colourify ps'
        alias semanage='colourify semanage'
        alias tail='colourify tail'
        alias traceroute6='colourify traceroute6'
        alias traceroute='colourify traceroute'
    fi
fi
