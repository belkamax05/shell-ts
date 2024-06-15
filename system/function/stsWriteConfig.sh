function stsWriteConfig() {

    # Name of the database
    DB_NAME="$HOME/.sts-config.db"

    # Create the database
    sqlite3 $DB_NAME <<EOF
CREATE TABLE users(
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE
);
EOF

    echo "Database and table created."

    # sts-echo "Params are: $@"
    # echo "$@" >>$HOME/.sts-config
    stsLoadConfig
}

# set-config Hi=red
