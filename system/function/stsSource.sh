function stsSource() {
    local file="$1"
    local fullPath="$STS_DIR/$file"
    if [ -f "$fullPath" ]; then
        source "$fullPath"
    else
        echo "$STS_ERROR_PREFFIX[stsSource] File not found: $fullPath"
    fi
}

function stsSystem() {
    stsSource "system/$1"
}
