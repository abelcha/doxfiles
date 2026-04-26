complete -c "localias" -s "c" -l "configfile" -d "path to the configuration file to edit" # global
complete -c "localias" -s "h" -l "help" -d "help for localias" # global
complete -c "localias" -s "v" -l "version" -d "version for localias" # global
complete -f -c "localias" -n "__fish_use_subcommand" -a "clear" -d "clear all aliases" # sub
complete -f -c "localias" -n "__fish_use_subcommand" -a "help" -d "Help about any command" # sub
complete -f -c "localias" -n "__fish_use_subcommand" -a "import" -d "import all aliases from one or more other config files" # sub
complete -f -c "localias" -n "__fish_use_subcommand" -a "list" -d "list all aliases" # sub
complete -f -c "localias" -n "__fish_use_subcommand" -a "rm" -d "remove an alias" # sub
complete -f -c "localias" -n "__fish_use_subcommand" -a "run" -d "run the proxy server in the foreground" # sub
complete -f -c "localias" -n "__fish_use_subcommand" -a "set" -d "add or edit an alias" # sub
complete -f -c "localias" -n "__fish_use_subcommand" -a "start" -d "start the proxy server as a daemon process" # sub
complete -f -c "localias" -n "__fish_use_subcommand" -a "status" -d "show the status of the daemon process" # sub
complete -f -c "localias" -n "__fish_use_subcommand" -a "stop" -d "stop the daemon process" # sub
complete -f -c "localias" -n "__fish_use_subcommand" -a "version" -d "show the version of this binary" # sub
complete -c "localias" -n "__fish_seen_subcommand_from 'clear'" -s "c" -l "configfile" -d "path to the configuration file to edit" # subcommands flags
complete -c "localias" -n "__fish_seen_subcommand_from 'help'" -s "c" -l "configfile" -d "path to the configuration file to edit" # subcommands flags
complete -c "localias" -n "__fish_seen_subcommand_from 'import'" -s "c" -l "configfile" -d "path to the configuration file to edit" # subcommands flags
complete -c "localias" -n "__fish_seen_subcommand_from 'list'" -s "c" -l "configfile" -d "path to the configuration file to edit" # subcommands flags
complete -c "localias" -n "__fish_seen_subcommand_from 'rm'" -s "c" -l "configfile" -d "path to the configuration file to edit" # subcommands flags
complete -c "localias" -n "__fish_seen_subcommand_from 'run'" -s "c" -l "configfile" -d "path to the configuration file to edit" # subcommands flags
complete -c "localias" -n "__fish_seen_subcommand_from 'set'" -s "c" -l "configfile" -d "path to the configuration file to edit" # subcommands flags
complete -c "localias" -n "__fish_seen_subcommand_from 'start'" -s "c" -l "configfile" -d "path to the configuration file to edit" # subcommands flags
complete -c "localias" -n "__fish_seen_subcommand_from 'status'" -s "c" -l "configfile" -d "path to the configuration file to edit" # subcommands flags
complete -c "localias" -n "__fish_seen_subcommand_from 'stop'" -s "c" -l "configfile" -d "path to the configuration file to edit" # subcommands flags
complete -c "localias" -n "__fish_seen_subcommand_from 'version'" -s "c" -l "configfile" -d "path to the configuration file to edit" # subcommands flags
complete -c "localias" -n "__fish_seen_subcommand_from 'clear'" -s "h" -l "help" -d "help for clear" # global
complete -c "localias" -n "__fish_seen_subcommand_from 'clear'" -s "c" -l "configfile" -d "path to the configuration file to edit" -xa "{}" # global
complete -c "localias" -n "__fish_seen_subcommand_from 'help'" -s "h" -l "help" -d "help for help" # global
complete -c "localias" -n "__fish_seen_subcommand_from 'help'" -s "c" -l "configfile" -d "path to the configuration file to edit" # global
complete -c "localias" -n "__fish_seen_subcommand_from 'import'" -s "h" -l "help" -d "help for import" # global
complete -c "localias" -n "__fish_seen_subcommand_from 'import'" -s "c" -l "configfile" -d "path to the configuration file to edit" # global
complete -c "localias" -n "__fish_seen_subcommand_from 'list'" -s "h" -l "help" -d "help for list" # global
complete -c "localias" -n "__fish_seen_subcommand_from 'list'" -s "c" -l "configfile" -d "path to the configuration file to edit" # global
complete -c "localias" -n "__fish_seen_subcommand_from 'rm'" -s "h" -l "help" -d "help for rm" # global
complete -c "localias" -n "__fish_seen_subcommand_from 'rm'" -s "c" -l "configfile" -d "path to the configuration file to edit" -xa "{}" # global
complete -c "localias" -n "__fish_seen_subcommand_from 'run'" -s "h" -l "help" -d "help for run" # global
complete -c "localias" -n "__fish_seen_subcommand_from 'run'" -s "c" -l "configfile" -d "path to the configuration file to edit" -xa "{}" # global
complete -c "localias" -n "__fish_seen_subcommand_from 'set'" -s "a" -l "alias" -d "domain alias e.g. example.test" # global
complete -c "localias" -n "__fish_seen_subcommand_from 'set'" -s "h" -l "help" -d "help for set" # global
complete -c "localias" -n "__fish_seen_subcommand_from 'set'" -s "p" -l "port" -d "local port e.g. 9000" # global
complete -c "localias" -n "__fish_seen_subcommand_from 'set'" -s "c" -l "configfile" -d "path to the configuration file to edit" # global
complete -c "localias" -n "__fish_seen_subcommand_from 'start'" -s "h" -l "help" -d "help for start" # global
complete -c "localias" -n "__fish_seen_subcommand_from 'start'" -s "c" -l "configfile" -d "path to the configuration file to edit" # global
complete -c "localias" -n "__fish_seen_subcommand_from 'status'" -s "h" -l "help" -d "help for status" # global
complete -c "localias" -n "__fish_seen_subcommand_from 'status'" -s "c" -l "configfile" -d "path to the configuration file to edit" # global
complete -c "localias" -n "__fish_seen_subcommand_from 'stop'" -s "h" -l "help" -d "help for stop" # global
complete -c "localias" -n "__fish_seen_subcommand_from 'stop'" -s "c" -l "configfile" -d "path to the configuration file to edit" -xa "{}" # global
complete -c "localias" -n "__fish_seen_subcommand_from 'version'" -s "h" -l "help" -d "help for version" # global
complete -c "localias" -n "__fish_seen_subcommand_from 'version'" -s "c" -l "configfile" -d "path to the configuration file to edit" -xa "{}" # global