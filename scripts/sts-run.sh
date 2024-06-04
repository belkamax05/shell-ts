function stsRun {
    local cmd="$1"
    local param1="$2"
    local param2="$3"
    local ext="${cmd##*.}"
    if [ "$cmd" == "$ext" ]; then
        ext=""
    fi

    if [ "$ext" == "sh" ]; then
        $STS_DIR/command/$cmd
    elif [ "$ext" == "js" ]; then
        echo "Js ext"
    elif [ "$ext" == "ts" ]; then
        echo "Ts ext"
    else
        echo "TODO need to search for ext from files list"
    fi

    echo "sts-run cmd=$cmd, param1=$param1, param2=$param2, ext=$ext"
}

stsRun "$@"
