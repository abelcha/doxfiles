complete -c pumas -n "__fish_use_subcommand" -s h -l help -d 'Print help'
complete -c pumas -n "__fish_use_subcommand" -s V -l version -d 'Print version'
complete -c pumas -n "__fish_use_subcommand" -f -a "run" -d 'Run the power usage monitor'
complete -c pumas -n "__fish_use_subcommand" -f -a "generate-completion" -d 'Print a shell completion script to stdout'
complete -c pumas -n "__fish_use_subcommand" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c pumas -n "__fish_seen_subcommand_from run" -s i -l sample-rate -d 'Update rate (milliseconds): min: 100' -r
complete -c pumas -n "__fish_seen_subcommand_from run" -l history-size -d 'History buffer size: default: 128' -r
complete -c pumas -n "__fish_seen_subcommand_from run" -l accent-color -d 'Accent color for labels: ASCII code in 0~255, default: green' -r
complete -c pumas -n "__fish_seen_subcommand_from run" -l gauge-fg-color -d 'Gauge foreground color: ASCII code in 0~255, default: green' -r
complete -c pumas -n "__fish_seen_subcommand_from run" -l gauge-bg-color -d 'Gauge background color: ASCII code in 0~255, default: white' -r
complete -c pumas -n "__fish_seen_subcommand_from run" -l history-fg-color -d 'History foreground color: ASCII code in 0~255, default: blue' -r
complete -c pumas -n "__fish_seen_subcommand_from run" -l history-bg-color -d 'History background color: ASCII code in 0~255, default: white' -r
complete -c pumas -n "__fish_seen_subcommand_from run" -l json -d 'Print metrics to stdout as JSON instead of running the UI'
complete -c pumas -n "__fish_seen_subcommand_from run" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c pumas -n "__fish_seen_subcommand_from run" -s V -l version -d 'Print version'
complete -c pumas -n "__fish_seen_subcommand_from generate-completion" -s h -l help -d 'Print help'
complete -c pumas -n "__fish_seen_subcommand_from generate-completion" -s V -l version -d 'Print version'
complete -c pumas -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from run; and not __fish_seen_subcommand_from generate-completion; and not __fish_seen_subcommand_from help" -f -a "run" -d 'Run the power usage monitor'
complete -c pumas -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from run; and not __fish_seen_subcommand_from generate-completion; and not __fish_seen_subcommand_from help" -f -a "generate-completion" -d 'Print a shell completion script to stdout'
complete -c pumas -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from run; and not __fish_seen_subcommand_from generate-completion; and not __fish_seen_subcommand_from help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
