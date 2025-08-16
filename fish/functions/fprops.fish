function fprops --no-scope-shadowing
    for i in $argv
        set k $i
        set value $$k
        set splitted (string split '=' $k)
        if [ (count $splitted) = 2 ]
            set k $splitted[1]
            set value $$k
            if test -z "$value"
                set value $splitted[2]
            end
        end
        if test -z "$value"
            continue
        end
        set key "-$k"
        if [ (string length "$k") -gt 1 ]
            set key "-$key"
        end
        if [ "$value" != true ]
            set key "$key=$value"
        end
        echo $key
    end
end
