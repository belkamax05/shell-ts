function stsExtend {
    # echo "stsExtend params: $0, $1, $2, $3"
    if [ "$1" = "nav" ]; then
        shift
        stsExtendNav "$@"
    else
        echo "Unknown extend command $1"
    fi
}
