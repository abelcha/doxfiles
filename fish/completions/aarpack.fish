complete -f -c aarpack -n __fish_use_subcommand -a autocomplete -d 'Generate shell completion scripts for the executable'
complete -f -c aarpack -n __fish_use_subcommand -a c -d 'A demonstration of what ConsoleKit can do'
complete -f -c aarpack -n __fish_use_subcommand -a compress -d 'A demonstration of what ConsoleKit can do'
complete -f -c aarpack -n __fish_use_subcommand -a extract -d 'A demonstration of what ConsoleKit can do'
complete -f -c aarpack -n __fish_use_subcommand -a x -d 'A demonstration of what ConsoleKit can do'

complete --command aarpack --condition '__fish_seen_subcommand_from compress c' -l rm
complete --command aarpack --condition '__fish_seen_subcommand_from compress c' -l algo -xa 'lzfse lz4 zlib lzma lzbitmap brotli'
complete --command aarpack --condition '__fish_seen_subcommand_from extract x' -l override
complete --command aarpack --condition '__fish_seen_subcommand_from extract x c compress' -l progress
