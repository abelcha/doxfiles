

# basecommand completion:
#complete -c bloom -n "__fish_seen_subcommand_from create" insert join check set-data get-data show

# list of subcommands
# complete -k -c bloom -n __fish_use_subcommand -x -a create -d "Create a new Bloom filter and store it in the given filename."
# complete -k -c bloom -n __fish_use_subcommand -x -a insert -d "Inserts new values into an existing Bloom filter."
# complete -k -c bloom -n __fish_use_subcommand -x -a join -d "Joins two Bloom filters into one."
# complete -k -c bloom -n __fish_use_subcommand -x -a check -d "Checks values against an existing Bloom filter."
# complete -k -c bloom -n __fish_use_subcommand -x -a set-data -d "Sets the data associated with the Bloom filter."
# complete -k -c bloom -n __fish_use_subcommand -x -a get-data -d "Prints the data associated with the Bloom filter."
# complete -k -c bloom -n __fish_use_subcommand -x -a show -d "Shows various details about a given Bloom filter."

# # for create subcommand, list the options
# complete -c bloom -n __fish_seen_subcommand_from create -s p -l probability -d "The desired false positive probability. (default: 0.01)"
# complete -c bloom -n __fish_seen_subcommand_from create -s n-l "The desired capacity. (default: 10000)"

# # global options:
# complete -c bloom -s --gzip -l "compress bloom file with gzip"
# complete -c bloom -s --interactive -l "interactively add values to the filter"
# complete -c bloom -s --split -l "split the input string"
# complete -c bloom -s --each -l "print each match of a split string individually"
# complete -c bloom -s --delimiter -l "delimiter to use for splitting (default: \",\")"
# complete -c bloom -s --fields -l "fields of split output to use in filter (a single number or a comma-separated list of numbers, zero-indexed)"
# complete -c bloom -s --print-fields -l "fields of split output to print for a successful match (a single number or a comma-separated list of numbers, zero-indexed)."

# `insert`, `join`, `check`, `set-data`, `get-data`, and `show` subcommands do not have specific options.

# complete  -c bloom --no-files
# Basecommand completion:
# complete  -c bloom -n "not __fish_seen_subcommand_from create insert join merge check set-data get-data show" -l version -d "Show the version and exit." 

# List of subcommands
complete -k -c bloom -x -n __fish_use_subcommand -a create -d "Create a new Bloom filter and store it in the given filename."  
complete -k -c bloom -x -n __fish_use_subcommand -a insert -d "Inserts new values into an existing Bloom filter."  -r
complete -k -c bloom -x -n __fish_use_subcommand -a join -d "Joins two Bloom filters into one." 
complete -k -c bloom -x -n __fish_use_subcommand -a check -d "Checks values against an existing Bloom filter." 
complete -k -c bloom -x -n __fish_use_subcommand -a "set-data" -d "Sets the data associated with the Bloom filter." 
complete -k -c bloom -x -n __fish_use_subcommand -a "get-data" -d "Prints the data associated with the Bloom filter." 
complete -k -c bloom -x -n __fish_use_subcommand -a show -d "Shows various details about a given Bloom filter."

# `create` subcommand options:
complete -c bloom -n "__fish_seen_subcommand_from create" -s p -l probability -d "The desired false positive probability."
complete -c bloom -n "__fish_seen_subcommand_from create" -s n -l capacity -d "The desired capacity."
# Global options:
complete -c bloom -s g -l gzip -d "compress bloom file with gzip"
complete -c bloom -s i -l interactive -d "interactively add values to the filter"
complete -c bloom -s s -l split -d "split the input string"
complete -c bloom -s e -l each -d "print each match of a split string individually"
complete -c bloom -s d -l delimiter -d "delimiter to use for splitting (default: \",\")"
complete -c bloom -s f -l fields -d "fields of split output to use in filter (a single number or a comma-separated list of numbers, zero-indexed)"
complete -c bloom -s "pf" -l print-fields -d "fields of split output to print for a successful match (a single number or a comma-separated list of numbers, zero-indexed)."
complete -c bloom -s h -l help -d "show help"
complete -c bloom -s v -l version -d "print the version"