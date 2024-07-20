function grun --wraps='go run' --description 'alias grun=go run'
    set -l lastExitOK $status # maybe closure IDK
    argparse w/watch -- $argv
    or return 1
    if test $lastExitOK -eq 0
        set -q _flag_watch; and clear
    end

    if string match -r '.go' -- "$argv"
        #echo "has .go"
        go run $argv
    else
        #echo "has no"
        go run $CWD/**.go $argv
    end
end
