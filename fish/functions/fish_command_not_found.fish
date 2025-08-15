function fish_command_not_found

    if string match -q --regex '^\$\w+' -- "$NEXT_CMD"
        set cmd "set -S $(string replace '$' '' -- "$NEXT_CMD")"
        eval $cmd
        set -S >/tmp/fifo
        return 1
    end
    __fish_default_command_not_found_handler $argv
end
