complete -c polars -s c -d '<COMMAND>          Execute "COMMAND" and exit'
complete -c polars -s o -d '<OUTPUT_MODE>' -x -a 'csv json parquet arrow table markdown'
complete -c polars -s h -l help -d 'Print help'
complete -c polars -n __fish_no_arguments -s V -l version -d 'Print version'
