function from --wraps=duckdb
    set args (duckescape  $argv[2..])
    #echo $args >&2
    set -l cmd "FROM '$argv[1]' $args"
    #echo duck -c \"( 
    #echo "$cmd" $DUCK_DISPLAY $DD | sqlfmt --line-length (colwidth) --quiet - | shiki --lang sql --theme github-dark --color always >/dev/stderr
    #-q --force-color --line-length (colwidth)
    #exit | shiki --lang sql --theme github-dark --color always >/dev/stderr
    #)\" >/dev/stderr
    duck $DUCK_DISPLAY $DD -c "$cmd"
end
