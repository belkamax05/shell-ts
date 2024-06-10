function stsRunWithPermissions() {
    echo "stsRunWithPermissions called"
    local cmd="$1"
    chmod +x "$cmd"
    "$cmd"
}
