complete -c "gw" -s "v" -l "verbose" # global
complete -c "gw" -s "q" -l "quiet" # global
complete -c "gw" -l "color" # global
complete -c "gw" -l "json" # global
complete -c "gw" -s "h" -l "help" -d "Print help" # global
complete -c "gw" -s "V" -l "version" -d "Print version" # global
complete -f -c "gw" -n "__fish_use_subcommand" -a "add" # sub
complete -f -c "gw" -n "__fish_use_subcommand" -a "del" # sub
complete -f -c "gw" -n "__fish_use_subcommand" -a "list" # sub
complete -f -c "gw" -n "__fish_use_subcommand" -a "status" # sub
complete -f -c "gw" -n "__fish_use_subcommand" -a "apply" # sub
complete -f -c "gw" -n "__fish_use_subcommand" -a "sync" # sub
complete -f -c "gw" -n "__fish_use_subcommand" -a "verify" # sub
complete -f -c "gw" -n "__fish_use_subcommand" -a "note" # sub
complete -f -c "gw" -n "__fish_use_subcommand" -a "info" # sub
complete -f -c "gw" -n "__fish_use_subcommand" -a "lock" # sub
complete -f -c "gw" -n "__fish_use_subcommand" -a "unlock" # sub
complete -f -c "gw" -n "__fish_use_subcommand" -a "gc" # sub
complete -f -c "gw" -n "__fish_use_subcommand" -a "cd" # sub
complete -f -c "gw" -n "__fish_use_subcommand" -a "exec" # sub
complete -f -c "gw" -n "__fish_use_subcommand" -a "completion" # sub
complete -f -c "gw" -n "__fish_use_subcommand" -a "shell-init" # sub
complete -f -c "gw" -n "__fish_use_subcommand" -a "help" -d "Print this message or the help of the given subcommand(s)" # sub
complete -c "gw" -n "__fish_seen_subcommand_from 'add'" -s "v" -l "verbose" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'add'" -s "q" -l "quiet" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'add'" -l "color" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'add'" -l "json" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'del'" -s "v" -l "verbose" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'del'" -s "q" -l "quiet" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'del'" -l "color" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'del'" -l "json" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'list'" -s "v" -l "verbose" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'list'" -s "q" -l "quiet" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'list'" -l "color" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'list'" -l "json" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'status'" -s "v" -l "verbose" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'status'" -s "q" -l "quiet" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'status'" -l "color" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'status'" -l "json" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'apply'" -s "v" -l "verbose" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'apply'" -s "q" -l "quiet" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'apply'" -l "color" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'apply'" -l "json" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'sync'" -s "v" -l "verbose" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'sync'" -s "q" -l "quiet" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'sync'" -l "color" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'sync'" -l "json" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'verify'" -s "v" -l "verbose" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'verify'" -s "q" -l "quiet" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'verify'" -l "color" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'verify'" -l "json" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'note'" -s "v" -l "verbose" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'note'" -s "q" -l "quiet" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'note'" -l "color" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'note'" -l "json" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'info'" -s "v" -l "verbose" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'info'" -s "q" -l "quiet" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'info'" -l "color" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'info'" -l "json" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'lock'" -s "v" -l "verbose" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'lock'" -s "q" -l "quiet" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'lock'" -l "color" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'lock'" -l "json" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'unlock'" -s "v" -l "verbose" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'unlock'" -s "q" -l "quiet" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'unlock'" -l "color" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'unlock'" -l "json" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'gc'" -s "v" -l "verbose" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'gc'" -s "q" -l "quiet" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'gc'" -l "color" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'gc'" -l "json" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'cd'" -s "v" -l "verbose" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'cd'" -s "q" -l "quiet" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'cd'" -l "color" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'cd'" -l "json" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'exec'" -s "v" -l "verbose" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'exec'" -s "q" -l "quiet" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'exec'" -l "color" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'exec'" -l "json" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'completion'" -s "v" -l "verbose" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'completion'" -s "q" -l "quiet" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'completion'" -l "color" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'completion'" -l "json" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'shell-init'" -s "v" -l "verbose" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'shell-init'" -s "q" -l "quiet" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'shell-init'" -l "color" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'shell-init'" -l "json" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'help'" -s "v" -l "verbose" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'help'" -s "q" -l "quiet" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'help'" -l "color" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'help'" -l "json" # subcommands flags
complete -c "gw" -n "__fish_seen_subcommand_from 'add'" -s "b" -l "base" -xa "{}" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'add'" -s "B" -l "branch" -xa "{}" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'add'" -l "path" -xa "{}" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'add'" -s "h" -l "help" -d "Print help" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'del'" -s "f" -l "force" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'del'" -s "D" -l "delete-branch" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'del'" -s "h" -l "help" -d "Print help" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'list'" -s "v" -l "verbose" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'list'" -s "h" -l "help" -d "Print help" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'status'" -l "changes-detail" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'status'" -l "recent" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'status'" -s "h" -l "help" -d "Print help" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'apply'" -s "t" -l "target" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'apply'" -l "merge" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'apply'" -l "squash" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'apply'" -l "rebase" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'apply'" -s "c" -l "cleanup" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'apply'" -s "h" -l "help" -d "Print help" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'sync'" -l "base" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'sync'" -l "rebase" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'sync'" -l "merge" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'sync'" -s "A" -l "all" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'sync'" -s "h" -l "help" -d "Print help" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'verify'" -s "h" -l "help" -d "Print help" -xa "{}" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'note'" -s "h" -l "help" -d "Print help" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'info'" -s "h" -l "help" -d "Print help" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'lock'" -s "h" -l "help" -d "Print help" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'unlock'" -s "h" -l "help" -d "Print help" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'gc'" -l "prune" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'gc'" -s "h" -l "help" -d "Print help" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'cd'" -l "shell" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'cd'" -s "h" -l "help" -d "Print help" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'exec'" -s "A" -l "all" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'exec'" -s "w" -l "worktree" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'exec'" -l "parallel" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'exec'" -l "fail-fast" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'exec'" -s "h" -l "help" -d "Print help" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'completion'" -s "h" -l "help" -d "Print help" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'shell-init'" -l "install" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'shell-init'" -l "apply" # global
complete -c "gw" -n "__fish_seen_subcommand_from 'shell-init'" -s "h" -l "help" -d "Print help" # global