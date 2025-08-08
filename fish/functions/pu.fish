function pu --wraps=pueue --description 'alias pu pueue'
    if test -z "$argv[1]"
        pueue status status!=Queued
    else
        pueue $argv
    end
end
