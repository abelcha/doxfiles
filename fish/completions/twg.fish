complete -c "twg" -s "h" -l "help" -d "show this help message and exit" # global
complete -c "twg" -s "o" -l "output" -d "Output file. For --fix, it saves the repaired JSON. For --print, it saves the formatted JSON. If omitted, prints to stdout." # global
complete -c "twg" -s "v" -l "version" -d "show program's version number and exit" # global
complete -c "twg" -l "fix" -d "Attempt to automatically repair malformed JSON and exit." # global
complete -c "twg" -s "p" -l "print" -d "Print formatted and syntax-highlighted JSON to stdout and exit." # global
complete -c "twg" -l "indent" -d "Number of spaces for indentation (default: 2)." # global
complete -c "twg" -l "rebuild-db" -d "Force rebuild of the internal SQLite database cache." # global