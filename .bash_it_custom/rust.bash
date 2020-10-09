# shellcheck shell=bash disable=SC1090,SC1091
# vi: set ft=sh:

if [[ -f "$HOME/.cargo/env" ]]; then
    source "$HOME/.cargo/env"
fi

if [[ -x "$(command -v rustc)" ]]; then
    rust_sysroot=$(rustc --print sysroot)
    if [[ -d "$rust_sysroot/lib/rustlib/src/rust/src" ]]; then
        export RUST_SRC_PATH="$rust_sysroot/lib/rustlib/src/rust/src"
    elif [[ -d "$rust_sysroot/lib/rustlib/src/rust/library" ]]; then
        export RUST_SRC_PATH="$rust_sysroot/lib/rustlib/src/rust/library"
    fi
    unset rust_sysroot
fi
