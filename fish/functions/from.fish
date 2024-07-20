function from --wraps=duckdb
    argparse --name=my_function h/help 'db=?' -- $argv
    or return
    #argparse 'db=' -- $argv
    #//or return
    #echo "CMDCMDMCDF |$_flag_db|"
    set args (echo $argv[2..] | tr   '][@‘“' ")(*'\"")
    echo $args >&2
    set -l cmd "FROM \"$argv[1]\" $args"
    #set -l output ""
    echo duck -c "$cmd" $DUCK_DISPLAY $DD >&2
    duck $DUCK_DISPLAY $DD -c "$cmd"
end
