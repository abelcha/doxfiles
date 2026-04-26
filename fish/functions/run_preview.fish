function run_preview
    set -l cmdz (__actual_cmd_token)
    if echo "$cmdz" | rg -w 'rm|cp|mv|mkdir' --quiet
        # echo
        echo
        hr '⚠︎'
        echo command detected, doing nuthin
    else if test -n "$cmdz"
        echo
        hr '•°•°•°•°°'
        set fullcmd (commandline $argv)
        if set -S fullcmd | rg '[^1]\selements' --quiet
            h1 "$fullcmd"
            fexec (string join '\n' -- "$fullcmd")
            commandline -f repaint
            echo '•°•°•°•°°'
            echo
        else
            h1 "|$fullcmd|"

            eval "$fullcmd"
        end
    end
    commandline -f repaint
end
