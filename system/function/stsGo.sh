function stsGo() {
    pushd $STS_DIR >/dev/null
    $STS_DIR/shell-ts "$@"
    popd >/dev/null
}

function stsGoDev() {
    pushd $STS_DIR >/dev/null
    go run . "$@"
    popd >/dev/null
}
