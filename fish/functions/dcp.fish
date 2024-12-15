function dcp --wraps=duckdb
    argparse h/help 'readopts=' -- $argv
    #echo "READOPTS: $readopts mmm $r ddd $_flag_r xxx $_flag_readopts"
    #echo "ARGV $argv"
    set -l dest (string replace -r ".\w+\$" ".parquet"  $argv[1])
    #echo dddest $dest dest
    if not test -z $argv[2]
        set dest $argv[2]
    end
    #set -l fish_trace 1
    set -l opts ""
    #echo dddest $dest dest
    if not test -z $argv[3]
        set opts \($argv[3]\)
    end
    set -l source $argv[1]
    if not string match -r "^\(" -- $argv[1]
        set source "'$source'"
    end
    #echo "sourcexxxxx $source"
    if test -n "$_flag_readopts"
        set source (read_duck (extension $argv[1]) "$argv[1]" "$_flag_readopts")

        #'read_'(extension $argv[1])'('$source','$readopts')'
    end
    #echo "SOURCE: $source =="
    set -l cmd "COPY $source TO '$dest' $opts ;"
    echo duckdb -c \" $cmd \" >&2
    duckdb -c $cmd
end
