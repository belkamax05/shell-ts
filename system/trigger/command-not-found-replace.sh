function command_not_found_handler {
    sts "$@"
    if [ $? -ne 0 ]; then
        sts-error "Command '${STS_C_YELLOW}$1${STS_C_RESET}' not found. Did you mean to run a different command?"
    fi
}
