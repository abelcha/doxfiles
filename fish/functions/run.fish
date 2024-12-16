function run
    if string match -r \.malloy -- "$argv"
        malloy run $argv
        return
    end

    bun run $argv
end
