complete -c "pearcleaner" -s "h" -l "help" -d "Show help information." # global
complete -f -c "pearcleaner" -n "__fish_use_subcommand" -a "list" -d "List application files available for uninstall at the specified path" # sub
complete -f -c "pearcleaner" -n "__fish_use_subcommand" -a "list-orphaned" -d "List orphaned files available for removal" # sub
complete -f -c "pearcleaner" -n "__fish_use_subcommand" -a "uninstall" -d "Uninstall only the application bundle at the specified path" # sub
complete -f -c "pearcleaner" -n "__fish_use_subcommand" -a "uninstall-all" -d "Uninstall application bundle and ALL related files at the specified path" # sub
complete -f -c "pearcleaner" -n "__fish_use_subcommand" -a "remove-orphaned" -d "Remove ALL orphaned files (To ignore files, add them to the exception list within Pearcleaner settings)" # sub
complete -c "pearcleaner" -n "__fish_seen_subcommand_from 'list'" -s "h" -l "help" -d "Show help information." # global
complete -c "pearcleaner" -n "__fish_seen_subcommand_from 'list-orphaned'" -s "h" -l "help" -d "Show help information." # global
complete -c "pearcleaner" -n "__fish_seen_subcommand_from 'uninstall'" -s "h" -l "help" -d "Show help information." # global
complete -c "pearcleaner" -n "__fish_seen_subcommand_from 'uninstall-all'" -s "h" -l "help" -d "Show help information." # global
complete -c "pearcleaner" -n "__fish_seen_subcommand_from 'remove-orphaned'" -s "h" -l "help" -d "Show help information." # global