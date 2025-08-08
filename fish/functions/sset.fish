function sset --wraps='set --show' --no-scope-shadowing
    #set $argv
    set opts (_.filter_argv_opts $argv)
    set --show opts
    #set --show (_.filter_argv_opts)[1]
end
