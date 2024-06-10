function stsFindScriptName() {
    local cmd="$1"
    local ext="${cmd##*.}"

    local dirsToSearch=("$STS_DIR/command/system" "$STS_DIR/command" "$PWD")

    for dir in "${dirsToSearch[@]}"; do
        local scr=$(find "$dir" -maxdepth 1 -type f -name "$cmd.sh" -print -quit)
        if [ -z "$scr" ]; then
            scr=$(find "$dir" -maxdepth 1 -type f -name "$cmd.*" -print -quit)
        fi
        if [ -z "$scr" ]; then
            scr=$(find "$dir" -maxdepth 1 -type f -name "$cmd" -print -quit)
        fi
        if [ -n "$scr" ]; then
            echo "$scr"
            return
        fi
    done

    echo "ERROR: No script found for $cmd"
}
