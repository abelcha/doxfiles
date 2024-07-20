function dcpx --wraps=duckdb
    #    set -l dest (string replace -r ".\w+\$" ".parquet"  $argv[1])

    set tmpfile (gmktemp --suffix=.csv)
    set read_fn $argv[1]
    set read_file $argv[2]
    set read_options $argv[3]
    echo $args >&2
    set -l cmd "COPY (SELECT * FROM $read_fn('$read_file', $read_options)) TO '$tmpfile'"
    echo $cmd >&2

    duckdb -c "$cmd" -csv >&2 && echo $tmpfile
    # duck $DUCK_DISPLAY $DD -c "$cmd"
end
