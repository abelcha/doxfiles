complete -c "tspin" -s "f" -l "follow" -d "Follow the contents of a file" # global
complete -c "tspin" -s "p" -l "print" -d "Print the output to stdout" # global
complete -c "tspin" -l "config-path" -d "Provide a custom path to a configuration file" # global
complete -c "tspin" -s "e" -l "exec" -d "Run command and view the output in a pager" # global
complete -c "tspin" -l "highlight" -d "Highlights in the form color:word1,word2" # global
complete -c "tspin" -l "enable" -d "Enable specific highlighters" -xa "numbers urls emails pointers dates paths quotes key-value-pairs uuids ipv4 processes json" # global
complete -c "tspin" -l "disable" -d "Disable specific highlighters" -xa "numbers urls emails pointers dates paths quotes key-value-pairs uuids ipv4 processes json" # global
complete -c "tspin" -l "extras" -d "Enable extra highlighters (e.g., --extras ipv6)" -xa "ipv6 jvm-stack-trace" # global
complete -c "tspin" -l "disable-builtin-keywords" -d "Disable the highlighting of all builtin keyword groups (booleans, nulls, log severities and common REST verbs)" # global
complete -c "tspin" -l "pager" -d "Override the default pager command used by tspin. (e.g. `--pager=\"ov -f [FILE]\"`) [env: TAILSPIN_PAGER=]" # global
complete -c "tspin" -s "h" -l "help" -d "Print help" # global
complete -c "tspin" -s "V" -l "version" -d "Print version" # global