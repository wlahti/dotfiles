# shellcheck shell=bash
# vi: set ft=sh:

# Deal with GitHub pull requests
pullify() {
    git config --add remote.origin.fetch '+refs/pull/*/head:refs/remotes/origin/pr/*';
    git fetch origin
}
