function stsDebug() {
    if [ $STS_DEBUG = true ]; then
        echo -e "${STS_DEBUG_PREFFIX} $1"
    fi
}


function stsError() {
    echo -e "${STS_ERROR_PREFFIX} $1"
}


function stsEcho() {
    echo -e "$STS_ECHO_PREFFIX $@"
}

alias sts-debug="stsDebug"
alias sts-error="stsError"
alias sts-echo="stsEcho"