function stsSource() {
    local file="$1"
    local fullPath="$STS_DIR/$file"
    if [ -f "$fullPath" ]; then
        source "$fullPath"
    else
        echo "File not found: $fullPath"
    fi
}

function stsSourceSystem() {
    stsSource "system/$1"
}

function stsSourceFunction() {
    stsSource "system/functions/$1"
}

function stsSourceGlobal() {
    stsSource "system/globals/$1"
}

function stsSourceTrigger() {
    stsSource "system/triggers/$1"
}
