function fish_load_env --argument-names env_file
    string replace --regex '^(\w+)=(.+)$' 'set -gx $1 "$2"' <? $env_file | source
end
