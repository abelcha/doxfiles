function funcmove --wraps=type
    funcopy $argv && urm --interactive "$__fish_config_dir/functions/$argv[1].fish"
end
