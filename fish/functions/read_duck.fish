function read_duck --argument ext file options
    # echo $argv[3..] Lll
    #    set -l dest (string replace -r ".\w+\$" ".parquet"  $argv[1])
    #set -l tmpfile (gmktemp --suffix=.$ext)
    set -l read_fn 'read_'$ext
    set -l read_file $argv[2]
    set -l options "'$read_file'" $argv[3..]
    #echo "options $options << "
    set -l read_options (string join , $options)
    #echo "readopts $read_options <<"
    #echo $args >&2
    #set -l cmd "COPY (SELECT * FROM $read_fn($read_options)) TO '$tmpfile'"   
    set -l cmd "(SELECT * FROM $read_fn($read_options))"
    echo $cmd

    #duckdb -c "$cmd" -csv >&2 && echo $tmpfile
    # duck $DUCK_DISPLAY $DD -c "$cmd"
end
