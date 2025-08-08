function from --wraps=duckdb --wraps='rclone copy'
    #argparse --ignore-unknown --name=from a/attach -- $argv; or return
    set args (duckescape  $argv[2..])
    #echo $args >&2
    #set file (string split $argv[1])
    set table (§= $argv[1] |§ sqlite_master)
    set s3connstr (get_s3_duckdb_co $table)
    if not test -z "$s3connstr"
        set table (string replace -r "\w+:/?/?" "s3://" -- "$table")
    end
    set -l cmd "FROM '$table' $args"
    set --append dbname (§= $_flag_attach |§ $DD)
    #set nocli
    set dbname
    if string match -qr '(db|sqlite)' -- (path extension $DD)
        set acmd ".open '$DD'" #  from sqlite_master"
        if string match -r 6574.+6620 -- (hexdump -n10  -x $dbname )
            set --append nocli -init /dev/null
        end
        #set DUCK_DISPLAY 
    end
    #test -f "$_flag_attach" && set -l attached "-c \"attach '$_flag_attach'\""
    
    #echo duck -c \"( 
    #echo "$cmd" $DUCK_DISPLAY $DD | sqlfmt --line-length (colwidth) --quiet - | shiki --lang sql --theme github-dark --color always >/dev/stderr
    #-q --force-color --line-length (colwidth)
    #exit | shiki --lang sql --theme github-dark --color always >/dev/stderr
    #)\" >/dev/stderr
    #fset cmd acmd
    duck $DUCK_DISPLAY $nocli -c "$acmd" -c "$s3connstr $cmd"
end
