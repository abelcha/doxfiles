function duck2 --wraps=duckdb
    argparse -i debug 'c/copy=' 'l/limit=' 'o/output=' 'format=' 'p/partition=' 'compression=' 'extension=' 'pattern=' -- $argv; or return
    if set -q _flag_debug
        set -S argv
        echo "============"
        set -S _flag_output
        echo "============="
        set -S _flag_copy
        echo "============"
    end
    set --path arropts
    #echo "buffer: $(commandline -b )"
    if not isatty 1
        test -z "$_flag_output"; and set _flag_output csv
        test -z "$_flag_limit"; and set _flag_limit 10000
        #test "$_flag_limit" -gt 0; and set --erase _flag_limit
    end
    if [ "$_flag_limit" = 0 ]
        echo2 seterraaaase
        set --erase _flag_limit
    end
    set outputflag (§ $_flag_output |§= "-$_flag_output" )
    set dcmd (§ $_flag_limit |§= "$argv LIMIT $_flag_limit"|§ "$argv")
    
    set dcmd (§ $_flag_copy |§= "COPY ( $dcmd) TO $_flag_copy" |§ $dcmd)
    if not test -z "$_flag_format"
        set --append arropts "FORMAT $_flag_format"
    end
    if not test -z "$_flag_extension"
        set --append arropts "FILE_EXTENSION $_flag_extension"
    end
    if not test -z "$_flag_pattern"
        set --append arropts "FILENAME_PATTERN $_flag_pattern"
    end
    
    if not test -z "$_flag_compression"
        set --append arropts "compression $_flag_compression"
    end
    if not test -z "$_flag_partition"
        #set spl (string split ' ' $_flag_partition)
        #set partopts (string join ' ' $spl[2..] |§ OVERWRITE_OR_IGNORE)
        #set -S partopts
        set --append arropts "PARTITION_BY ( $_flag_partition ), OVERWRITE_OR_IGNORE"
    end
    
    #set -S arropts
    if not test -z "$arropts[1]"
        set cparams (string join ','  $arropts)
        set dcmd "$dcmd ( $cparams )"
    end
    echo2 -- duckdb $output -c \" (echo $dcmd | sqlformat - -k upper -i lower | chroma -l postgresql --style vulcan --unbuffered ) \"
    #echo duckdb $output -c \"$argv[-1]\" >/dev/stderr
    #set -q DUCK_VERBOSE; and echo duckdb $output -c $argv
    #echo duckdb $output $argv
    if not isatty 0
        duckdb $argv $outputflag
        return
    end
    duckdb $outputflag -c " $dcmd "
    
end
