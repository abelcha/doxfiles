function bun
    if string match -rq '^(i|install)$' -- "$argv[1]"
        echo installlllllll
        command bun-release $argv
    else
        command bun $argv
    end
end
