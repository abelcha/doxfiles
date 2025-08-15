function tick --no-scope-shadowing
    if test -z "$__tick"
        set __tick whatever
        ticked
        #set -x __tick (gdate +%s%3N)
        #echo settings tick $__tick
    else
        echo (math " ( $( gdate +%s%3N ) - $__tick ) / 10e2 ") $argv
    end
end
