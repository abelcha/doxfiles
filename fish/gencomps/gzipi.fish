# complete -f -c gzipi -n __fish_use_subcommand -a gzipi -d 'index     Scan a file to create a new index.'
# complete -f -c gzipi -n __fish_use_subcommand -a gzipi -d 'retrieve  Use a previously created index to quickly access individual'
# complete -f -c gzipi -n __fish_use_subcommand -a lines -d 'in the compressed file.  Loads the index into memory.'
# complete -f -c gzipi -n __fish_use_subcommand -a gzipi -d 'search    Use a previously created index to quickly access a single'
# complete -f -c gzipi -n __fish_use_subcommand -a line -d 'in the compressed file.  Performs a binary search on'
# complete -f -c gzipi -n __fish_use_subcommand -a the -d 'index, which must be sorted on the key.'
# complete -f -c gzipi -n __fish_use_subcommand -a gzipi -d 'repack    Recompress a gzip file and create a new index for it.'
# complete -c gzipi -s h -l help -d 'show this help message and exit'
# complete -c gzipi -s l -d 'LOGLEVEL, --loglevel LOGLEVEL'

# Define completions for the gzipi command
function __fish_gzipi_needs_command
    set -l cmd (commandline -opc)
    if [ (count $cmd) -eq 1 ]
        return 0
    end
    if [ "$cmd[2]" = 'gzipi' ]
        return 0
    end
    return 1
end
function __fish_gzipi_using_command
    set -l cmd (commandline -opc)
    set -e cmd[1]
    if contains $argv[1] $cmd
        return 0
    end
    return 1
end

# Register gzipi and its sub-commands
complete -c gzipi -f -n __fish_gzipi_needs_command -a 'index repack retrieve search' -d 'Sub-command for gzipi'

# Completion for the 'index' command
complete -c gzipi -n '__fish_gzipi_using_command index' -s i -l input-file -d 'Path to the input file' -F
complete -c gzipi -n '__fish_gzipi_using_command index' -s o -l index-file -d 'Path to save gzipped output to'  -F
complete -c gzipi -n '__fish_gzipi_using_command index' -l format -x -a 'csv json' -d 'Format of the input file'
complete -c gzipi -n '__fish_gzipi_using_command index' -l column -d 'Index of key column for CSV'
complete -c gzipi -n '__fish_gzipi_using_command index' -l delimiter -d 'Delimiter for CSV format'
complete -c gzipi -n '__fish_gzipi_using_command index' -l field -d 'Name of key field for JSON format'

# Completion for the 'repack' command
complete -c gzipi -n '__fish_gzipi_using_command repack' -s f -l input-file -d 'Path to the input file' -F
complete -c gzipi -n '__fish_gzipi_using_command repack' -s o -l output-file -d 'Path to save recompressed file to' -F
complete -c gzipi -n '__fish_gzipi_using_command repack' -s i -l index-file -d 'Path to save gzipped index to' -F
complete -c gzipi -n '__fish_gzipi_using_command repack' -l format -x -a 'csv json' -d 'Format of the input file'
complete -c gzipi -n '__fish_gzipi_using_command repack' -l column -d 'Index of key column for CSV'
complete -c gzipi -n '__fish_gzipi_using_command repack' -l delimiter -d 'Delimiter for CSV format'
complete -c gzipi -n '__fish_gzipi_using_command repack' -l field -d 'Name of key field for JSON format'
complete -c gzipi -n '__fish_gzipi_using_command repack' -l chunk-size -d 'Number of lines per gzip chunk'

# Completion for the 'retrieve' and 'search' commands can be added similarly.

# Completion for the 'retrieve' command
complete -c gzipi -n '__fish_gzipi_using_command retrieve' -s h -l help -d 'Show this help message and exit'
complete -c gzipi -n '__fish_gzipi_using_command retrieve' -s k -l keys -d 'Path to the key strings to scan the input file for'
complete -c gzipi -n '__fish_gzipi_using_command retrieve' -s f -l input-file -d 'Path to the input file' -F
complete -c gzipi -n '__fish_gzipi_using_command retrieve' -s o -l output-file -d 'Path to save recompressed file to' -F
complete -c gzipi -n '__fish_gzipi_using_command retrieve' -s i -l index-file -d 'Path to save gzipped index to' -F

# Completion for the 'search' command
complete -c gzipi -n '__fish_gzipi_using_command search' -s h -l help -d 'Show this help message and exit'
complete -c gzipi -n '__fish_gzipi_using_command search' -s k -l keys -d 'Path to the key strings (e.g. domains) to scan the input file for'
complete -c gzipi -n '__fish_gzipi_using_command search' -s f -l input-file -d 'Path to input file to scan' -F
complete -c gzipi -n '__fish_gzipi_using_command search' -s i -l index-file -d 'Local path to read index data from' -F
complete -c gzipi -n '__fish_gzipi_using_command search' -s o -l output-file -d 'Path to save gzipped output to' -F


# Save this script as gzipi.fish in your ~/.config/fish/completions directory.
