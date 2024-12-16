function copy --wraps=/opt/d/abel/dkp.ts --wraps=duckdb
    #set args (duckescape $argv)
    echo $args >&2
    test -e "$argv[1]"; and set argv[1 ] "'$argv[1]'"

    set -l cmd "COPY "(duckescape $argv)
    echo duck -c "\"$cmd\"" $DUCK_DISPLAY $DD >&2
    duck $DUCK_DISPLAY $DD -c "$cmd"
end
