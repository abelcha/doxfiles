complete -c db-to-sqlite -n __fish_no_arguments -l version -d 'Show the version and exit.'
complete -c db-to-sqlite -l all -d 'Detect and copy all tables'
complete -c db-to-sqlite -l table -d 'TEXT                  Specific tables to copy'
complete -c db-to-sqlite -l skip -d 'TEXT                   When using --all skip these tables'
complete -c db-to-sqlite -l redact -d 'TEXT...              (table, column) pairs to redact with ***'
complete -c db-to-sqlite -l sql -d 'TEXT                    Optional SQL query to run'
complete -c db-to-sqlite -l output -d 'TEXT                 Table in which to save --sql query results'
complete -c db-to-sqlite -l pk -d 'TEXT                     Optional column to use as a primary key'
complete -c db-to-sqlite -l index-fks -d '/ --no-index-fks  Should foreign keys have indexes? Default on'
complete -c db-to-sqlite -s p -l progress -d 'Show progress bar'
complete -c db-to-sqlite -l postgres-schema -d 'TEXT        PostgreSQL schema to use'
complete -c db-to-sqlite -l help -d 'Show this message and exit.'