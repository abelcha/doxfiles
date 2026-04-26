complete -c "brosh" -s "a" -l "app" # global
complete -c "brosh" -s "w" -l "width" # global
complete -c "brosh" -s "h" -l "height" # global
complete -c "brosh" -s "z" -l "zoom" # global
complete -c "brosh" -s "o" -l "output_dir" # global
complete -c "brosh" -s "s" -l "subdirs" # global
complete -c "brosh" -s "v" -l "verbose" # global
complete -c "brosh" -s "j" -l "json" # global
complete -c "brosh" -n "__fish_seen_subcommand_from 'run'" -s "f" -l "force_run" -d "Always restart browser even if already running" -xa "{}" # global