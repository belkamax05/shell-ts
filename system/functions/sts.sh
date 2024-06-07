function sts() {
    # echo "sts called"
    if [ $# -eq 0 ]; then
        sts hello
    else
        if [ "$1" = "run" ]; then
            shift
        fi
        stsRunCommand "$@"
    fi
}
