complete -c "aicommits" -s "a" -l "all" -d "Automatically stage changes in tracked files for the commit" # global
complete -c "aicommits" -s "x" -l "exclude" -d "Files to exclude from AI analysis" # global
complete -c "aicommits" -s "g" -l "generate" -d "Number of messages to generate (Warning: generating multiple costs more)" # global
complete -c "aicommits" -s "h" -l "help" -d "Show help" # global
complete -c "aicommits" -s "t" -l "type" -d "Type of commit message to generate" # global
complete -c "aicommits" -l "version" -d "Show version" # global
complete -f -c "aicommits" -n "__fish_use_subcommand" -a "config" # sub
complete -f -c "aicommits" -n "__fish_use_subcommand" -a "hook" # sub
complete -c "aicommits" -n "__fish_seen_subcommand_from 'config'" -s "a" -l "all" -d "Automatically stage changes in tracked files for the commit" # subcommands flags
complete -c "aicommits" -n "__fish_seen_subcommand_from 'config'" -s "x" -l "exclude" -d "Files to exclude from AI analysis" # subcommands flags
complete -c "aicommits" -n "__fish_seen_subcommand_from 'config'" -s "g" -l "generate" -d "Number of messages to generate (Warning: generating multiple costs more)" # subcommands flags
complete -c "aicommits" -n "__fish_seen_subcommand_from 'config'" -s "t" -l "type" -d "Type of commit message to generate" # subcommands flags
complete -c "aicommits" -n "__fish_seen_subcommand_from 'hook'" -s "a" -l "all" -d "Automatically stage changes in tracked files for the commit" # subcommands flags
complete -c "aicommits" -n "__fish_seen_subcommand_from 'hook'" -s "x" -l "exclude" -d "Files to exclude from AI analysis" # subcommands flags
complete -c "aicommits" -n "__fish_seen_subcommand_from 'hook'" -s "g" -l "generate" -d "Number of messages to generate (Warning: generating multiple costs more)" # subcommands flags
complete -c "aicommits" -n "__fish_seen_subcommand_from 'hook'" -s "t" -l "type" -d "Type of commit message to generate" # subcommands flags
complete -c "aicommits" -n "__fish_seen_subcommand_from 'config'" -s "h" -l "help" -d "Show help" # global
complete -c "aicommits" -n "__fish_seen_subcommand_from 'hook'" -s "h" -l "help" -d "Show help" # global