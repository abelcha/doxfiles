function duck --wraps=duckdb
    if not isatty 1
        set output -csv
    end
    set commandflag ""
    set --query DD_INTERACTIVE; and set commandflag md
    set --query DD_OUT; and set output "$DD_OUT"
    #set --query DUCK_QUIET; or echo -- duckdb $output -c \" (echo $argv[-1] | chroma -l postgresql --style vulcan --unbuffered ) \" >/dev/stderr
    set --query DUCK_QUIET; or begin
        for i in $argv
            if equals "$prev" -c
                echo2 -n $i | chroma -l postgresql --style vulcan --unbuffered
            else
                echo2 -n $i
            end
            set -f prev $i
        end
        echo2 "============"
    end
    #fset argv output
    set -q DUCK_VERBOSE; and echo duckdb $output -c $argv
    #set -S output argv
    #echo duckdb $output $argv
    #duckdb -init "" $output $argv
    duckdb -init "" $output $argv
end
