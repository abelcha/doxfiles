function dcp2 --wraps=duckdb
    set -l source $argv[1]
    if not string match -r "^\(" -- $argv[1]
        set source "'$source'"
    end
    set -l dest "output.parquet"
    if test -f $source
        #  set dest $argv[2]
        set -l dest (string replace -r ".\w+\$" ".parquet"  $argv[1])
    end
    #set -l dest (string replace -r ".\w+\$" ".parquet"  $argv[1])

    #set -l fish_trace 1
    #echo dddest $dest dest
    if not test -z $argv[3]
        set dest $argv[1]
        set opts \($argv[3]\)
    else if string match '\s' $argv[2]
        #its an option
        set opts \($arg[2]\)
    end
    #echo "sourcexxxxx $source"
    set -l cmd "COPY $source TO '$dest' $opts ;"
    echo duckdb -c $cmd
    duckdb -c $cmd
end
