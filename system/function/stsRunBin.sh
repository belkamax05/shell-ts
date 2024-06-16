function stsRunBin() {
    case "$1" in
    "fzf")
        stsSystem "modules/install-fzf.sh"
        "$@"
        ;;
    "mvn")
        stsSystem "modules/install-mvn.sh"
        "$@"
        ;;
    "nvm")
        stsSystem "modules/install-nvm.sh"
        "$@"
        ;;
    "ts-node")
        stsSystem "modules/install-ts-node.sh"
        "$@"
        ;;
    "lsd")
        stsSystem "modules/install-lsd.sh"
        "$@"
        ;;
    *)
        ;;
    esac
}
