complete -c "lazygit" -s "h" -l "help" -d "Displays help with available flag, subcommand, and positional value parameters." # global
complete -c "lazygit" -s "p" -l "path" -d "Path of git repo. (equivalent to --work-tree=<path> --git-dir=<path>/.git/)" # global
complete -c "lazygit" -s "f" -l "filter" -d "Path to filter on in `git log -- <path>`. When in filter mode, the commits, reflog, and stash are filtered based on the given path, and some operations are restricted" # global
complete -c "lazygit" -s "v" -l "version" -d "Print the current version" # global
complete -c "lazygit" -s "d" -l "debug" -d "Run in debug mode with logging (see --logs flag below). Use the LOG_LEVEL env var to set the log level (debug/info/warn/error)" # global
complete -c "lazygit" -s "l" -l "logs" -d "Tail lazygit logs (intended to be used when `lazygit --debug` is called in a separate terminal tab)" # global
complete -c "lazygit" -l "profile" -d "Start the profiler and serve it on http port 6060. See CONTRIBUTING.md for more info." # global
complete -c "lazygit" -s "c" -l "config" -d "Print the default config" # global
complete -c "lazygit" -s "cd" -l "print-config-dir" -d "Print the config directory" # global
complete -c "lazygit" -s "ucd" -l "use-config-dir" -d "override default config directory with provided directory" # global
complete -c "lazygit" -s "w" -l "work-tree" -d "equivalent of the --work-tree git argument" # global
complete -c "lazygit" -s "g" -l "git-dir" -d "equivalent of the --git-dir git argument" # global
complete -c "lazygit" -s "ucf" -l "use-config-file" -d "Comma separated list to custom config file(s)" # global
complete -c "lazygit" -s "sm" -l "screen-mode" -d "The initial screen-mode, which determines the size of the focused panel" -xa "normal half full" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'status'" -s "h" -l "help" -d "Displays help with available flag, subcommand, and positional value parameters." # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'status'" -s "p" -l "path" -d "Path of git repo. (equivalent to --work-tree=<path> --git-dir=<path>/.git/)" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'status'" -s "f" -l "filter" -d "Path to filter on in `git log -- <path>`. When in filter mode, the commits, reflog, and stash are filtered based on the given path, and some operations are restricted" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'status'" -s "v" -l "version" -d "Print the current version" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'status'" -s "d" -l "debug" -d "Run in debug mode with logging (see --logs flag below). Use the LOG_LEVEL env var to set the log level (debug/info/warn/error)" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'status'" -s "l" -l "logs" -d "Tail lazygit logs (intended to be used when `lazygit --debug` is called in a separate terminal tab)" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'status'" -l "profile" -d "Start the profiler and serve it on http port 6060. See CONTRIBUTING.md for more info." # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'status'" -s "c" -l "config" -d "Print the default config" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'status'" -s "cd" -l "print-config-dir" -d "Print the config directory" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'status'" -s "ucd" -l "use-config-dir" -d "override default config directory with provided directory" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'status'" -s "w" -l "work-tree" -d "equivalent of the --work-tree git argument" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'status'" -s "g" -l "git-dir" -d "equivalent of the --git-dir git argument" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'status'" -s "ucf" -l "use-config-file" -d "Comma separated list to custom config file(s)" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'status'" -s "sm" -l "screen-mode" -d "The initial screen-mode, which determines the size of the focused panel" -xa "normal half full" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'branch'" -s "h" -l "help" -d "Displays help with available flag, subcommand, and positional value parameters." # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'branch'" -s "p" -l "path" -d "Path of git repo. (equivalent to --work-tree=<path> --git-dir=<path>/.git/)" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'branch'" -s "f" -l "filter" -d "Path to filter on in `git log -- <path>`. When in filter mode, the commits, reflog, and stash are filtered based on the given path, and some operations are restricted" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'branch'" -s "v" -l "version" -d "Print the current version" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'branch'" -s "d" -l "debug" -d "Run in debug mode with logging (see --logs flag below). Use the LOG_LEVEL env var to set the log level (debug/info/warn/error)" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'branch'" -s "l" -l "logs" -d "Tail lazygit logs (intended to be used when `lazygit --debug` is called in a separate terminal tab)" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'branch'" -l "profile" -d "Start the profiler and serve it on http port 6060. See CONTRIBUTING.md for more info." # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'branch'" -s "c" -l "config" -d "Print the default config" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'branch'" -s "cd" -l "print-config-dir" -d "Print the config directory" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'branch'" -s "ucd" -l "use-config-dir" -d "override default config directory with provided directory" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'branch'" -s "w" -l "work-tree" -d "equivalent of the --work-tree git argument" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'branch'" -s "g" -l "git-dir" -d "equivalent of the --git-dir git argument" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'branch'" -s "ucf" -l "use-config-file" -d "Comma separated list to custom config file(s)" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'branch'" -s "sm" -l "screen-mode" -d "The initial screen-mode, which determines the size of the focused panel" -xa "normal half full" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'log'" -s "h" -l "help" -d "Displays help with available flag, subcommand, and positional value parameters." # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'log'" -s "p" -l "path" -d "Path of git repo. (equivalent to --work-tree=<path> --git-dir=<path>/.git/)" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'log'" -s "f" -l "filter" -d "Path to filter on in `git log -- <path>`. When in filter mode, the commits, reflog, and stash are filtered based on the given path, and some operations are restricted" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'log'" -s "v" -l "version" -d "Print the current version" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'log'" -s "d" -l "debug" -d "Run in debug mode with logging (see --logs flag below). Use the LOG_LEVEL env var to set the log level (debug/info/warn/error)" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'log'" -s "l" -l "logs" -d "Tail lazygit logs (intended to be used when `lazygit --debug` is called in a separate terminal tab)" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'log'" -l "profile" -d "Start the profiler and serve it on http port 6060. See CONTRIBUTING.md for more info." # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'log'" -s "c" -l "config" -d "Print the default config" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'log'" -s "cd" -l "print-config-dir" -d "Print the config directory" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'log'" -s "ucd" -l "use-config-dir" -d "override default config directory with provided directory" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'log'" -s "w" -l "work-tree" -d "equivalent of the --work-tree git argument" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'log'" -s "g" -l "git-dir" -d "equivalent of the --git-dir git argument" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'log'" -s "ucf" -l "use-config-file" -d "Comma separated list to custom config file(s)" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'log'" -s "sm" -l "screen-mode" -d "The initial screen-mode, which determines the size of the focused panel. Valid options: 'normal' (default), 'half', 'full'" -xa "normal half full" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'stash'" -s "h" -l "help" -d "Displays help with available flag, subcommand, and positional value parameters." # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'stash'" -s "p" -l "path" -d "Path of git repo. (equivalent to --work-tree=<path> --git-dir=<path>/.git/)" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'stash'" -s "f" -l "filter" -d "Path to filter on in `git log -- <path>`. When in filter mode, the commits, reflog, and stash are filtered based on the given path, and some operations are restricted" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'stash'" -s "v" -l "version" -d "Print the current version" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'stash'" -s "d" -l "debug" -d "Run in debug mode with logging (see --logs flag below). Use the LOG_LEVEL env var to set the log level (debug/info/warn/error)" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'stash'" -s "l" -l "logs" -d "Tail lazygit logs (intended to be used when `lazygit --debug` is called in a separate terminal tab)" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'stash'" -l "profile" -d "Start the profiler and serve it on http port 6060. See CONTRIBUTING.md for more info." # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'stash'" -s "c" -l "config" -d "Print the default config" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'stash'" -s "cd" -l "print-config-dir" -d "Print the config directory" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'stash'" -s "ucd" -l "use-config-dir" -d "override default config directory with provided directory" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'stash'" -s "w" -l "work-tree" -d "equivalent of the --work-tree git argument" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'stash'" -s "g" -l "git-dir" -d "equivalent of the --git-dir git argument" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'stash'" -s "ucf" -l "use-config-file" -d "Comma separated list to custom config file(s)" # global
complete -c "lazygit" -n "__fish_seen_subcommand_from 'stash'" -s "sm" -l "screen-mode" -d "The initial screen-mode, which determines the size of the focused panel" -xa "normal half full" # global