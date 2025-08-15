function fish_register_subcommands --argument-names cmdname
    while read -la line
        complete -c "$cmdname" -a "$line[1]" -d "'$line[2..]'" --condition __fish_use_subcommand
        
    end
end
