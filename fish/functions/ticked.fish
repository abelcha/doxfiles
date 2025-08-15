function ticked --no-scope-shadowing
    set -x __tick (gdate +%s%3N)
    #echo2 tick reset
end
