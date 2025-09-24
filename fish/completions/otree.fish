complete -c "otree" -l "config" -d "The config file to use. Default will try to read `~/.config/otree.toml`" # global
complete -c "otree" -s "t" -l "content-type" -d "The data content type. If the file extension is one of [\"json\", \"yaml\", \"yml\", \"xml\", \"toml\", \"hcl\", \"jsonl\"], this can be automatically" -xa "json yaml toml xml hcl jsonl" # global
complete -c "otree" -s "o" -l "to" -d "Convert data to another content type and print to stdout" -xa "json yaml toml xml hcl jsonl" # global
complete -c "otree" -l "disable-header" -d "Don't show the header" # global
complete -c "otree" -l "disable-footer" -d "Don't show the footer" # global
complete -c "otree" -l "disable-filter" -d "Disable the filter" # global
complete -c "otree" -l "tree-disable-selected-highlight" -d "Disable highlight the selected item in tree" # global
complete -c "otree" -l "tree-selected-symbol" -d "The symbol to indicate the selected item in tree" # global
complete -c "otree" -l "filter-ignore-case" -d "Ignore case when filtering" # global
complete -c "otree" -l "filter-exclude-mode" -d "Hide items that do not match the filter" # global
complete -c "otree" -s "f" -l "header-format" -d "The header format" # global
complete -c "otree" -s "V" -l "vertical" -d "Use vertical layout" # global
complete -c "otree" -s "H" -l "horizontal" -d "Use horizontal layout" # global
complete -c "otree" -s "s" -l "size" -d "The tree widget size (percent), should be in range [10, 80]" # global
complete -c "otree" -l "disable-highlight" -d "Disable syntax highlighting in data block" # global
complete -c "otree" -l "show-config" -d "Print loaded config" # global
complete -c "otree" -l "ignore-config" -d "Force to use the default config" # global
complete -c "otree" -l "build-info" -d "Print build info" # global
complete -c "otree" -l "max-data-size" -d "Limit data size to read. In MiB" # global
complete -c "otree" -s "R" -l "live-reload" -d "Watch file changes, reload tui if updates" # global
complete -c "otree" -l "debug" -d "Write debug logs into this file. The file will be created if not exists" # global
complete -c "otree" -s "v" -l "version" -d "Print version" # global
complete -c "otree" -s "h" -l "help" -d "Print help (see a summary with '-h')" # global