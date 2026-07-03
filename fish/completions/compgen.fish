# completions for compgen
complete -c compgen -s m -l model -d "Model to use (OpenRouter slug)" \
    -x -a "(compgen --list-models)"
complete -c compgen -s S -l subcommands -d "Subcommands to seed crawl"
complete -c compgen -s p -l prompt -d "Extra prompt instructions"
complete -c compgen -s U -l use -d "Use cached response (template {} = cmd)"
complete -c compgen -l max-depth -d "Max subcommand crawl depth"
complete -c compgen -s j -l concurrency -d "Parallel subcommand crawls"
complete -c compgen -l force -d "Overwrite existing completion file"
complete -c compgen -l no-cache -d "Skip cache"
complete -c compgen -l list-models -d "List OpenRouter models"
