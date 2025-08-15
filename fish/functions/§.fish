function § --argument-names value
    set -l input ""
    if not isatty 0
        read in
    end
    if test -z "$in"
        echo -n $value
    else
        echo -n "$in"
    end
end
