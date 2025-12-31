function funcis --wraps='funced -is'
    if not functions -q $argv[1]; and command -q $argv[1]
        set source (which $argv[1])
        echo "source:::"$source
        if rg -q -w "ASCII|script text" (file $source|psub)
            hx $source
            #return
        end
    else if command -q $argv[1]; and not functions -q "$argv[1]"
        echo "Command exists already `$(which $argv[1])`"
    else
        set runtime_script (string match --groups-only -rg '_RUNTIME_FILE=([^\s]+)' --  (type $argv[1]))[1]
        if test -z $runtime_script
            funced -is $argv
        else
            hx $runtime_script && _reload_fish
        end
    end
end
