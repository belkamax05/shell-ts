function installModules {
    sts-message "Installing node_modules..."
    pushd $STS_DIR >/dev/null
    yarn install
    popd >/dev/null
}
