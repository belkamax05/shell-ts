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
        "go")
            shift
            stsGo "$@"
            ;;
        *)
            stsRunCommand "$@"
            ;;
        esac
    fi
}
