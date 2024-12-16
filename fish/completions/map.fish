# string replace -a -- {} map  {} --hep
# Completion for map command
complete -c map -f

# Options
complete -c map -s p -l maxprocs -d "Number of commands to run in parallel (default 4)" -x
complete -c map -s n -l max-args -d "Number of arguments in each invocation of a command" -x
complete -c map -s d -l delimiter -d "Delimiter mode" -x -a "s t X"
complete -c map -s f -l fullspeed -d "Fullspeed; do not delay 0.01s before each fork"

# Special case for -N (e.g., -1)
for level in (seq 1 100)
    # complete -c xz -s $level -d "Select compression level"
    complete -c map -s $level -d "Argument per command"
end
# complete -c map -s 2 -d "Single-processing, 2 arguments per command"
# complete -c map -s 3 -d "Single-processing, 3 arguments per command"
# complete -c map -s 4 -d "Single-processing, 4 arguments per command"
#complete -c map -l 100 -d "Single-processing, 5 arguments per command"

# Help option (common convention, though not explicitly mentioned in the usage)
complete -c map -s h -l help -d "Show help message"

# Note: The command template and args are not completed as they are specific to each use case
