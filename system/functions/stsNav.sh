function stsNav() {
    local cmd=""
    local code_flag=0

    for arg in "$@"; do
        if [ "$arg" = "-c" ]; then
            code_flag=1
        elif [ -z "$cmd" ]; then
            cmd="$arg"
        fi
    done
    # echo "Nav s1 cmd=$cmd, code_flag=$code_flag"
    if [ -z "$cmd" ]; then
        if ((code_flag)); then
            code -r .
        fi
        return
    fi

    #? Filtering system commands
    # echo "Nav s2 cmd=$cmd, code_flag=$code_flag"
    if [ "$cmd" = "list" ]; then
        sts "system/nav/list.sh" "$@"
        return
    fi

    #? Processing

    local dir="${nav_list[$cmd]}"
    echo "Nav s3 cmd=$cmd, navDir=$dir"
    if [ -n "$dir" ]; then
        echo "Cding6... $dir"
        cd $dir
        # stsNav "$dir"
        if ((code_flag)); then
            echo "Rsing..."
            code -r .
        fi
    else
        echo "Unknown nav path $cmd"
    fi

}
