function =

    if not isatty 0
        read in
    end
    if isatty 0; or not test -z "$in"
        echo -n $argv
    else
        # echo -n "$in"
    end
end
