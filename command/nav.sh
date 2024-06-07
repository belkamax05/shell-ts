local cmd=""
local code_flag=0
for arg in "$@"; do
  if [ "$arg" = "-c" ]; then
    code_flag=1
  elif [ -z "$cmd" ]; then
    cmd="$arg"
  fi
done
if [ -z "$cmd" ]; then
  if (( code_flag )); then
    code -r .
  fi
  return
fi
if [ "$cmd" = "list" ]; then
  for key in "${(k)nav_list[@]}"; do
    echo "$key: ${nav_list[$key]}"
  done
  return
fi
echo "41: cmd=$cmd"
echo "42: $nav_list['dfs-fe']"
local dir="${nav_list[$cmd]}"
if [ -n "$dir" ]; then
  cd "$dir"
  if (( code_flag )); then
    code -r .
  fi
else
  echo "Unknown nav path $cmd"
fi