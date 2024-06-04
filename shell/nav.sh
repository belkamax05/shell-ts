typeset -gA nav_list


function sts-extend-nav {
  local cmd="$1"
  local dir="$2"
  nav_list[$cmd]="$dir"
}

function sts-extend {
  if [ "$1" = "nav" ]; then
    sts-extend-nav "$2" "$3"
  fi
}

function nav {
  local cmd=$1

  if [ "$cmd" = "" ]; then
    _nav
    return
  fi

  if [ "$cmd" = "list" ]; then
    for key in "${(k)nav_list[@]}"; do
      echo "$key: ${nav_list[$key]}"
    done
    return
  fi

  local dir="${nav_list[$cmd]}"

  if [ -n "$dir" ]; then
    cd "$dir"
  else
    echo "Unknown nav path $cmd"
  fi
}

#? Defaults
sts-extend nav root /
sts-extend nav user ~
sts-extend nav sts $STS_DIR
sts-extend nav up ..

function _nav {
  local -a nav_suggestions=()
  for key in "${(k)nav_list[@]}"; do
    nav_suggestions+=($key)
  done
  compadd -- ${nav_suggestions}
}
compdef _nav nav
