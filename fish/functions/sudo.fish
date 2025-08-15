function sudo --wraps=command
    if not command sudo type -p "$argv[1]"
        echo "NOT COMMAND"
        set zpath (which $argv[1])
        if test -f "$zpath"
            command sudo $zpath $argv[2..]
            return $status
            #command sudo $argv
        end
    end
    echo uuu
    command sudo $argv
end
