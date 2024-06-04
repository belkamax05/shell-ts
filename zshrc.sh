# include this file into your .zshrc file
# source ~/dev/shell-ts/zshrc.sh

typeset -gx STS_DIR="${${(%):-%N}:A:h}"


function sts-source {
  source "$STS_DIR/$1"
}
# alias sts-install="yarn --cwd $STS_DIR install"
# alias sts="yarn --cwd $STS_DIR --silent sts"
alias shell-ts="cd $STS_DIR"
# alias sts="node $STS_DIR/bin/sts.js"
alias sts="$STS_DIR/scripts/sts.sh"

alias sts-cd="shell-ts"
alias sts-yarn="yarn --cwd $STS_DIR"
alias sts-run="sts-yarn --silent"

alias sts-dir="sts-run dir"
# alias sts-hello="sts-run hello"
alias hello="sts hello"
alias sts-y-v="yarn --cwd $STS_DIR -v"
# alias sts-shutdown="shutdown.exe -s -t 0"

function sts-message {
  echo -e "\033[34m[STS]\033[0m $@"
}

sts-source 'shell/validateModules.sh'
sts-source 'shell/nav.sh'
