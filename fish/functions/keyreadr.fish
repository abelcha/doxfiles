function keyreadr --wraps='fish_key_reader -c'
    echo waiting your input...
    while fish_key_reader 2>&- | col -b | read --tokenize --array response
        logg 
        logg reesp response
        set -l keycode $response[2]
        echo
        set fullb (bind --all  $keycode 2>&-)
        logg fullb
        switch $keycode
            case e E
                commandline --insert "bind $keycode "
                return
            case '' q Q ctrl-c alt-d escape
                return
        end
        
        echo ------ $keycode --------
        for b in $fullb
            echo $fullb | fish_indent --ansi
        end
        test -z "$fullb"; and echo "bind: No binding found for key '$keycode'"
        echo --------------
        echo press (set_color cyan )"[e to edit]"(set_color normal )
    end
    echo waiting your input...
    #echo (set_color brmagenta )"[ q to quit]"(set_color normal )
end
