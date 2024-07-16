complete -f -c glow -n __fish_use_subcommand -a completion -d 'Generate the autocompletion script for the specified shell'
complete -f -c glow -n __fish_use_subcommand -a config -d 'Edit the glow config file'
complete -f -c glow -n __fish_use_subcommand -a stash -d 'Stash a markdown'
complete -c glow -s a -l all -d 'show system files and directories (TUI-mode only)'
complete -c glow -l config -d 'string   config file (default /Users/abelchalier/Library/Preferences/glow/glow.yml)'
complete -c glow -s h -l help -d 'help for glow'
complete -c glow -s l -l local -d 'show local files only; no network (TUI-mode only)'
complete -c glow -s p -l pager -d 'display with pager'
complete -c glow -s s -l style -d 'string    style name or JSON path (default "auto")'
complete -c glow -n __fish_no_arguments -s v -l version -d 'version for glow'
complete -c glow -s w -l width -d 'uint      word-wrap at width'
