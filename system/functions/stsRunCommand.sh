function stsRunCommand() {
    local cmd="$1"
    local ext="${cmd##*.}"
    # echo "[Init] cmd=$cmd, ext=$ext"

    if [ "$cmd" = "$ext" ]; then
        # echo "ext equals cmd,   cmd=$cmd, ext=$ext"
        local closestScript=$(find "$STS_DIR/command" -type f -name "$cmd.sh" -print -quit)
        if [ -z "$closestScript" ]; then
            closestScript=$(find "$STS_DIR/command" -type f -name "$cmd.*" -print -quit)
        fi
        # echo "Closest script: $closestScript"
        if [ -n "$closestScript" ]; then
            # echo "Found closest script: $closestScript"
            shift
            stsRunCommand "$closestScript" "$@"
            return
        fi
    elif [ ! -f "$cmd" ]; then
        local closestScript=$(find "$STS_DIR/command" -type f -name "$cmd" | head -n 1)
        if [ -n "$closestScript" ]; then
            shift
            stsRunCommand "$closestScript" "$@"
            return
        fi
    fi
    # echo "[Step-1] cmd=$cmd, ext=$ext"
    # for extItem in sh js ts; do
    #     if [ -f "$STS_DIR/command/$cmd.$extItem" ]; then
    #         ext="$extItem"
    #         # echo "Found file with .$ext extension"
    #         # stsRun "$cmd.$extItem" "$param1" "$param2"
    #         shift
    #         # echo "RETURN params: cmd=$cmd, 1=$1, 2=$2, 3=$3, 4=$4, ext=$ext"
    #         stsRunCommand "$cmd.$extItem" "$@"
    #         return
    #     fi
    # done
    # echo "[Step-2] cmd=$cmd, ext=$ext"
    ext="${cmd##*.}"
    # local filePath="$STS_DIR/command/$cmd"
    # echo "[--- Pre-start ---] cmd=$cmd, ext=$ext"
    # echo "RUN params: cmd=$cmd, 1=$1, 2=$2, 3=$3, 4=$4, ext=$ext"
    # stsRunWithPermissions "$STS_DIR/command/$cmd"

    case "$ext" in
    "sh")
        # echo "!!source!! $filePath"
        shift
        source "$cmd" "$@"
        # "$filePath $2"
        ;;
    "js")
        # echo "!!node!! $filePath"
        node "$cmd"
        ;;
    "ts")
        # echo "!!ts-node!! $filePath"
        # $STS_DIR/node_modules/ts-node/dist/index.js "$filePath"
        ts-node "$cmd"
        ;;
    "cs")
        dotnet script "$cmd"
        ;;
    *)
        # echo "No file found with .sh, .js, .ts, or .cs extension"
        return 1
        ;;
    esac
}
