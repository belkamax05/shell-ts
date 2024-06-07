function sts() {
    # echo "sts called"
    if [ $# -eq 0 ]; then
        $STS_DIR/scripts/sts-home.sh
    else
        if [ "$1" = "run" ]; then
            shift
        fi
        stsRunCommand "$@"
    fi

}
