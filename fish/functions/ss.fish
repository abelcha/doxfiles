function ss --wraps='set --show' --no-scope-shadowing
    if test -z "$argv[2]"
        set --show $argv
        return
    end
    set $argv
    set --show (_.filter_argv_opts)[1]
end
