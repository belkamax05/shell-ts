function stsRunCommand() {
    local cmd="$1"
    local ext="${cmd##*.}"

    local filePath=$(stsFindScriptName "$cmd")
    # echo "Running $cmd => $filePath"

    shift
    stsRunScriptFile "$filePath" "$@"
}
