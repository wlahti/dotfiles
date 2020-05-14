# vi: set ft=zsh:

# setup grc if the config file exists
if (( $+commands[grc] )); then
    # Commands
    cmds=(
        as
        blkid
        cc
        configure
        cvs
        df
        diff
        dig
        docker
        docker-machine
        du
        env
        fdisk
        findmnt
        free
        g++
        gas
        gcc
        getsebool
        gmake
        go
        head
        id
        ifconfig
        ip
        iptables
        iwconfig
        last
        ld
        ldap
        ls
        lsblk
        lsof
        lspci
        make
        mount
        mtr
        netstat
        ping
        ping6
        ps
        semanage
        tail
        traceroute
        traceroute6
        wdiff
        whois
    )

  # Set alias for available commands.
  for cmd in ${cmds[@]}; do
      if (( $+commands[$cmd] )); then
          alias $cmd="grc --colour=auto $(whence $cmd)"
      fi
  done

  # Clean up variables
  unset cmds cmd
fi
