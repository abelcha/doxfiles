complete -c "lumen" -l "config" -d "Path to configuration file" # global
complete -c "lumen" -s "p" -l "provider" -xa "openai phind groq claude ollama openrouter deepseek" # global
complete -c "lumen" -s "k" -l "api-key" # global
complete -c "lumen" -s "m" -l "model" # global
complete -c "lumen" -s "h" -l "help" -d "Print help" # global
complete -c "lumen" -s "V" -l "version" -d "Print version" # global
complete -f -c "lumen" -n "__fish_use_subcommand" -a "explain" -d "Explain the changes in a commit, or the current diff" # sub
complete -f -c "lumen" -n "__fish_use_subcommand" -a "list" -d "List all commits in an interactive fuzzy-finder, and summarize the changes" # sub
complete -f -c "lumen" -n "__fish_use_subcommand" -a "draft" -d "Generate a commit message for the staged changes" # sub
complete -f -c "lumen" -n "__fish_use_subcommand" -a "operate" # sub
complete -f -c "lumen" -n "__fish_use_subcommand" -a "help" -d "Print this message or the help of the given subcommand(s)" # sub
complete -c "lumen" -n "__fish_seen_subcommand_from 'explain'" -l "config" -d "Path to configuration file" # subcommands flags
complete -c "lumen" -n "__fish_seen_subcommand_from 'explain'" -s "p" -l "provider" -xa "openai phind groq claude ollama openrouter deepseek" # subcommands flags
complete -c "lumen" -n "__fish_seen_subcommand_from 'explain'" -s "k" -l "api-key" # subcommands flags
complete -c "lumen" -n "__fish_seen_subcommand_from 'explain'" -s "m" -l "model" # subcommands flags
complete -c "lumen" -n "__fish_seen_subcommand_from 'list'" -l "config" -d "Path to configuration file" # subcommands flags
complete -c "lumen" -n "__fish_seen_subcommand_from 'list'" -s "p" -l "provider" -xa "openai phind groq claude ollama openrouter deepseek" # subcommands flags
complete -c "lumen" -n "__fish_seen_subcommand_from 'list'" -s "k" -l "api-key" # subcommands flags
complete -c "lumen" -n "__fish_seen_subcommand_from 'list'" -s "m" -l "model" # subcommands flags
complete -c "lumen" -n "__fish_seen_subcommand_from 'draft'" -l "config" -d "Path to configuration file" # subcommands flags
complete -c "lumen" -n "__fish_seen_subcommand_from 'draft'" -s "p" -l "provider" -xa "openai phind groq claude ollama openrouter deepseek" # subcommands flags
complete -c "lumen" -n "__fish_seen_subcommand_from 'draft'" -s "k" -l "api-key" # subcommands flags
complete -c "lumen" -n "__fish_seen_subcommand_from 'draft'" -s "m" -l "model" # subcommands flags
complete -c "lumen" -n "__fish_seen_subcommand_from 'operate'" -l "config" -d "Path to configuration file" # subcommands flags
complete -c "lumen" -n "__fish_seen_subcommand_from 'operate'" -s "p" -l "provider" -xa "openai phind groq claude ollama openrouter deepseek" # subcommands flags
complete -c "lumen" -n "__fish_seen_subcommand_from 'operate'" -s "k" -l "api-key" # subcommands flags
complete -c "lumen" -n "__fish_seen_subcommand_from 'operate'" -s "m" -l "model" # subcommands flags
complete -c "lumen" -n "__fish_seen_subcommand_from 'help'" -l "config" -d "Path to configuration file" # subcommands flags
complete -c "lumen" -n "__fish_seen_subcommand_from 'help'" -s "p" -l "provider" -xa "openai phind groq claude ollama openrouter deepseek" # subcommands flags
complete -c "lumen" -n "__fish_seen_subcommand_from 'help'" -s "k" -l "api-key" # subcommands flags
complete -c "lumen" -n "__fish_seen_subcommand_from 'help'" -s "m" -l "model" # subcommands flags
complete -c "lumen" -n "__fish_seen_subcommand_from 'explain'" -l "diff" -d "Explain current diff" # global
complete -c "lumen" -n "__fish_seen_subcommand_from 'explain'" -l "staged" -d "Use staged diff" # global
complete -c "lumen" -n "__fish_seen_subcommand_from 'explain'" -s "q" -l "query" -d "Ask a question instead of summary" # global
complete -c "lumen" -n "__fish_seen_subcommand_from 'explain'" -s "h" -l "help" -d "Print help" # global
complete -c "lumen" -n "__fish_seen_subcommand_from 'list'" -s "h" -l "help" -d "Print help" # global
complete -c "lumen" -n "__fish_seen_subcommand_from 'draft'" -s "c" -l "context" -d "Add context to communicate intent" -xa "{}" # global
complete -c "lumen" -n "__fish_seen_subcommand_from 'draft'" -s "h" -l "help" -d "Print help" # global
complete -c "lumen" -n "__fish_seen_subcommand_from 'operate'" -s "h" -l "help" -d "Print help" # global