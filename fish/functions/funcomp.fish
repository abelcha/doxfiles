function funcomp
    set xpath (fcomp $argv[1])[1]
    test -e "$xpath" && $EDITOR $xpath
end
