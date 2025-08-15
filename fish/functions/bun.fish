function bun
    if not type -q bun-release
        command bun $argv
    else if [ $argv[1] = test ]
        command bun-release $argv
    else
        command bun $argv
    end
end
