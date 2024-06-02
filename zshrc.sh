# include this file into your .zshrc file
# source ~/dev/shell-ts/zshrc.sh
typeset -gx SHELLTSDIR="${${(%):-%N}:A:h}"

# alias hello="echo 'Hello World!' not implemented yet"
alias shell-ts="echo 'shell-ts v0.0.1'"
alias shell-ts-path="echo $PWD"
alias hello="yarn --cwd $SHELLTSDIR hello"
alias version="yarn --cwd $SHELLTSDIR -v"
