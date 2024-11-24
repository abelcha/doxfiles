complete -c ass -l quiet -s q
complete -c ass -l verbose -s v
complete -c ass -l chrome-tracing -d 'Output chrome tracing format to a file'
complete -c ass -n __fish_no_arguments -s V -l version -d 'Print version'
complete -c ass -n '__fish_seen_subcommand_from compress' -l chrome-tracing -d 'Output chrome tracing format to a file'
complete -c ass -n '__fish_seen_subcommand_from compress' -s c -l compression -d ' The type of compression to use [default: lzfse]' -x -a "lzfse zlib lzvn"
complete -c ass -n '__fish_seen_subcommand_from compress' -s l -l level -d 'The minimum compression ratio [default: 0.95]'
complete -c ass -n '__fish_seen_subcommand_from compress' -s r -l minimum-compression-ratio -d '<MINIMUM_COMPRESSION_RATIO>'
complete -c ass -n '__fish_seen_subcommand_from decompress' -l chrome-tracing -d 'Output chrome tracing format to a file'
complete -c ass -n '__fish_seen_subcommand_from info' -l chrome-tracing -d 'Output chrome tracing format to a file'
complete -c ass -s h -l help -d Print\ help\ \(see\ more\ with\ \'--help\'\)
complete -f -c ass -n __fish_use_subcommand -a compress -d 'Compress files'
complete -f -c ass -n __fish_use_subcommand -a decompress -d 'Decompress files'
complete -f -c ass -n __fish_use_subcommand -a help -d 'Print this message or the help of the given subcommand(s)'
complete -f -c ass -n __fish_use_subcommand -a info -d 'Get info about compression for file(s)'
