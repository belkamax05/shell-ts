if [[ ! -f "$STS_USER_CONFIG_DIR/user-config.sh" ]]; then
    mkdir -p "$STS_USER_CONFIG_DIR"
    cp "$STS_DIR/system/user-config.default.sh" "$STS_USER_CONFIG_DIR/user-config.sh"
fi
source "$STS_USER_CONFIG_DIR/user-config.sh"
