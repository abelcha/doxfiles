function from2 --wraps=duckdb --argument-names target
    argparse --ignore-unknown --name=from2 c/create q/quiet i/ignore s/sample u/union a/attach= t/to= -- $argv; or return
    #echo "lpoadkjqsdk,llfk,dlnjmqfqlsdkvmqlnsdvfnj,ldmn"
    set -l parms ""
    #echo "ignore_errors: $_flag_i"
    #echo "sample_size: $_flag_s"
    #echo "ARGV: $argv"
    #if test -
    set -l attached
    if test -n "$_flag_attach"
        set attached "$_flag_attach"
    end
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
    set table (string split '@' -f2 -- "$target")
    set file (string split '@' -f1 -- "$target")
    set exte (path extension -- "$file")
    #echo "exte: $exte"
    set fname read_csv
    #fset exte file table target >/dev/null 
    if string match -r 'db|sqlite' -- $exte
        #_.ducksource
        #string match -rg "(.+)\.(?<ext>\w+)(?:\W(?<table>\w+))" x--
        # set -l cmd "FROM $args[2]"
        #string match -rgq "(.+)\.(?<ext>$p_ext)(?<table>.*)" -- $ext
        
        #set table 
        
        duck $DUCK_DISPLAY $attached -c "FROM $(duckescape $args[2] |§ "'sqlite_master'") $(duckescape $args[3..]) " # $argv[3...]"
        return
    end
    if [ "$exte" = parquet ]
        set fname read_parquet
    else if string match -r json -- "$file"
        set fname read_json
    end
    #echo "fname: $fname"
    set args (duckescape  $argv[2..])
    
    set -l cmd "FROM $fname('$file' $fnargs ) $args"
    #if test -n $_flag_c
    #echo "flag: $_flag_t" >/dev/stderr
    #echo $cmd
    if test -n "$_flag_t"
        #to -> 
        set cmd "COPY ( $cmd ) TO '$_flag_t'"
        #return
    end
    #echo $cmde >/dev/stderr
    #set flagxxx (§ $_flag_q |§ "DUCK_QUIET=ON" )
    #set -S flagxxx
    set -q _flag_q; and set -gx DUCK_QUIET ON
    if set -q _flag_create
        return
    end
    duck $DUCK_DISPLAY $DD -c "$cmd"
end
