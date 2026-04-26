function bekill
    if test (commandline --cursor) -lt 5
        set temp $POP_CMD[1]
        commandline -f kill-word
        sleep 0.1
        commandline --insert "$temp "
        commandline -f beginning-of-line
        set POP_CMD $POP_CMD[2..]
        set --append POP_CMD $temp
    else
        commandline -f beginning-of-line
        commandline -f kill-word
    end
end
