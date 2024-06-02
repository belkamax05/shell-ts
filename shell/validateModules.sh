function validateModules {
    if [[ ! -d $STS_DIR/node_modules ]]; then
        sts-source 'shell/installModules.sh'
        installModules
    fi
}
