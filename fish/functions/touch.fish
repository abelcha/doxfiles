function touch

    set dparent (path dirname -- "$argv[1]")
    if not test -d "$dparent"
        mkdir -p $dparent
    end
    command touch $argv
end
