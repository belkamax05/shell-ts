#!/bin/bash

# Define the path to the shell-ts directory
SHELL_TS_PATH=~/dev/shell-ts

# Add the lines to the .zshrc file
echo "
SHELL_TS_PATH=$SHELL_TS_PATH
if [[ ! -d \$SHELL_TS_PATH ]]; then
    git clone git@github.com:belkamax05/shell-ts.git \$SHELL_TS_PATH
fi
source \$SHELL_TS_PATH/zshrc.sh
" >>~/.zshrc

# Source the .zshrc file to apply the changes
source ~/.zshrc
