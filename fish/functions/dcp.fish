function dcp --wraps=duckdb
    set -l dest (string replace -r ".\w+\$" ".parquet"  $argv[1])
    #echo dddest $dest dest

    if not test -z $argv[2]
        set dest $argv[2]
    end
    duckdb -c "COPY '$argv[1]' TO '$dest';"
end
