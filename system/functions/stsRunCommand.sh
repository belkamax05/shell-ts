function stsRunCommand() {
    local cmd="$1"
    # echo "cmd=$cmd, 2=$2, 3=$3"
    local ext="${cmd##*.}"
    # echo "[Init] cmd=$cmd, ext=$ext"

    if [ "$cmd"=="$ext" ]; then
        ext=""
    fi
    # echo "[Step-1] cmd=$cmd, ext=$ext"
    for extItem in sh js ts; do
        if [ -f "$STS_DIR/command/$cmd.$extItem" ]; then
            ext="$extItem"
            # echo "Found file with .$ext extension"
            # stsRun "$cmd.$extItem" "$param1" "$param2"
            shift
            # echo "RETURN params: cmd=$cmd, 1=$1, 2=$2, 3=$3, 4=$4, ext=$ext"
            stsRunCommand "$cmd.$extItem" "$@"
            return
        fi
    done
    # echo "[Step-2] cmd=$cmd, ext=$ext"
    ext="${cmd##*.}"
    local filePath="$STS_DIR/command/$cmd"
    # echo "[--- Pre-start ---] cmd=$cmd, ext=$ext, filePath=$filePath"
    # echo "RUN params: cmd=$cmd, 1=$1, 2=$2, 3=$3, 4=$4, ext=$ext"

    # stsRunWithPermissions "$STS_DIR/command/$cmd"

    case "$ext" in
    "sh")
        # echo "!!source!! $filePath"
        shift
        source "$filePath" "$@"
        # "$filePath $2"
        ;;
    "js")
        # echo "!!node!! $filePath"
        node "$filePath"
        ;;
    "ts")
        # echo "!!ts-node!! $filePath"
        # $STS_DIR/node_modules/ts-node/dist/index.js "$filePath"
        ts-node "$filePath"
        ;;
    "cs")
        dotnet script "$filePath"
        ;;
    *)
        echo "No file found with .sh, .js, .ts, or .cs extension"
        ;;
    esac

    # if [ "$ext" == "sh" ]; then
    #     echo "!!sourcex!! $filePath"
    #     source "$filePath"
    # elif [ "$ext" == "js" ]; then
    #     echo "!!node!! $filePath"
    #     node "$filePath"
    # elif [ "$ext" == "ts" ]; then
    #     echo "!!ts-node!! $filePath"
    #     ts-node "$filePath"
    # else
    #     echo "No file found with .sh, .js, or .ts extension"
    # fi

    # echo "sts-run cmd=$cmd, param1=$param1, param2=$param2, ext=$ext"
}
