#? Init
# Functions used below are declared here, this fine needs to be stand-alone sourced here before everything else does
source "$STS_DIR/system/function/stsSource.sh"

stsSystem "startup/load.sh"

#? Globals

stsSystem "global/alias.sh"
stsSystem "global/text-utils.sh"
stsSystem "global/lists.sh"

#? Functions
# Loads globally to simplify dev of other modules, every function here will become available for subsequent scripts
stsSystem "function/stsEcho.sh"
stsSystem "function/sts.sh"
stsSystem "function/stsRunScriptFile.sh"
stsSystem "function/stsFindScriptName.sh"
stsSystem "function/stsRunCommand.sh"
stsSystem "function/stsRunWithPermissions.sh"
stsSystem "function/stsExtend.sh"
stsSystem "function/stsExtendNav.sh"
stsSystem "function/stsNav.sh"
stsSystem "function/stsCloneSource.sh"
stsSystem "function/stsGo.sh"
stsSystem "function/stsCompile.sh"
stsSystem "function/stsWriteConfig.sh"
stsSystem "function/stsLoadConfig.sh"

#? Triggers
# Loads globally and covers all aspects of system-like commands, which need of special functionality to get triggered in advance

stsSystem "trigger/nav-autocomplete.sh"
stsSystem "trigger/nav-default-extensions.sh"
stsSystem "trigger/command-not-found-replace.sh"
stsSystem "trigger/compile-go.sh"
stsSystem "trigger/next-start.sh"
