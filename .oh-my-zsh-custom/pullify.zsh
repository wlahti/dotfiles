# vi: set ft=zsh:

# Deal with GitHub pull requests
pullify() {
    git config --add remote.origin.fetch '+refs/pull/*/head:refs/remotes/origin/pr/*';
    git fetch origin
}
