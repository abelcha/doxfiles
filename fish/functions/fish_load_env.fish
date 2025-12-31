function fish_load_env --argument-names env_file --argument-names flags
    set file (_.filter_argv_opts $argv)[1]
    set flags (_.filter_argv_flags $argv)
    string replace --regex '^(\w+)=(.+)$' "set $flags \$1 \"\$2\"" <?$file | tee -a /tmp/load-env.logs | source
end
