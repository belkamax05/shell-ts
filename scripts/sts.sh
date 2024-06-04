if [ $# -eq 0 ]; then
    $STS_DIR/scripts/sts-home.sh
else
    $STS_DIR/scripts/sts-run.sh "$@"
fi
