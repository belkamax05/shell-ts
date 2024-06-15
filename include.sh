export PATH="$STS_DIR/bin:$PATH"
export PATH="$PATH:./node_modules/.bin"

typeset -gx STS_DIR="${${(%):-%N}:A:h}"
source "$STS_DIR/system/include.sh"

stsSource "shell-ts.autocomplete.sh"