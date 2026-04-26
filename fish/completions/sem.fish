complete -c "sem" -s "h" -l "help" -d "Print help" # global
complete -c "sem" -s "V" -l "version" -d "Print version" # global
complete -f -c "sem" -n "__fish_use_subcommand" -a "diff" -d "Show semantic diff of changes" # sub
complete -f -c "sem" -n "__fish_use_subcommand" -a "impact" -d "Show impact of changing an entity (what else would break?)" # sub
complete -f -c "sem" -n "__fish_use_subcommand" -a "blame" -d "Show semantic blame — who last modified each entity" # sub
complete -f -c "sem" -n "__fish_use_subcommand" -a "graph" -d "Show entity dependency graph" # sub
complete -f -c "sem" -n "__fish_use_subcommand" -a "help" -d "Print this message or the help of the given subcommand(s)" # sub
complete -c "sem" -n "__fish_seen_subcommand_from 'diff'" -l "staged" -d "Show only staged changes" # global
complete -c "sem" -n "__fish_seen_subcommand_from 'diff'" -l "commit" -d "Show changes from a specific commit" # global
complete -c "sem" -n "__fish_seen_subcommand_from 'diff'" -l "from" -d "Start of commit range" # global
complete -c "sem" -n "__fish_seen_subcommand_from 'diff'" -l "to" -d "End of commit range" # global
complete -c "sem" -n "__fish_seen_subcommand_from 'diff'" -l "stdin" -d "Read FileChange[] JSON from stdin instead of git" # global
complete -c "sem" -n "__fish_seen_subcommand_from 'diff'" -l "format" -d "Output format" -xa "terminal json" # global
complete -c "sem" -n "__fish_seen_subcommand_from 'diff'" -l "file-exts" -d "Only include files with these extensions" # global
complete -c "sem" -n "__fish_seen_subcommand_from 'diff'" -s "h" -l "help" -d "Print help" # global
complete -c "sem" -n "__fish_seen_subcommand_from 'impact'" -l "files" -d "Specific files to analyze (default: all supported files)" # global
complete -c "sem" -n "__fish_seen_subcommand_from 'impact'" -l "json" -d "Output as JSON" # global
complete -c "sem" -n "__fish_seen_subcommand_from 'impact'" -l "file-exts" -d "Only include files with these extensions (e.g. --file-exts .py .rs)" # global
complete -c "sem" -n "__fish_seen_subcommand_from 'impact'" -s "h" -l "help" -d "Print help" # global
complete -c "sem" -n "__fish_seen_subcommand_from 'blame'" -l "json" -d "Output as JSON" # global
complete -c "sem" -n "__fish_seen_subcommand_from 'blame'" -s "h" -l "help" -d "Print help" # global
complete -c "sem" -n "__fish_seen_subcommand_from 'graph'" -l "entity" -d "Show dependencies/dependents for a specific entity" # global
complete -c "sem" -n "__fish_seen_subcommand_from 'graph'" -l "format" -d "Output format" -xa "terminal json" # global
complete -c "sem" -n "__fish_seen_subcommand_from 'graph'" -l "file-exts" -d "Only include files with these extensions" # global
complete -c "sem" -n "__fish_seen_subcommand_from 'graph'" -s "h" -l "help" -d "Print help" # global