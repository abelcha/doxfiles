complete -c "ll" -s "a" -l "all" -d "include dotfiles" # global
complete -c "ll" -s "r" -l "reverse" -d "reverse sort order" # global
complete -c "ll" -s "s" -l "sort" -d "sort by name|size|time|date (prefix '-' to reverse)" -xa "name size time date" # global
complete -c "ll" -s "1" -l "one" -d "one entry per line, name only" # global
complete -c "ll" -s "d" -l "dir" -d "list the directory itself, not its contents" # global
complete -c "ll" -l "nocache" -d "bypass the sqlite size cache" # global
complete -c "ll" -l "timeout" -d "deadline for sizing" # global
complete -c "ll" -l "timing" -d "show per-entry measurement duration" # global
complete -c "ll" -s "v" -l "verbose" -d "print sizing internals (method, raw bytes, notes)" # global
complete -c "ll" -s "h" -l "help" -d "show this message" # global