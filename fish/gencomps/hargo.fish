complete -f -c hargo -n __fish_use_subcommand -a fetch -d 'Fetch URLs in .har'
complete -f -c hargo -n __fish_use_subcommand -a curl -d 'Convert .har to curl'
complete -f -c hargo -n __fish_use_subcommand -a run -d 'Run .har file'
complete -c hargo -n '__fish_seen_subcommand_from run' -l ignore-har-cookies -d 'Ignore the cookies provided by the HAR entries'
complete -c hargo -n '__fish_seen_subcommand_from run' -l insecure-skip-verify -d 'Skips the TLS security checks'
complete -f -c hargo -n __fish_use_subcommand -a validate -d 'Validate .har file'
complete -f -c hargo -n __fish_use_subcommand -a dump -d 'Dump .har file'
complete -f -c hargo -n __fish_use_subcommand -a load -d 'Load test .har file'
complete -c hargo -n '__fish_seen_subcommand_from load' -l workers -d 'value, -w value    Number of workers (default 10) (default: 10)'
complete -c hargo -n '__fish_seen_subcommand_from load' -l duration -d 'value, -d value   Test duration in seconds (default 60) (default: 60)'
complete -c hargo -n '__fish_seen_subcommand_from load' -l influxurl -d 'value, -u value  InfluxDB URL'
complete -c hargo -n '__fish_seen_subcommand_from load' -l ignore-har-cookies -d 'Ignore the cookies provided by the HAR entries'
complete -c hargo -n '__fish_seen_subcommand_from load' -l insecure-skip-verify -d 'Skips the TLS security checks'
complete -f -c hargo -n __fish_use_subcommand -a help -d 'Shows a list of commands or help for one command'
complete -c hargo -l debug -d 'Show debug output'
complete -c hargo -s h -l help -d 'show help'
complete -c hargo -n __fish_no_arguments -s v -l version -d 'print the version'
