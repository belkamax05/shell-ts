function stsRunCommand() {
    local cmd="$1"
    local ext="${cmd##*.}"

    local filePath=$(stsFindScriptName "$cmd")
    echo "!!filePath: $cmd => $filePath"

    # echo "[Init] cmd=$cmd, ext=$ext"

    # if [ "$cmd" = "$ext" ]; then
    #     # echo "ext equals cmd,   cmd=$cmd, ext=$ext"
    #     local closestScript=$(find "$STS_DIR/command" -type f -name "$cmd.sh" -print -quit)
    #     if [ -z "$closestScript" ]; then
    #         closestScript=$(find "$STS_DIR/command" -type f -name "$cmd.*" -print -quit)
    #     fi
    #     # echo "Closest script: $closestScript"
    #     if [ -n "$closestScript" ]; then
    #         # echo "Found closest script: $closestScript"
    #         shift
    #         stsRunCommand "$closestScript" "$@"
    #         return
    #     fi
    # fi

    # if [ ! -f "$cmd" ]; then
    #     local closestScript=$(find "$STS_DIR/command" -type f -name "$cmd" | head -n 1)
    #     if [ -n "$closestScript" ]; then
    #         echo "Runs from closest script: $closestScript"
    #         shift
    #         stsRunCommand "$closestScript" "$@"
    #         return
    #     else
    #         echo "No closest script found for $cmd"
    #         return 1
    #     fi
    # fi

    shift
    stsRunScriptFile "$filePath" "$@"
}
