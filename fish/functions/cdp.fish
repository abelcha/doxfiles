function cdp --wraps='cd (pwd)' --description 'alias cdp cd (pwd)'
    cd (path resolve (pwd)) $argv
    
end
