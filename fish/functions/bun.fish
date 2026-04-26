function bun
    if contains run -- $argv; and string match -qr 'dev|index|hot' -- $argv
        set target_port (command bun --print "Bun.env.PORT ?? ''")
        if test -n "$target_port"
            portkill $target_port &
        end
    end
    command bun $argv
end
