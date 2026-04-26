complete -c vx -s h -l help -d "Print help" # global
complete -c vx -s V -l version -d "Print version" # global
complete -f -c vx -n __fish_use_subcommand -a tree -d "Print tree views of a Vortex file (layout tree or array tree)" # sub
complete -f -c vx -n __fish_use_subcommand -a convert -d "Convert a Parquet file to a Vortex file. Chunking occurs on Parquet RowGroup boundaries" # sub
complete -f -c vx -n __fish_use_subcommand -a browse -d "Interactively browse the Vortex file" # sub
complete -f -c vx -n __fish_use_subcommand -a inspect -d "Inspect Vortex file footer and metadata" # sub
complete -f -c vx -n __fish_use_subcommand -a query -d "Execute a SQL query against a Vortex file using DataFusion" # sub
complete -f -c vx -n __fish_use_subcommand -a segments -d "Display segment information for a Vortex file" # sub
complete -f -c vx -n __fish_use_subcommand -a help -d "Print this message or the help of the given subcommand(s)" # sub
complete -c vx -n "__fish_seen_subcommand_from 'tree'" -s h -l help -d "Print help" # global
complete -f -c vx -n "__fish_seen_subcommand_from 'tree'" -a array -d "Display the array encoding tree (loads and materializes arrays)" # sub
complete -f -c vx -n "__fish_seen_subcommand_from 'tree'" -a layout -d "Display the layout tree structure (metadata only, no array loading)" # sub
complete -f -c vx -n "__fish_seen_subcommand_from 'tree'" -a help -d "Print this message or the help of the given subcommand(s)" # sub
complete -c vx -n "__fish_seen_subcommand_from 'convert'" -s s -l strategy -d "Compression strategy" -xa "{btrblocks\\tUse the BtrBlocks compressor strategy \(default\),compact\\tUse the Compact compression strategy for more aggressive compression}" # global
complete -c vx -n "__fish_seen_subcommand_from 'convert'" -s q -l quiet -d "Execute quietly. No output will be printed" # global
complete -c vx -n "__fish_seen_subcommand_from 'convert'" -s h -l help -d "Print help (see a summary with '-h')" # global
complete -c vx -n "__fish_seen_subcommand_from 'browse'" -s h -l help -d "Print help" # global
complete -c vx -n "__fish_seen_subcommand_from 'inspect'" -l json -d "Output as JSON" # global
complete -c vx -n "__fish_seen_subcommand_from 'inspect'" -s h -l help -d "Print help" # global
complete -f -c vx -n "__fish_seen_subcommand_from 'inspect'" -a eof -d "Read and display the EOF marker (8 bytes at end of file)" # sub
complete -f -c vx -n "__fish_seen_subcommand_from 'inspect'" -a postscript -d "Read and display the postscript" # sub
complete -f -c vx -n "__fish_seen_subcommand_from 'inspect'" -a footer -d "Read and display all footer segments" # sub
complete -c vx -n "__fish_seen_subcommand_from 'inspect eof'" -l json -d "Output as JSON" # subcommands flags
complete -c vx -n "__fish_seen_subcommand_from 'inspect postscript'" -l json -d "Output as JSON" # subcommands flags
complete -c vx -n "__fish_seen_subcommand_from 'inspect footer'" -l json -d "Output as JSON" # subcommands flags
complete -c vx -n "__fish_seen_subcommand_from 'query'" -s s -l sql -d "SQL query to execute. The table is available as 'data'. Example: \"SELECT * FROM data WHERE col > 10 LIMIT 100\"" # global
complete -c vx -n "__fish_seen_subcommand_from 'query'" -s h -l help -d "Print help" # global
complete -c vx -n "__fish_seen_subcommand_from 'segments'" -s h -l help -d "Print help" # global
