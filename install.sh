SHELL_TS_PATH=${SHELL_TS_PATH:-~/shell-ts}

if ! grep -q "SHELL_TS_PATH=" ~/.zshrc; then
    echo "
SHELL_TS_PATH=$SHELL_TS_PATH
if [[ ! -d \$SHELL_TS_PATH ]]; then
    git clone git@github.com:belkamax05/shell-ts.git \$SHELL_TS_PATH
fi
source \$SHELL_TS_PATH/include.sh
" >>"$ZDOTDIR/.zshrc"
fi

source "$ZDOTDIR/.zshrc"
