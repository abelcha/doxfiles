function chunks --argument-names size
    while read -l line
        set --append chunk $line
        if test (count $chunk) -ge $size
            echo $chunk
            set --erase chunk
        end
    end
    test -n "$chunk" && echo $chunk
end
