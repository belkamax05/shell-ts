#? Init
# Functions used below are declared here, this fine needs to be stand-alone sourced here before everything else does
source "$STS_DIR/system/functions/stsSource.sh"

#? Globals

stsSourceGlobal "alias.sh"
stsSourceGlobal "text-utils.sh"
stsSourceGlobal "nav-list.sh"

#? Functions
# Loads globally to simplify dev of other modules, every function here will become available for subsequent scripts
stsSourceFunction "stsRunCommand.sh"
stsSourceFunction "stsRunWithPermissions.sh"
stsSourceFunction "sts.sh"
stsSourceFunction "stsExtend.sh"
stsSourceFunction "stsExtendNav.sh"
stsSourceFunction "stsNav.sh"

#? Triggers
# Loads globally and covers all aspects of system-like commands, which need of special functionality to get triggered in advance

stsSourceTrigger "nav-autocomplete.sh"
stsSourceTrigger "nav-default-extensions.sh"
stsSourceTrigger "command-not-found-replace.sh"
