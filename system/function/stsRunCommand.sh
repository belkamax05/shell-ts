function stsRunCommand() {
    local cmd="$1"
    local ext="${cmd##*.}"

    local filePath=$(stsFindScriptName "$cmd")
    # echo "Running $cmd => $filePath"

    if [ ! -f "$filePath" ]; then
        # echo "File not found: $filePath,,, $@"
        # return 1
        sts go "$@"
        return
    fi
    shift
    stsRunScriptFile "$filePath" "$@"
}
