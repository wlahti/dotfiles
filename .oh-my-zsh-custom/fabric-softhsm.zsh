# vi: set ft=zsh:

if [[ "$(uname)" == "Darwin" ]] && [[ -x "$(command -v brew)" ]]; then
    PKCS11_LIB="$(brew list -lv1 --formula softhsm | grep libsofthsm2.so)"
else
    PKCS11_LIB="$(find /usr/lib -name libsofthsm2.so | head -1)"
fi

if [[ -n "$PKCS11_LIB" ]]; then
    export PKCS11_LIB
    export PKCS11_PIN="98765432"
    export PKCS11_LABEL="ForFabric"
fi
