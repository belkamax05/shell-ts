# typeset -gA nav_list

# function sts-extend-nav {
#   local cmd="$1"
#   local dir="$2"
#   nav_list[$cmd]="$dir"
# }

# function sts-extend {
#   if [ "$1" = "nav" ]; then
#     sts-extend-nav "$2" "$3"
#   fi
# }

# function nav {
#   local cmd=""
#   local code_flag=0

#   for arg in "$@"; do
#     if [ "$arg" = "-c" ]; then
#       code_flag=1
#     elif [ -z "$cmd" ]; then
#       cmd="$arg"
#     fi
#   done

#   if [ -z "$cmd" ]; then
#     if (( code_flag )); then
#       code -r .
#     fi
#     return
#   fi

#   if [ "$cmd" = "list" ]; then
#     for key in "${(k)nav_list[@]}"; do
#       echo "$key: ${nav_list[$key]}"
#     done
#     return
#   fi

#   local dir="${nav_list[$cmd]}"

#   if [ -n "$dir" ]; then
#     cd "$dir"
#     if (( code_flag )); then
#       code -r .
#     fi
#   else
#     echo "Unknown nav path $cmd"
#   fi
# }

# #? Defaults
# sts-extend nav root /
# sts-extend nav user ~
# sts-extend nav sts $STS_DIR
# sts-extend nav up ..

# alias n="nav"

# function _nav {
#   local -a nav_suggestions=()
#   for key in "${(k)nav_list[@]}"; do
#     nav_suggestions+=($key)
#   done
#   compadd -- ${nav_suggestions}
# }
# compdef _nav nav
