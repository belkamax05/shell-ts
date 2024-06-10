function stsExtendNav {
    # echo "stsExtendNav params: $0, $1, $2, $3"
    local cmd="$1"
    local dir="$2"
    # echo "stsExtendNav params: cmd=$cmd, dir=$dir"
    nav_list[$cmd]="$dir"
}
