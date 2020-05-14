# vi: set ft=zsh:

# Baseline manpath
if [[ "$(uname)" == "Darwin" ]] && [[ -x /usr/libexec/path_helper ]]; then
    [[ -z "${MANPATH}" ]] && export MANPATH=""
    eval "$(/usr/libexec/path_helper -s | \grep MANPATH)"
    [[ -z "${MANPATH}" ]] && unset MANPATH
fi

