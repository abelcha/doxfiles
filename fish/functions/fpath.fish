function fpath --wraps=type
        set --path res "$(type -p $argv )"
        set -S res
    
end
