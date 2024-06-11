function stsRunScriptFile() {
    local cmd="$1"
    local ext="${cmd##*.}"

    local filePath=$(basename "$cmd" ."$ext")

    if [ ! -f "$cmd" ]; then
        return 1
    fi

    case "$ext" in
    "sh")
        source "$@"
        ;;
    "js")
        node "$@"
        ;;
    "ts")
        ts-node "$@"
        ;;
    "cs")
        dotnet script "$@"
        ;;
    "rs")
        echo "Running with $filePath"
        mkdir -p $STS_DIR/temp/rustc
        rustc "$@" -o "$STS_DIR/temp/rustc/$filePath"
        $STS_DIR/temp/rustc/$filePath
        ;;
    *)
        # echo "No file found with .sh, .js, .ts, or .cs extension"
        return 1
        ;;
    esac
}
