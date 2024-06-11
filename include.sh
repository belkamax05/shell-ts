export PATH="$PATH:./node_modules/.bin"

typeset -gx STS_DIR="${${(%):-%N}:A:h}"
source "$STS_DIR/system/include.sh"

alias sts-yarn="yarn --cwd $STS_DIR"
alias sts-y-v="yarn --cwd $STS_DIR -v"
