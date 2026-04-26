function funcis --wraps='funced -is' --argument-names comds
    if not functions -q $comds; and command -q $comds
        set source (which $comds)
        echo "source:::"$source
        if rg -q -w "ASCII|script text" (file $source|psub)
            hx $source
            #return
        end
    else if command -q $comds; and not functions -q "$comds"
        echo "Command exists already `$(which $comds)`"
    else
        set runtime_script ( string match --groups-only -rg "\W\Wwraps=(/[^\s]+/$comds\.(?:ts|py))" --  (type $comds))[1]
        #runtime_script
        if test -z $runtime_script
            funced -is $argv
        else
            command $EDITOR $runtime_script && _reload_fish
        end
    end
end
