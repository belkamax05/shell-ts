# if [ "$STS_ZPROFILE_LOADED" != true ]; then
#   echo "\033[33mError: STS_ZPROFILE_LOADED is not set\033[0m\n[TODO] include '${${(%):-%N}:A:h}/zprofile.sh' into your .zprofile."
#   return 1
# fi
source "$STS_DIR/system/zprofile.sh"

export PATH="$PATH:./node_modules/.bin"

# typeset -gx STS_DIR="${${(%):-%N}:A:h}"
source "$STS_DIR/system/include.sh"

alias sts-yarn="yarn --cwd $STS_DIR"
alias sts-y-v="yarn --cwd $STS_DIR -v"

# sts-source 'shell/validateModules.sh'
# sts-source 'shell/nav.sh'

# source <(fzf --zsh)
# HISTFILE=~/.zsh_history
# HISTSIZE=10000
# SAVEHIST=10000
# setopt appendhistory
