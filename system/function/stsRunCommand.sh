function stsRunCommand() {
    local cmd="$1"
    local ext="${cmd##*.}"

    local filePath=$(stsFindScriptName "$cmd")

    shift
    stsRunScriptFile "$filePath" "$@"
}
