function sts() {
    # echo "sts called"
    if [ $# -eq 0 ]; then
        sts hello
    else
        local cmd="$1"
        case "$cmd" in
        #? Go modules
        "compile")
            stsCompile "$@"
            ;;
        "go")
            shift
            stsGo "$@"
            ;;
        "go-dev")
            shift
            stsGoDev "$@"
            ;;
        "print")
            sts go "$@"
            ;;
        "print2")
            sts go "$@"
            ;;
        #! End go modules
        "run")
            shift
            stsRunCommand "$@"
            ;;
        "nav")
            shift
            stsNav "$@"
            ;;
        "extend")
            shift
            stsExtend "$@"
            ;;
        "set-config")
            shift
            stsWriteConfig "$@"
            ;;
        *)
            stsRunCommand "$@"
            ;;
        esac
    fi
}
