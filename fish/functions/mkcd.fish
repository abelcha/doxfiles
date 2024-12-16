function mkcd

        test -d "$argv[1]"; or mkdir -p "$argv[1]"
        cd "$argv[1]"
end
