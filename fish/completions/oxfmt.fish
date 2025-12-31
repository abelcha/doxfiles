complete -c "oxfmt" -l "check" -d "Check mode - check if files are formatted, also show statistics" # global
complete -c "oxfmt" -l "list-different" -d "List mode - list files that would be changed" # global
complete -c "oxfmt" -s "c" -l "config" -d "Path to the configuration file" # global
complete -c "oxfmt" -l "ignore-path" -d "Path to ignore file(s). Can be specified multiple times. If not specified, .gitignore and .prettierignore in the current directory are used." # global
complete -c "oxfmt" -l "with-node-modules" -d "Format code in node_modules directory (skipped by default)" # global
complete -c "oxfmt" -l "lsp" -d "Start language server protocol (LSP) server" # global
complete -c "oxfmt" -l "no-error-on-unmatched-pattern" -d "Do not exit with error when pattern is unmatched" # global
complete -c "oxfmt" -l "threads" -d "Number of threads to use. Set to 1 for using only 1 CPU core." # global
complete -c "oxfmt" -s "h" -l "help" -d "Prints help information" # global
complete -c "oxfmt" -s "V" -l "version" -d "Prints version information" # global