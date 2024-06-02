# include this file into your .zshrc file
# source ~/dev/shell-ts/zshrc.sh
typeset -gx STS_DIR="${${(%):-%N}:A:h}"

alias sts-install="yarn --cwd $STS_DIR install"
alias sts-cd="cd $STS_DIR"
alias sts-yarn="yarn --cwd $STS_DIR"
alias sts-run="sts-yarn --silent"

alias sts-dir="sts-run dir"
alias sts-hello="sts-run hello"
alias sts-y-v="yarn --cwd $STS_DIR -v"
