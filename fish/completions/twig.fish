complete -c "twig" -s "h" -l "help" -d "show this help message and exit" # global
complete -c "twig" -s "o" -l "output" -d "Output file. For --fix, it saves the repaired JSON. For --print, it saves the formatted JSON. If omitted, prints to stdout." # global
complete -c "twig" -s "v" -l "version" -d "show program's version number and exit" # global
complete -c "twig" -l "fix" -d "Attempt to automatically repair malformed JSON and exit." # global
complete -c "twig" -s "p" -l "print" -d "Print formatted and syntax-highlighted JSON to stdout and exit." # global
complete -c "twig" -l "indent" -d "Number of spaces for indentation (default: 2)." # global
complete -c "twig" -l "rebuild-db" -d "Force rebuild of the internal SQLite database cache." # global