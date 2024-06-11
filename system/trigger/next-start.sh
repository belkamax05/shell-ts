if [ -f "$STS_DIR/next_start.sh" ]; then
    source "$STS_DIR/next_start.sh"
    rm "$STS_DIR/next_start.sh"
fi
