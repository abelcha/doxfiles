complete -c "oco" -s "c" -l "context" -d "Additional user input context for the commit message" # global
complete -c "oco" -l "fgm" -d "Use full GitMoji specification" # global
complete -c "oco" -s "h" -l "help" -d "Show help" # global
complete -c "oco" -l "version" -d "Show version" # global
complete -c "oco" -s "y" -l "yes" -d "Skip commit confirmation prompt" # global
complete -f -c "oco" -n "__fish_use_subcommand" -a "config" -d "Configure opencommit settings" # sub
complete -f -c "oco" -n "__fish_use_subcommand" -a "hook" # sub
complete -f -c "oco" -n "__fish_use_subcommand" -a "commitlint" # sub
complete -f -c "oco" -n "__fish_use_subcommand" -a "setup" -d "Interactive setup wizard for OpenCommit" # sub
complete -f -c "oco" -n "__fish_use_subcommand" -a "models" -d "List and manage cached models for your AI provider" # sub
complete -c "oco" -n "__fish_seen_subcommand_from 'config'" -s "c" -l "context" -d "Additional user input context for the commit message" # subcommands flags
complete -c "oco" -n "__fish_seen_subcommand_from 'config'" -l "fgm" -d "Use full GitMoji specification" # subcommands flags
complete -c "oco" -n "__fish_seen_subcommand_from 'config'" -s "y" -l "yes" -d "Skip commit confirmation prompt" # subcommands flags
complete -c "oco" -n "__fish_seen_subcommand_from 'hook'" -s "c" -l "context" -d "Additional user input context for the commit message" # subcommands flags
complete -c "oco" -n "__fish_seen_subcommand_from 'hook'" -l "fgm" -d "Use full GitMoji specification" # subcommands flags
complete -c "oco" -n "__fish_seen_subcommand_from 'hook'" -s "y" -l "yes" -d "Skip commit confirmation prompt" # subcommands flags
complete -c "oco" -n "__fish_seen_subcommand_from 'commitlint'" -s "c" -l "context" -d "Additional user input context for the commit message" # subcommands flags
complete -c "oco" -n "__fish_seen_subcommand_from 'commitlint'" -l "fgm" -d "Use full GitMoji specification" # subcommands flags
complete -c "oco" -n "__fish_seen_subcommand_from 'commitlint'" -s "y" -l "yes" -d "Skip commit confirmation prompt" # subcommands flags
complete -c "oco" -n "__fish_seen_subcommand_from 'setup'" -s "c" -l "context" -d "Additional user input context for the commit message" # subcommands flags
complete -c "oco" -n "__fish_seen_subcommand_from 'setup'" -l "fgm" -d "Use full GitMoji specification" # subcommands flags
complete -c "oco" -n "__fish_seen_subcommand_from 'setup'" -s "y" -l "yes" -d "Skip commit confirmation prompt" # subcommands flags
complete -c "oco" -n "__fish_seen_subcommand_from 'models'" -s "c" -l "context" -d "Additional user input context for the commit message" # subcommands flags
complete -c "oco" -n "__fish_seen_subcommand_from 'models'" -l "fgm" -d "Use full GitMoji specification" # subcommands flags
complete -c "oco" -n "__fish_seen_subcommand_from 'models'" -s "y" -l "yes" -d "Skip commit confirmation prompt" # subcommands flags
complete -c "oco" -n "__fish_seen_subcommand_from 'config'" -s "h" -l "help" -d "Show help" # global
complete -f -c "oco" -n "__fish_seen_subcommand_from 'config'" -a "describe" -d "Describe all config parameters or a specific parameter" # sub
complete -f -c "oco" -n "__fish_seen_subcommand_from 'config'" -a "get" -d "Get a config value" # sub
complete -f -c "oco" -n "__fish_seen_subcommand_from 'config'" -a "set" -d "Set a config value" # sub
complete -c "oco" -n "__fish_seen_subcommand_from 'hook'" -s "h" -l "help" -d "Show help" # global
complete -f -c "oco" -n "__fish_seen_subcommand_from 'hook'" -a "set" # sub
complete -f -c "oco" -n "__fish_seen_subcommand_from 'hook'" -a "unset" # sub
complete -c "oco" -n "__fish_seen_subcommand_from 'commitlint'" -s "h" -l "help" -d "Show help" # global
complete -c "oco" -n "__fish_seen_subcommand_from 'setup'" -s "h" -l "help" -d "Show help" # global
complete -c "oco" -n "__fish_seen_subcommand_from 'models'" -s "h" -l "help" -d "Show help" # global
complete -c "oco" -n "__fish_seen_subcommand_from 'models'" -s "p" -l "provider" -d "Specify provider" # global
complete -c "oco" -n "__fish_seen_subcommand_from 'models'" -s "r" -l "refresh" -d "Clear cache and re-fetch models from the provider" # global