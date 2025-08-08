function duck --wraps=duckdb
    if not isatty 1
        set output -csv
    end
    set commandflag ""
    set --query DD_INTERACTIVE; and set commandflag md
    set --query DD_OUT; and set output "$DD_OUT"
    set --query DUCK_QUIET; or echo -- duckdb $output -c \" (echo $argv[-1] | sqlformat - -k upper -i lower | chroma -l postgresql --style vulcan --unbuffered ) \" >/dev/stderr
    
    set -q DUCK_VERBOSE; and echo duckdb $output -c $argv
    #echo duckdb $output $argv
    duckdb -init "" $output $argv
    
end
