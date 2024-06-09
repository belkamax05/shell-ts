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
        echo "List to be runned"
        sts system/nav/list "$@"
        return
    fi

    #? Processing

    local dir="${nav_list[$cmd]}"
    # echo "Nav s3 cmd=$cmd, dir=$dir"
    if [ -n "$dir" ]; then
        # echo "Cding dir... $dir"
        cd $dir
        if ((code_flag)); then
            code -r .
        fi
        cd $dir
    else
        # echo "Cding cmd... $cmd"
        cd $cmd
        if ((code_flag)); then
            code -r .
        fi
        cd $cmd
    fi

}
