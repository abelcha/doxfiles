function from2 --wraps=duckdb --argument file
    argparse --ignore-unknown --name=from2 c/create i/ignore s/sample u/union t/to= -- $argv; or return
    #echo "lpoadkjqsdk,llfk,dlnjmqfqlsdkvmqlnsdvfnj,ldmn"
    set -l parms ""
    #echo "ignore_errors: $_flag_i"
    #echo "sample_size: $_flag_s"
    #echo "ARGV: $argv"
    #if test -e
    if test -n "$_flag_i"
        set --append parms "ignore_errors=true"
    end
    if test -n "$_flag_s"
        set --append parms "sample_size=-1"
    end
    if test -n "$_flag_u"
        set --append parms "union_by_name=true"
    end
    set -l fnargs (string join , $parms)
    #echo "fnargs: $fnargs"

    set exte (extension $file)
    #echo "exte: $exte"
    set fname read_csv
    if string match -r 'db|sqlite' -- $exte
        # set -l cmd "FROM $args[2]"
        duck $DUCK_DISPLAY $file -c "FROM $(duckescape $args[2] |§ "'sqlite_master'")" # $argv[3...]"
        return
    end
    if [ "$exte" = parquet ]
        set fname read_parquet
    else if string match -r json -- $file
        set fname read_json
    end
    #echo "fname: $fname"
    set args (duckescape  $argv[2..])

    set -l cmd "FROM $fname('$file' $fnargs ) $args[2..]"
    #if test -n $_flag_c
    echo "flag: $_flag_t" >/dev/stderr
    #echo $cmd
    if test -n "$_flag_t"
        #to -> 
        set cmd "COPY ( $cmd ) TO '$_flag_t'"
        #return
    end
    echo $cmd >/dev/stderr
    set -q _flag_create; or duck $DUCK_DISPLAY $DD -c "$cmd"
end
