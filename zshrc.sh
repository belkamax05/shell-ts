# include this file into your .zshrc file
# source ~/dev/shell-ts/zshrc.sh

typeset -gx STS_DIR="${${(%):-%N}:A:h}"

function sts-source {
    echo "$STS_DIR/$1"
  source "$STS_DIR/$1"
}

# alias sts-install="yarn --cwd $STS_DIR install"
alias sts-cd="cd $STS_DIR"
alias sts-yarn="yarn --cwd $STS_DIR"
alias sts-run="sts-yarn --silent"

alias sts-dir="sts-run dir"
alias sts-hello="sts-run hello"
alias sts-y-v="yarn --cwd $STS_DIR -v"

function sts-message {
  echo -e "\033[34m[STS]\033[0m $@"
}


sts-source 'shell/validateModules.sh'
validateModules