complete -c "git-grab" -s "h" -l "help" -d "Prints help information" # global
complete -c "git-grab" -s "c" -l "clipboard" -d "Paste a URL to clone from the clipboard." # global
complete -c "git-grab" -l "home" -d "The directory to use as \"grab home\", where the URLs will be cloned into. Overrides the GRAB_HOME environment variable if set." # global
complete -c "git-grab" -s "n" -l "dry-run" -d "Don't clone the repository but print what would be done." # global
complete -c "git-grab" -s "V" -l "version" -d "Prints version information" # global