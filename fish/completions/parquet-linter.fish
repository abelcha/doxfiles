complete -c "parquet-linter" -l "rules" -d "Only run specific rules (comma-separated)" -xa "{}" # global
complete -c "parquet-linter" -l "severity" -d "Minimum severity to display" -xa "{}" # global
complete -c "parquet-linter" -l "export-prescription" -d "Write merged prescription DSL from lint results to a text file" -xa "{}" # global
complete -c "parquet-linter" -s "h" -l "help" -d "Print help" # global
complete -f -c "parquet-linter" -n "__fish_use_subcommand" -a "rewrite" -d "Rewrite a parquet file using lint results or a prescription" # sub
complete -f -c "parquet-linter" -n "__fish_use_subcommand" -a "help" -d "Print this message or the help of the given subcommand(s)" # sub
complete -c "parquet-linter" -n "__fish_seen_subcommand_from 'rewrite'" -l "rules" -d "Only run specific rules (comma-separated)" -xa "{}" # subcommands flags
complete -c "parquet-linter" -n "__fish_seen_subcommand_from 'rewrite'" -l "severity" -d "Minimum severity to display" -xa "{}" # subcommands flags
complete -c "parquet-linter" -n "__fish_seen_subcommand_from 'rewrite'" -l "export-prescription" -d "Write merged prescription DSL from lint results to a text file" -xa "{}" # subcommands flags
complete -c "parquet-linter" -n "__fish_seen_subcommand_from 'help'" -l "rules" -d "Only run specific rules (comma-separated)" -xa "{}" # subcommands flags
complete -c "parquet-linter" -n "__fish_seen_subcommand_from 'help'" -l "severity" -d "Minimum severity to display" -xa "{}" # subcommands flags
complete -c "parquet-linter" -n "__fish_seen_subcommand_from 'help'" -l "export-prescription" -d "Write merged prescription DSL from lint results to a text file" -xa "{}" # subcommands flags
complete -c "parquet-linter" -n "__fish_seen_subcommand_from 'rewrite'" -s "o" -l "output" -d "Output file path" # global
complete -c "parquet-linter" -n "__fish_seen_subcommand_from 'rewrite'" -l "rules" -d "Only apply fixes from specific rules (comma-separated)" # global
complete -c "parquet-linter" -n "__fish_seen_subcommand_from 'rewrite'" -l "from-prescription" -d "Apply a prescription DSL file directly (without running lint)" # global
complete -c "parquet-linter" -n "__fish_seen_subcommand_from 'rewrite'" -l "dry-run" -d "Show what would be fixed without writing" # global
complete -c "parquet-linter" -n "__fish_seen_subcommand_from 'rewrite'" -l "export-prescription" -d "Write merged prescription DSL to a text file" # global
complete -c "parquet-linter" -n "__fish_seen_subcommand_from 'rewrite'" -s "h" -l "help" -d "Print help" # global
complete -c "parquet-linter" -n "__fish_seen_subcommand_from 'help'" -l "help" # global