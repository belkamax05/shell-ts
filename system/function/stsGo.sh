function stsGo() {
    $STS_DIR/bin/sts-go "$@"
}

function stsGoDev() {
    pushd $STS_DIR >/dev/null
    go run . "$@"
    popd >/dev/null
}
