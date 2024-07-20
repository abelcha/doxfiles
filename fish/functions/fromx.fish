function fromx
    # argparse --name=my_function h/help 'dbc=?' -- $argv
    # argparse --name=my_function h/help 'db=?' -- $argv
    # or return
    #argparse 'db=' -- $argv
    #//or return
    # echo "CMDCMDMCDF |$_flag_db|"
    set args (echo $argv[2..] | tr   '][@‘“' ")(*'\"")
    echo $args >&2
    #set table $argv[1]
    set -l spl (string split ":" $argv[1])
    if not test -z $spl[2]
        set file $spl[1]
        set table $spl[2]
    else
        set table $spl[2]
    end

    set -l cmd "FROM \"$table\" $arg "
    #set -l output ""
    echo duck $file -c "$cmd" $DUCK_DISPLAY $DD >&2
    duck $DUCK_DISPLAY $DD $file -c "$cmd"
end
