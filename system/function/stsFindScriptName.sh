function stsFindScriptName() {
    local cmd="$1"
    local ext="${cmd##*.}"

    # echo "!!FindScriptName!! $cmd, ext=$ext"

    local dirsToSearch=("$STS_DIR/command/system" "$STS_DIR/command" "$PWD")

    for dir in "${dirsToSearch[@]}"; do
        local closestScript=$(find "$dir" -maxdepth 1 -type f -name "$cmd.sh" -print -quit)
        if [ -z "$closestScript" ]; then
            closestScript=$(find "$dir" -maxdepth 1 -type f -name "$cmd.*" -print -quit)
        fi
        if [ -z "$closestScript" ]; then
            closestScript=$(find "$dir" -maxdepth 1 -type f -name "$cmd" -print -quit)
        fi
        if [ -n "$closestScript" ]; then
            echo "$closestScript"
            return
        fi
    done

    echo "ERROR: No script found for $cmd"
}

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
