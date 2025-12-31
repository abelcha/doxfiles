complete -c "hap" -l "version" -d "Show the version and exit." # global
complete -c "hap" -s "v" -l "verbose" # global
complete -c "hap" -l "json" -d "Output in JSON format." # global
complete -c "hap" -l "help" -d "Show this message and exit." # global
complete -f -c "hap" -n "__fish_use_subcommand" -a "clean" -d "Remove successfully completed haps." # sub
complete -f -c "hap" -n "__fish_use_subcommand" -a "cleanall" -d "Remove all finished haps, including failed ones." # sub
complete -f -c "hap" -n "__fish_use_subcommand" -a "errors" -d "Output error logs for a hap." # sub
complete -f -c "hap" -n "__fish_use_subcommand" -a "kill" -d "Terminate a specific hap / all haps." # sub
complete -f -c "hap" -n "__fish_use_subcommand" -a "logs" -d "Output logs for a hap." # sub
complete -f -c "hap" -n "__fish_use_subcommand" -a "pause" -d "Pause a specific hap." # sub
complete -f -c "hap" -n "__fish_use_subcommand" -a "rename" -d "Set new name/alias for the existing hap." # sub
complete -f -c "hap" -n "__fish_use_subcommand" -a "restart" -d "Kill the hap and start it again." # sub
complete -f -c "hap" -n "__fish_use_subcommand" -a "resume" -d "Resume execution of a paused hap." # sub
complete -f -c "hap" -n "__fish_use_subcommand" -a "run" -d "Execute background command as a hap." # sub
complete -f -c "hap" -n "__fish_use_subcommand" -a "show" -d "Same as a status." # sub
complete -f -c "hap" -n "__fish_use_subcommand" -a "signal" -d "Send an arbitrary signal to a hap." # sub
complete -f -c "hap" -n "__fish_use_subcommand" -a "status" -d "Display information about haps." # sub
complete -c "hap" -n "__fish_seen_subcommand_from 'clean'" -s "v" -l "verbose" # subcommands flags
complete -c "hap" -n "__fish_seen_subcommand_from 'clean'" -l "json" -d "Output in JSON format." # subcommands flags
complete -c "hap" -n "__fish_seen_subcommand_from 'cleanall'" -s "v" -l "verbose" # subcommands flags
complete -c "hap" -n "__fish_seen_subcommand_from 'cleanall'" -l "json" -d "Output in JSON format." # subcommands flags
complete -c "hap" -n "__fish_seen_subcommand_from 'errors'" -s "v" -l "verbose" # subcommands flags
complete -c "hap" -n "__fish_seen_subcommand_from 'errors'" -l "json" -d "Output in JSON format." # subcommands flags
complete -c "hap" -n "__fish_seen_subcommand_from 'kill'" -s "v" -l "verbose" # subcommands flags
complete -c "hap" -n "__fish_seen_subcommand_from 'kill'" -l "json" -d "Output in JSON format." # subcommands flags
complete -c "hap" -n "__fish_seen_subcommand_from 'logs'" -s "v" -l "verbose" # subcommands flags
complete -c "hap" -n "__fish_seen_subcommand_from 'logs'" -l "json" -d "Output in JSON format." # subcommands flags
complete -c "hap" -n "__fish_seen_subcommand_from 'pause'" -s "v" -l "verbose" # subcommands flags
complete -c "hap" -n "__fish_seen_subcommand_from 'pause'" -l "json" -d "Output in JSON format." # subcommands flags
complete -c "hap" -n "__fish_seen_subcommand_from 'rename'" -s "v" -l "verbose" # subcommands flags
complete -c "hap" -n "__fish_seen_subcommand_from 'rename'" -l "json" -d "Output in JSON format." # subcommands flags
complete -c "hap" -n "__fish_seen_subcommand_from 'restart'" -s "v" -l "verbose" # subcommands flags
complete -c "hap" -n "__fish_seen_subcommand_from 'restart'" -l "json" -d "Output in JSON format." # subcommands flags
complete -c "hap" -n "__fish_seen_subcommand_from 'resume'" -s "v" -l "verbose" # subcommands flags
complete -c "hap" -n "__fish_seen_subcommand_from 'resume'" -l "json" -d "Output in JSON format." # subcommands flags
complete -c "hap" -n "__fish_seen_subcommand_from 'run'" -s "v" -l "verbose" # subcommands flags
complete -c "hap" -n "__fish_seen_subcommand_from 'run'" -l "json" -d "Output in JSON format." # subcommands flags
complete -c "hap" -n "__fish_seen_subcommand_from 'show'" -s "v" -l "verbose" # subcommands flags
complete -c "hap" -n "__fish_seen_subcommand_from 'show'" -l "json" -d "Output in JSON format." # subcommands flags
complete -c "hap" -n "__fish_seen_subcommand_from 'signal'" -s "v" -l "verbose" # subcommands flags
complete -c "hap" -n "__fish_seen_subcommand_from 'signal'" -l "json" -d "Output in JSON format." # subcommands flags
complete -c "hap" -n "__fish_seen_subcommand_from 'status'" -s "v" -l "verbose" # subcommands flags
complete -c "hap" -n "__fish_seen_subcommand_from 'status'" -l "json" -d "Output in JSON format." # subcommands flags
complete -c "hap" -n "__fish_seen_subcommand_from 'clean'" -s "a" -l "all" -d "Include failed haps for the removal." # global
complete -c "hap" -n "__fish_seen_subcommand_from 'clean'" -l "help" -d "Show this message and exit." # global
complete -c "hap" -n "__fish_seen_subcommand_from 'cleanall'" -l "help" -d "Show this message and exit." # global
complete -c "hap" -n "__fish_seen_subcommand_from 'errors'" -s "f" -l "follow" -d "Print new log lines as they are added." # global
complete -c "hap" -n "__fish_seen_subcommand_from 'errors'" -l "help" -d "Show this message and exit." # global
complete -c "hap" -n "__fish_seen_subcommand_from 'kill'" -s "a" -l "all" # global
complete -c "hap" -n "__fish_seen_subcommand_from 'kill'" -l "help" -d "Show this message and exit." # global
complete -c "hap" -n "__fish_seen_subcommand_from 'logs'" -s "f" -l "follow" # global
complete -c "hap" -n "__fish_seen_subcommand_from 'logs'" -s "e" -l "stderr" # global
complete -c "hap" -n "__fish_seen_subcommand_from 'logs'" -l "help" -d "Show this message and exit." # global
complete -c "hap" -n "__fish_seen_subcommand_from 'pause'" -l "help" -d "Show this message and exit." # global
complete -c "hap" -n "__fish_seen_subcommand_from 'rename'" -l "help" -d "Show this message and exit." # global
complete -c "hap" -n "__fish_seen_subcommand_from 'restart'" -l "help" -d "Show this message and exit." # global
complete -c "hap" -n "__fish_seen_subcommand_from 'resume'" -l "help" -d "Show this message and exit." # global
complete -c "hap" -n "__fish_seen_subcommand_from 'run'" -s "n" -l "name" -d "Provide your own alias for the hap instead of a default one." # global
complete -c "hap" -n "__fish_seen_subcommand_from 'run'" -l "check" -d "Verify command launched does not fail immediately." # global
complete -c "hap" -n "__fish_seen_subcommand_from 'run'" -l "help" -d "Show this message and exit." # global
complete -c "hap" -n "__fish_seen_subcommand_from 'show'" -s "v" -l "verbose" # global
complete -c "hap" -n "__fish_seen_subcommand_from 'show'" -l "json" -d "Output in JSON format." # global
complete -c "hap" -n "__fish_seen_subcommand_from 'show'" -l "help" -d "Show this message and exit." # global
complete -c "hap" -n "__fish_seen_subcommand_from 'signal'" -l "help" -d "Show this message and exit." # global
complete -c "hap" -n "__fish_seen_subcommand_from 'status'" -s "v" -l "verbose" # global
complete -c "hap" -n "__fish_seen_subcommand_from 'status'" -l "json" -d "Output in JSON format." # global
complete -c "hap" -n "__fish_seen_subcommand_from 'status'" -l "help" -d "Show this message and exit." # global