complete -c "mo" -l "help" -d "Show help" # global
complete -c "mo" -l "version" -d "Show version" # global
complete -c "mo" -l "dry-run" -d "Preview cleanup" # global
complete -c "mo" -l "whitelist" -d "Manage protected caches" # global
complete -c "mo" -l "force-rescan" -d "Rescan apps and refresh cache" # global
complete -c "mo" -l "debug" -d "Show detailed operation logs" # global
complete -f -c "mo" -n "__fish_use_subcommand" -a "clean" -d "Free up disk space" # sub
complete -f -c "mo" -n "__fish_use_subcommand" -a "uninstall" -d "Remove apps completely" # sub
complete -f -c "mo" -n "__fish_use_subcommand" -a "optimize" -d "Check and maintain system" # sub
complete -f -c "mo" -n "__fish_use_subcommand" -a "analyze" -d "Explore disk usage" # sub
complete -f -c "mo" -n "__fish_use_subcommand" -a "status" -d "Monitor system health" # sub
complete -f -c "mo" -n "__fish_use_subcommand" -a "purge" -d "Remove old project artifacts" # sub
complete -f -c "mo" -n "__fish_use_subcommand" -a "touchid" -d "Configure Touch ID for sudo" # sub
complete -f -c "mo" -n "__fish_use_subcommand" -a "update" -d "Update to latest version" # sub
complete -f -c "mo" -n "__fish_use_subcommand" -a "remove" -d "Remove Mole from system" # sub
complete -c "mo" -n "__fish_seen_subcommand_from 'clean'" -l "dry-run" -d "Preview cleanup" # subcommands flags
complete -c "mo" -n "__fish_seen_subcommand_from 'clean'" -l "whitelist" -d "Manage protected caches" # subcommands flags
complete -c "mo" -n "__fish_seen_subcommand_from 'clean'" -l "force-rescan" -d "Rescan apps and refresh cache" # subcommands flags
complete -c "mo" -n "__fish_seen_subcommand_from 'clean'" -l "debug" -d "Show detailed operation logs" # subcommands flags
complete -c "mo" -n "__fish_seen_subcommand_from 'uninstall'" -l "dry-run" -d "Preview cleanup" # subcommands flags
complete -c "mo" -n "__fish_seen_subcommand_from 'uninstall'" -l "whitelist" -d "Manage protected caches" # subcommands flags
complete -c "mo" -n "__fish_seen_subcommand_from 'uninstall'" -l "force-rescan" -d "Rescan apps and refresh cache" # subcommands flags
complete -c "mo" -n "__fish_seen_subcommand_from 'uninstall'" -l "debug" -d "Show detailed operation logs" # subcommands flags
complete -c "mo" -n "__fish_seen_subcommand_from 'optimize'" -l "dry-run" -d "Preview cleanup" # subcommands flags
complete -c "mo" -n "__fish_seen_subcommand_from 'optimize'" -l "whitelist" -d "Manage protected caches" # subcommands flags
complete -c "mo" -n "__fish_seen_subcommand_from 'optimize'" -l "force-rescan" -d "Rescan apps and refresh cache" # subcommands flags
complete -c "mo" -n "__fish_seen_subcommand_from 'optimize'" -l "debug" -d "Show detailed operation logs" # subcommands flags
complete -c "mo" -n "__fish_seen_subcommand_from 'analyze'" -l "dry-run" -d "Preview cleanup" # subcommands flags
complete -c "mo" -n "__fish_seen_subcommand_from 'analyze'" -l "whitelist" -d "Manage protected caches" # subcommands flags
complete -c "mo" -n "__fish_seen_subcommand_from 'analyze'" -l "force-rescan" -d "Rescan apps and refresh cache" # subcommands flags
complete -c "mo" -n "__fish_seen_subcommand_from 'analyze'" -l "debug" -d "Show detailed operation logs" # subcommands flags
complete -c "mo" -n "__fish_seen_subcommand_from 'status'" -l "dry-run" -d "Preview cleanup" # subcommands flags
complete -c "mo" -n "__fish_seen_subcommand_from 'status'" -l "whitelist" -d "Manage protected caches" # subcommands flags
complete -c "mo" -n "__fish_seen_subcommand_from 'status'" -l "force-rescan" -d "Rescan apps and refresh cache" # subcommands flags
complete -c "mo" -n "__fish_seen_subcommand_from 'status'" -l "debug" -d "Show detailed operation logs" # subcommands flags
complete -c "mo" -n "__fish_seen_subcommand_from 'purge'" -l "dry-run" -d "Preview cleanup" # subcommands flags
complete -c "mo" -n "__fish_seen_subcommand_from 'purge'" -l "whitelist" -d "Manage protected caches" # subcommands flags
complete -c "mo" -n "__fish_seen_subcommand_from 'purge'" -l "force-rescan" -d "Rescan apps and refresh cache" # subcommands flags
complete -c "mo" -n "__fish_seen_subcommand_from 'purge'" -l "debug" -d "Show detailed operation logs" # subcommands flags
complete -c "mo" -n "__fish_seen_subcommand_from 'touchid'" -l "dry-run" -d "Preview cleanup" # subcommands flags
complete -c "mo" -n "__fish_seen_subcommand_from 'touchid'" -l "whitelist" -d "Manage protected caches" # subcommands flags
complete -c "mo" -n "__fish_seen_subcommand_from 'touchid'" -l "force-rescan" -d "Rescan apps and refresh cache" # subcommands flags
complete -c "mo" -n "__fish_seen_subcommand_from 'touchid'" -l "debug" -d "Show detailed operation logs" # subcommands flags
complete -c "mo" -n "__fish_seen_subcommand_from 'update'" -l "dry-run" -d "Preview cleanup" # subcommands flags
complete -c "mo" -n "__fish_seen_subcommand_from 'update'" -l "whitelist" -d "Manage protected caches" # subcommands flags
complete -c "mo" -n "__fish_seen_subcommand_from 'update'" -l "force-rescan" -d "Rescan apps and refresh cache" # subcommands flags
complete -c "mo" -n "__fish_seen_subcommand_from 'update'" -l "debug" -d "Show detailed operation logs" # subcommands flags
complete -c "mo" -n "__fish_seen_subcommand_from 'remove'" -l "dry-run" -d "Preview cleanup" # subcommands flags
complete -c "mo" -n "__fish_seen_subcommand_from 'remove'" -l "whitelist" -d "Manage protected caches" # subcommands flags
complete -c "mo" -n "__fish_seen_subcommand_from 'remove'" -l "force-rescan" -d "Rescan apps and refresh cache" # subcommands flags
complete -c "mo" -n "__fish_seen_subcommand_from 'remove'" -l "debug" -d "Show detailed operation logs" # subcommands flags