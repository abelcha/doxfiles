complete -c rga --wraps rg
complete -c rga -l rga-accurate
complete -c rga -l rga-no-cache
complete -c rga -s h -l help
complete -c rga -l rga-list-adapters
complete -c rga -l rga-no-prefix-filenames
complete -c rga -l rga-print-config-schema
complete -c rga -l rg-help
complete -c rga -l rg-version
complete -c rga -n __fish_no_arguments -s V -l version
complete -f -c rga -n __fish_use_subcommand -a --rga-cache-path -d '<path>'
complete -f -c rga -n __fish_use_subcommand -a Path -d 'to store cache db [default: /Users/abelchalier/Library/Caches/ripgrep-all]'
complete -c rga -s h -d 'shows a concise overview, --help shows more detail and advanced options.'
