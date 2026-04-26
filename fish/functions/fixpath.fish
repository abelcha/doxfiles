function fixpath
    test -e $argv[1];and path resolve $argv[1];or echo $argv[1]
end
