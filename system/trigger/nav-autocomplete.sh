function _nav {
  local -a nav_suggestions=()
  for key in "${(k)nav_list[@]}"; do
    nav_suggestions+=($key)
  done
  compadd -- ${nav_suggestions}
}
compdef _nav sts nav

