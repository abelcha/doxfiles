function coalesce
    for i in $argv
        if test -n "$i"
            echo $i
            return
        end
    end
end
