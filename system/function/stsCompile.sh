function stsCompile() {
    rm -rf "$STS_DIR/shell-ts"
    go build -o "$STS_DIR/shell-ts" "$STS_DIR/src/main.go"
    if [ $? -eq 0 ]; then
        echo "Compiled successfully"
    else
        echo "Failed to compile"
    fi
}
