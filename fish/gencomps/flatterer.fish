complete -c flatterer -l web -d 'Load web based version'
complete -c flatterer -l csv -d '/ --nocsv             Output CSV files, default true'
complete -c flatterer -l xlsx -d '/ --noxlsx           Output XLSX file, default false'
complete -c flatterer -l sqlite -d '/ --nosqlite       Output sqlite.db file, default false'
complete -c flatterer -l parquet -d '/ --noparquet     Output directory of parquet files, default false'
complete -c flatterer -l postgres -d 'TEXT             Connection string to postgres. If supplied will'
complete -c flatterer -l sqlite-path -d 'TEXT          Output sqlite file to this file'
complete -c flatterer -s d -l pushdown -d 'TEXT         Object keys and values, with this key name, will'
complete -c flatterer -s n -l no-link -d 'Do not create `_link` fields'
complete -c flatterer -s m -l main-table-name -d 'TEXT  Name of main table, defaults to name of the file'
complete -c flatterer -s p -l path -d 'TEXT             Key name of where json array starts, default top'
complete -c flatterer -s j -l ndjson -d 'Is file a new line delemited JSON file, default'
complete -c flatterer -l json-stream -d 'File contains stream of json object, default'
complete -c flatterer -l force -d 'Delete output directory if it exists, then run'
complete -f -c flatterer -n __fish_use_subcommand -a -f -d '--fields TEXT           fields.csv file to use'
complete -f -c flatterer -n __fish_use_subcommand -a -o -d '--only-fields           Only output fields in fields.csv file'
complete -f -c flatterer -n __fish_use_subcommand -a -b -d '--tables TEXT           tables.csv file to use'
complete -f -c flatterer -n __fish_use_subcommand -a -l -d '--only-tables           Only output tables in tables.csv file'
complete -f -c flatterer -n __fish_use_subcommand -a -i -d '--inline-one-to-one     If array only has single item for all objects'
complete -f -c flatterer -n __fish_use_subcommand -a treat -d 'as one-to-one'
complete -f -c flatterer -n __fish_use_subcommand -a -y -d '--arrays-new-table      Always treat arrays as new tables, even when'
complete -f -c flatterer -n __fish_use_subcommand -a they -d 'contain items that are not objects'
complete -f -c flatterer -n __fish_use_subcommand -a -s -d '--schema TEXT           JSONSchema file or URL to determine field order'
complete -f -c flatterer -n __fish_use_subcommand -a -t -d '--table-prefix TEXT     Prefix to add to all table names'
complete -f -c flatterer -n __fish_use_subcommand -a -a -d '--path-separator TEXT   Seperator to denote new path within the input'
complete -c flatterer -s h -l schema-titles -d 'TEXT    Use titles from JSONSchema in the given way.'
complete -c flatterer -s w -l preview -d 'INTEGER       Only output this `preview` amount of lines in'
complete -c flatterer -l threads -d 'INTEGER           Number of threads, default 1, 0 means use number'
complete -c flatterer -l json-path -d 'TEXT            JSON path within each object to use to filter'
complete -c flatterer -l postgres-schema -d 'TEXT      When loading to postgres, put all tables into'
complete -c flatterer -l evolve -d 'When loading to postgres or sqlite, evolve'
complete -c flatterer -l drop -d 'When loading to postgres or sqlite, drop table'
complete -c flatterer -l id-prefix -d 'TEXT            Prefix for all `_link` id fields'
complete -c flatterer -l stats -d 'Produce stats about the data in the'
complete -c flatterer -l help -d 'Show this message and exit.'