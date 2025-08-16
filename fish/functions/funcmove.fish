function funcmove --wraps=type
    funcopy $argv && rm "$__fish_config_dir/functions/$argv[1].fish"
end
