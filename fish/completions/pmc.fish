complete -c "pmc" -s "v" -l "verbose" -d "Increase logging verbosity" # global
complete -c "pmc" -s "q" -l "quiet" -d "Decrease logging verbosity" # global
complete -c "pmc" -s "h" -l "help" -d "Print help" # global
complete -c "pmc" -s "V" -l "version" -d "Print version" # global
complete -f -c "pmc" -n "__fish_use_subcommand" -a "import" -d "Import process from environment file" # sub
complete -f -c "pmc" -n "__fish_use_subcommand" -a "export" -d "Export environment file from process" # sub
complete -f -c "pmc" -n "__fish_use_subcommand" -a "start" -d "Start/Restart a process" # sub
complete -f -c "pmc" -n "__fish_use_subcommand" -a "stop" -d "Stop/Kill a process" # sub
complete -f -c "pmc" -n "__fish_use_subcommand" -a "remove" -d "Stop then remove a process" # sub
complete -f -c "pmc" -n "__fish_use_subcommand" -a "env" -d "Get env of a process" # sub
complete -f -c "pmc" -n "__fish_use_subcommand" -a "details" -d "Get information of a process" # sub
complete -f -c "pmc" -n "__fish_use_subcommand" -a "list" -d "List all processes" # sub
complete -f -c "pmc" -n "__fish_use_subcommand" -a "restore" -d "Restore all processes" # sub
complete -f -c "pmc" -n "__fish_use_subcommand" -a "save" -d "Save all processes to dumpfile" # sub
complete -f -c "pmc" -n "__fish_use_subcommand" -a "logs" -d "Get logs from a process" # sub
complete -f -c "pmc" -n "__fish_use_subcommand" -a "flush" -d "Flush a process log" # sub
complete -f -c "pmc" -n "__fish_use_subcommand" -a "daemon" -d "Daemon management" # sub
complete -f -c "pmc" -n "__fish_use_subcommand" -a "server" -d "Server management" # sub
complete -f -c "pmc" -n "__fish_use_subcommand" -a "help" -d "Print this message or the help of the given subcommand(s)" # sub
complete -c "pmc" -n "__fish_seen_subcommand_from 'import'" -s "v" -l "verbose" -d "Increase logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'import'" -s "q" -l "quiet" -d "Decrease logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'export'" -s "v" -l "verbose" -d "Increase logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'export'" -s "q" -l "quiet" -d "Decrease logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'start'" -s "v" -l "verbose" -d "Increase logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'start'" -s "q" -l "quiet" -d "Decrease logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'stop'" -s "v" -l "verbose" -d "Increase logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'stop'" -s "q" -l "quiet" -d "Decrease logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'remove'" -s "v" -l "verbose" -d "Increase logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'remove'" -s "q" -l "quiet" -d "Decrease logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'env'" -s "v" -l "verbose" -d "Increase logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'env'" -s "q" -l "quiet" -d "Decrease logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'details'" -s "v" -l "verbose" -d "Increase logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'details'" -s "q" -l "quiet" -d "Decrease logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'list'" -s "v" -l "verbose" -d "Increase logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'list'" -s "q" -l "quiet" -d "Decrease logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'restore'" -s "v" -l "verbose" -d "Increase logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'restore'" -s "q" -l "quiet" -d "Decrease logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'save'" -s "v" -l "verbose" -d "Increase logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'save'" -s "q" -l "quiet" -d "Decrease logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'logs'" -s "v" -l "verbose" -d "Increase logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'logs'" -s "q" -l "quiet" -d "Decrease logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'flush'" -s "v" -l "verbose" -d "Increase logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'flush'" -s "q" -l "quiet" -d "Decrease logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'daemon'" -s "v" -l "verbose" -d "Increase logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'daemon'" -s "q" -l "quiet" -d "Decrease logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'server'" -s "v" -l "verbose" -d "Increase logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'server'" -s "q" -l "quiet" -d "Decrease logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'help'" -s "v" -l "verbose" -d "Increase logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'help'" -s "q" -l "quiet" -d "Decrease logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'import'" -s "v" -l "verbose" -d "Increase logging verbosity" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'import'" -s "q" -l "quiet" -d "Decrease logging verbosity" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'import'" -s "h" -l "help" -d "Print help" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'export'" -s "v" -l "verbose" -d "Increase logging verbosity" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'export'" -s "q" -l "quiet" -d "Decrease logging verbosity" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'export'" -s "h" -l "help" -d "Print help" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'start'" -l "name" -d "Process name" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'start'" -l "watch" -d "Watch to reload path" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'start'" -s "s" -l "server" -d "Server" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'start'" -s "r" -l "reset-env" -d "Reset environment values" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'start'" -s "v" -l "verbose" -d "Increase logging verbosity" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'start'" -s "q" -l "quiet" -d "Decrease logging verbosity" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'start'" -s "h" -l "help" -d "Print help" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'stop'" -s "s" -l "server" -d "Server" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'stop'" -s "v" -l "verbose" -d "Increase logging verbosity" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'stop'" -s "q" -l "quiet" -d "Decrease logging verbosity" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'stop'" -s "h" -l "help" -d "Print help" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'remove'" -s "s" -l "server" -d "Server" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'remove'" -s "v" -l "verbose" -d "Increase logging verbosity" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'remove'" -s "q" -l "quiet" -d "Decrease logging verbosity" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'remove'" -s "h" -l "help" -d "Print help" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'env'" -s "s" -l "server" -d "Server" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'env'" -s "v" -l "verbose" -d "Increase logging verbosity" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'env'" -s "q" -l "quiet" -d "Decrease logging verbosity" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'env'" -s "h" -l "help" -d "Print help" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'details'" -l "format" -d "Format output" -xa "{}" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'details'" -s "s" -l "server" -d "Server" -xa "{}" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'details'" -s "v" -l "verbose" -d "Increase logging verbosity" -xa "{}" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'details'" -s "q" -l "quiet" -d "Decrease logging verbosity" -xa "{}" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'details'" -s "h" -l "help" -d "Print help" -xa "{}" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'list'" -l "format" -d "Format output" -xa "{}" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'list'" -s "s" -l "server" -d "Server" -xa "{}" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'list'" -s "v" -l "verbose" -d "Increase logging verbosity" -xa "{}" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'list'" -s "q" -l "quiet" -d "Decrease logging verbosity" -xa "{}" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'list'" -s "h" -l "help" -d "Print help" -xa "{}" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'restore'" -s "s" -l "server" -d "Server" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'restore'" -s "v" -l "verbose" -d "Increase logging verbosity" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'restore'" -s "q" -l "quiet" -d "Decrease logging verbosity" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'restore'" -s "h" -l "help" -d "Print help" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'save'" -s "s" -l "server" -d "Server" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'save'" -s "v" -l "verbose" -d "Increase logging verbosity" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'save'" -s "q" -l "quiet" -d "Decrease logging verbosity" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'save'" -s "h" -l "help" -d "Print help" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'logs'" -l "lines" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'logs'" -s "s" -l "server" -d "Server" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'logs'" -s "v" -l "verbose" -d "Increase logging verbosity" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'logs'" -s "q" -l "quiet" -d "Decrease logging verbosity" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'logs'" -s "h" -l "help" -d "Print help" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'flush'" -s "s" -l "server" -d "Server" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'flush'" -s "v" -l "verbose" -d "Increase logging verbosity" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'flush'" -s "q" -l "quiet" -d "Decrease logging verbosity" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'flush'" -s "h" -l "help" -d "Print help" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'daemon'" -s "v" -l "verbose" -d "Increase logging verbosity" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'daemon'" -s "q" -l "quiet" -d "Decrease logging verbosity" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'daemon'" -s "h" -l "help" -d "Print help" # global
complete -f -c "pmc" -n "__fish_seen_subcommand_from 'daemon'" -a "reset" -d "Reset process index" # sub
complete -f -c "pmc" -n "__fish_seen_subcommand_from 'daemon'" -a "stop" -d "Stop daemon" # sub
complete -f -c "pmc" -n "__fish_seen_subcommand_from 'daemon'" -a "restore" -d "Restart daemon" # sub
complete -f -c "pmc" -n "__fish_seen_subcommand_from 'daemon'" -a "health" -d "Check daemon health" # sub
complete -f -c "pmc" -n "__fish_seen_subcommand_from 'daemon'" -a "help" -d "Print this message or the help of the given subcommand(s)" # sub
complete -c "pmc" -n "__fish_seen_subcommand_from 'daemon reset'" -s "v" -l "verbose" -d "Increase logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'daemon reset'" -s "q" -l "quiet" -d "Decrease logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'daemon stop'" -s "v" -l "verbose" -d "Increase logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'daemon stop'" -s "q" -l "quiet" -d "Decrease logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'daemon restore'" -s "v" -l "verbose" -d "Increase logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'daemon restore'" -s "q" -l "quiet" -d "Decrease logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'daemon health'" -s "v" -l "verbose" -d "Increase logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'daemon health'" -s "q" -l "quiet" -d "Decrease logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'daemon help'" -s "v" -l "verbose" -d "Increase logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'daemon help'" -s "q" -l "quiet" -d "Decrease logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'server'" -s "v" -l "verbose" -d "Increase logging verbosity" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'server'" -s "q" -l "quiet" -d "Decrease logging verbosity" # global
complete -c "pmc" -n "__fish_seen_subcommand_from 'server'" -s "h" -l "help" -d "Print help" # global
complete -f -c "pmc" -n "__fish_seen_subcommand_from 'server'" -a "new" -d "Add new server" # sub
complete -f -c "pmc" -n "__fish_seen_subcommand_from 'server'" -a "list" -d "List servers" # sub
complete -f -c "pmc" -n "__fish_seen_subcommand_from 'server'" -a "remove" -d "Remove server" # sub
complete -f -c "pmc" -n "__fish_seen_subcommand_from 'server'" -a "default" -d "Set default server" # sub
complete -f -c "pmc" -n "__fish_seen_subcommand_from 'server'" -a "help" -d "Print this message or the help of the given subcommand(s)" # sub
complete -c "pmc" -n "__fish_seen_subcommand_from 'server new'" -s "v" -l "verbose" -d "Increase logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'server new'" -s "q" -l "quiet" -d "Decrease logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'server list'" -s "v" -l "verbose" -d "Increase logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'server list'" -s "q" -l "quiet" -d "Decrease logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'server remove'" -s "v" -l "verbose" -d "Increase logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'server remove'" -s "q" -l "quiet" -d "Decrease logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'server default'" -s "v" -l "verbose" -d "Increase logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'server default'" -s "q" -l "quiet" -d "Decrease logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'server help'" -s "v" -l "verbose" -d "Increase logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'server help'" -s "q" -l "quiet" -d "Decrease logging verbosity" # subcommands flags
complete -c "pmc" -n "__fish_seen_subcommand_from 'help'" -l "help" -d "For more information" # global