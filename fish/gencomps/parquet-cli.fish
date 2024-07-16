complete -c parquet-cli -n __fish_use_subcommand -x -a version -d "Print the parquet-cli version"
complete -c parquet-cli -n __fish_use_subcommand -x -a schema -d "Print the file's schema" -r
complete -c parquet-cli -n __fish_use_subcommand -x -a col-stats -d "Show column numbers and statistics from a file" -r
complete -c parquet-cli -n __fish_use_subcommand -x -a row-stats -d "Show statistics about each row in a file" -r
complete -c parquet-cli -n __fish_use_subcommand -x -a aggregate -d "Show aggregate statistics grouped by values in another column" -r
complete -c parquet-cli -n __fish_use_subcommand -x -a dump -d "Print the content of the file" -r
complete -c parquet-cli -n __fish_use_subcommand -x -a info -d "Print general information about the parquet file" -r

complete -c parquet-cli -n "__fish_seen_subcommand_from aggregate" -s o -l output -d "Output format" -x -a tab
complete -c parquet-cli -n "__fish_seen_subcommand_from aggregate" -s g -l group-by -d "Aggregate stats grouped by the values of this column" -x
complete -c parquet-cli -n "__fish_seen_subcommand_from aggregate" -s c -l columns -d "Restrict the output to the following columns" -x

complete -c parquet-cli -n "__fish_seen_subcommand_from schema" -s o -l output -d "Output format" -x -a tab

complete -c parquet-cli -n "__fish_seen_subcommand_from col-stats" -s o -l output -d "Output format" -x -a tab
complete -c parquet-cli -n "__fish_seen_subcommand_from col-stats" -s v -l verbose -d "Print additional information"
complete -c parquet-cli -n "__fish_seen_subcommand_from col-stats" -s c -l columns -d "Restrict the output to the following columns" -x

complete -c parquet-cli -n "__fish_seen_subcommand_from row-stats" -s o -l output -d "Output format" -x -a tab
complete -c parquet-cli -n "__fish_seen_subcommand_from row-stats" -s c -l columns -d "Restrict the output to the following columns" -x
complete -c parquet-cli -n "__fish_seen_subcommand_from row-stats" -l limit -d "Limit the output to the given number of rows" -x
complete -c parquet-cli -n "__fish_seen_subcommand_from row-stats" -l offset -d "Begin the output at this row offset" -x

complete -c parquet-cli -n "__fish_seen_subcommand_from info" -s o -l output -d "Output format" -x -a tab

complete -c parquet-cli -n "__fish_seen_subcommand_from dump" -s o -l output -d "Output format" -x -a tab
complete -c parquet-cli -n "__fish_seen_subcommand_from dump" -s c -l columns -d "Restrict the output to the following columns" -x
complete -c parquet-cli -n "__fish_seen_subcommand_from dump" -l limit -d "Limit the output to the given number of rows" -x
complete -c parquet-cli -n "__fish_seen_subcommand_from dump" -l offset -d "Begin the output at this row offset" -x
