complete -c "rmtrash" -s "f" -l "force" -d "Ignore nonexistant files, and never prompt before removing." # global
complete -c "rmtrash" -s "i" -d "Prompt before every removal." # global
complete -c "rmtrash" -s "I" -d "Prompt once before removing more than three files, or when removing recursively. This option is less intrusive than -i, but still gives protection against most mistakes." # global
complete -c "rmtrash" -l "interactive" -d "Prompt according to WHEN: never, once (-I), or always (-i). If WHEN is not specified, then prompt always." -xa "never once always" # global
complete -c "rmtrash" -s "x" -l "one-file-system" -d "When removing a hierarchy recursively, skip any directory that is on a file system different from that of the corresponding command line argument" # global
complete -c "rmtrash" -l "preserve-root" -d "Do not remove \"/\" (the root directory), which is the default behavior. (default: --preserve-root)" # global
complete -c "rmtrash" -l "no-preserve-root" -d "Do not remove \"/\" (the root directory), which is the default behavior. (default: --preserve-root)" # global
complete -c "rmtrash" -s "r" -o "R" -d "Recursively remove directories and their contents." # global
complete -c "rmtrash" -s "d" -l "dir" -d "Remove empty directories. This option permits you to remove a directory without specifying -r/-R/--recursive, provided that the directory is empty. In other words, rm -d is equivalent to using rmdir." # global
complete -c "rmtrash" -s "v" -l "verbose" -d "Verbose mode; explain at all times what is being done." # global
complete -c "rmtrash" -l "version" -d "Show the version." # global
complete -c "rmtrash" -l "help" -d "Show help information." # global