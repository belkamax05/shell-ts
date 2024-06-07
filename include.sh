if [ "$STS_ZPROFILE_LOADED" != true ]; then
  echo "\033[33mError: STS_ZPROFILE_LOADED is not set\033[0m\n[TODO] include '${${(%):-%N}:A:h}/zprofile.sh' into your .zprofile."
  return 1
fi

# include this file into your .zshrc file
# source ~/dev/shell-ts/zshrc.sh
export PATH="$PATH:./node_modules/.bin"

# typeset -gx STS_DIR="${${(%):-%N}:A:h}"
source "$STS_DIR/system/include.sh"

# function sts-source {
#   source "$STS_DIR/$1"
# }
# alias sts-install="yarn --cwd $STS_DIR install"
# alias sts="yarn --cwd $STS_DIR --silent sts"
alias shell-ts="cd $STS_DIR"
# alias sts="node $STS_DIR/bin/sts.js"
# alias sts="$STS_DIR/scripts/sts.sh"

alias sts-cd="shell-ts"
alias sts-yarn="yarn --cwd $STS_DIR"
alias sts-dir="sts-run dir"
# alias sts-hello="sts-run hello"
alias sts-y-v="yarn --cwd $STS_DIR -v"

alias run="sts run"
alias nav="sts nav"

# alias sts-shutdown="shutdown.exe -s -t 0"

function sts-message {
  echo -e "\033[34m[STS]\033[0m $@"
}

# sts-source 'shell/validateModules.sh'
# sts-source 'shell/nav.sh'

#? Direct aliases to commands
alias hello="sts hello"

# source <(fzf --zsh)
# HISTFILE=~/.zsh_history
# HISTSIZE=10000
# SAVEHIST=10000
# setopt appendhistory
