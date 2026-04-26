complete -c "wtp" -l "version" -d "Show version information" # global
complete -c "wtp" -l "help" -d "show help" # global
complete -c "wtp" -s "h" -d "show help" # global
complete -c "wtp" -l "version" -d "print the version" # global
complete -c "wtp" -s "v" -d "print the version" # global
complete -f -c "wtp" -n "__fish_use_subcommand" -a "add" -d "Create a new worktree" # sub
complete -f -c "wtp" -n "__fish_use_subcommand" -a "list" -d "List all worktrees" # sub
complete -f -c "wtp" -n "__fish_use_subcommand" -a "ls" -d "List all worktrees" # sub
complete -f -c "wtp" -n "__fish_use_subcommand" -a "remove" -d "Remove a worktree" # sub
complete -f -c "wtp" -n "__fish_use_subcommand" -a "rm" -d "Remove a worktree" # sub
complete -f -c "wtp" -n "__fish_use_subcommand" -a "init" -d "Initialize configuration file" # sub
complete -f -c "wtp" -n "__fish_use_subcommand" -a "cd" -d "Output absolute path to worktree" # sub
complete -f -c "wtp" -n "__fish_use_subcommand" -a "hook" -d "Generate shell hook for cd functionality" # sub
complete -f -c "wtp" -n "__fish_use_subcommand" -a "shell-init" -d "Initialize shell with completion and cd functionality" # sub
complete -f -c "wtp" -n "__fish_use_subcommand" -a "help" -d "Shows a list of commands or help for one command" # sub
complete -f -c "wtp" -n "__fish_use_subcommand" -a "h" -d "Shows a list of commands or help for one command" # sub
complete -c "wtp" -n "__fish_seen_subcommand_from 'add'" -s "h" -d "show help" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'add'" -s "v" -d "print the version" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'list'" -s "h" -d "show help" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'list'" -s "v" -d "print the version" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'ls'" -s "h" -d "show help" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'ls'" -s "v" -d "print the version" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'remove'" -s "h" -d "show help" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'remove'" -s "v" -d "print the version" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'rm'" -s "h" -d "show help" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'rm'" -s "v" -d "print the version" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'init'" -s "h" -d "show help" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'init'" -s "v" -d "print the version" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'cd'" -s "h" -d "show help" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'cd'" -s "v" -d "print the version" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'hook'" -s "h" -d "show help" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'hook'" -s "v" -d "print the version" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'shell-init'" -s "h" -d "show help" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'shell-init'" -s "v" -d "print the version" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'help'" -s "h" -d "show help" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'help'" -s "v" -d "print the version" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'h'" -s "h" -d "show help" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'h'" -s "v" -d "print the version" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'add'" -s "b" -l "branch" -d "Create new branch" # global
complete -c "wtp" -n "__fish_seen_subcommand_from 'add'" -s "h" -l "help" -d "show help" # global
complete -c "wtp" -n "__fish_seen_subcommand_from 'add'" -l "version" -d "Show version information" # global
complete -c "wtp" -n "__fish_seen_subcommand_from 'list'" -s "c" -l "compact" -d "Minimize column widths for narrow or redirected output" # global
complete -c "wtp" -n "__fish_seen_subcommand_from 'list'" -l "max-path-width" -d "Maximum width for PATH column (default 56)" # global
complete -c "wtp" -n "__fish_seen_subcommand_from 'list'" -s "q" -l "quiet" -d "Only display worktree paths" # global
complete -c "wtp" -n "__fish_seen_subcommand_from 'list'" -s "h" -l "help" -d "show help" # global
complete -c "wtp" -n "__fish_seen_subcommand_from 'list'" -l "version" -d "Show version information" # global
complete -c "wtp" -n "__fish_seen_subcommand_from 'ls'" -s "c" -l "compact" -d "Minimize column widths for narrow or redirected output" # global
complete -c "wtp" -n "__fish_seen_subcommand_from 'ls'" -l "max-path-width" -d "Maximum width for PATH column (default 56)" # global
complete -c "wtp" -n "__fish_seen_subcommand_from 'ls'" -s "q" -l "quiet" -d "Only display worktree paths" # global
complete -c "wtp" -n "__fish_seen_subcommand_from 'ls'" -s "h" -l "help" -d "show help" # global
complete -c "wtp" -n "__fish_seen_subcommand_from 'ls'" -l "version" -d "Show version information" # global
complete -c "wtp" -n "__fish_seen_subcommand_from 'remove'" -s "f" -l "force" -d "Force removal even if worktree is dirty" # global
complete -c "wtp" -n "__fish_seen_subcommand_from 'remove'" -l "with-branch" -d "Also remove the branch after removing worktree" # global
complete -c "wtp" -n "__fish_seen_subcommand_from 'remove'" -l "force-branch" -d "Force branch deletion even if not merged (requires --with-branch)" # global
complete -c "wtp" -n "__fish_seen_subcommand_from 'remove'" -s "h" -l "help" -d "show help" # global
complete -c "wtp" -n "__fish_seen_subcommand_from 'remove'" -l "version" -d "Show version information" # global
complete -c "wtp" -n "__fish_seen_subcommand_from 'rm'" -s "f" -l "force" -d "Force removal even if worktree is dirty" # global
complete -c "wtp" -n "__fish_seen_subcommand_from 'rm'" -l "with-branch" -d "Also remove the branch after removing worktree" # global
complete -c "wtp" -n "__fish_seen_subcommand_from 'rm'" -l "force-branch" -d "Force branch deletion even if not merged (requires --with-branch)" # global
complete -c "wtp" -n "__fish_seen_subcommand_from 'rm'" -s "h" -l "help" -d "show help" # global
complete -c "wtp" -n "__fish_seen_subcommand_from 'rm'" -l "version" -d "Show version information" # global
complete -c "wtp" -n "__fish_seen_subcommand_from 'init'" -s "h" -l "help" -d "show help" # global
complete -c "wtp" -n "__fish_seen_subcommand_from 'init'" -l "version" -d "Show version information" # global
complete -c "wtp" -n "__fish_seen_subcommand_from 'cd'" -s "h" -l "help" -d "show help" # global
complete -c "wtp" -n "__fish_seen_subcommand_from 'cd'" -l "version" -d "Show version information" # global
complete -c "wtp" -n "__fish_seen_subcommand_from 'hook'" -s "h" -l "help" -d "show help" # global
complete -f -c "wtp" -n "__fish_seen_subcommand_from 'hook'" -a "bash" -d "Generate bash hook script" # sub
complete -f -c "wtp" -n "__fish_seen_subcommand_from 'hook'" -a "zsh" -d "Generate zsh hook script" # sub
complete -f -c "wtp" -n "__fish_seen_subcommand_from 'hook'" -a "fish" -d "Generate fish hook script" # sub
complete -c "wtp" -n "__fish_seen_subcommand_from 'shell-init'" -s "h" -l "help" -d "show help" # global
complete -f -c "wtp" -n "__fish_seen_subcommand_from 'shell-init'" -a "bash" -d "Generate bash initialization script" # sub
complete -f -c "wtp" -n "__fish_seen_subcommand_from 'shell-init'" -a "zsh" -d "Generate zsh initialization script" # sub
complete -f -c "wtp" -n "__fish_seen_subcommand_from 'shell-init'" -a "fish" -d "Generate fish initialization script" # sub
complete -c "wtp" -n "__fish_seen_subcommand_from 'help'" -l "version" -d "Show version information" # global
complete -c "wtp" -n "__fish_seen_subcommand_from 'help'" -l "help" -d "show help" # global
complete -c "wtp" -n "__fish_seen_subcommand_from 'help'" -s "h" -d "show help" # global
complete -c "wtp" -n "__fish_seen_subcommand_from 'help'" -l "version" -d "print the version" # global
complete -c "wtp" -n "__fish_seen_subcommand_from 'help'" -s "v" -d "print the version" # global
complete -f -c "wtp" -n "__fish_seen_subcommand_from 'help'" -a "add" -d "Create a new worktree" # sub
complete -f -c "wtp" -n "__fish_seen_subcommand_from 'help'" -a "list" -d "List all worktrees" # sub
complete -f -c "wtp" -n "__fish_seen_subcommand_from 'help'" -a "ls" -d "List all worktrees" # sub
complete -f -c "wtp" -n "__fish_seen_subcommand_from 'help'" -a "remove" -d "Remove a worktree" # sub
complete -f -c "wtp" -n "__fish_seen_subcommand_from 'help'" -a "rm" -d "Remove a worktree" # sub
complete -f -c "wtp" -n "__fish_seen_subcommand_from 'help'" -a "init" -d "Initialize configuration file" # sub
complete -f -c "wtp" -n "__fish_seen_subcommand_from 'help'" -a "cd" -d "Output absolute path to worktree" # sub
complete -f -c "wtp" -n "__fish_seen_subcommand_from 'help'" -a "hook" -d "Generate shell hook for cd functionality" # sub
complete -f -c "wtp" -n "__fish_seen_subcommand_from 'help'" -a "shell-init" -d "Initialize shell with completion and cd functionality" # sub
complete -f -c "wtp" -n "__fish_seen_subcommand_from 'help'" -a "help" -d "Shows a list of commands or help for one command" # sub
complete -f -c "wtp" -n "__fish_seen_subcommand_from 'help'" -a "h" -d "Shows a list of commands or help for one command" # sub
complete -c "wtp" -n "__fish_seen_subcommand_from 'help add'" -s "h" -d "show help" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'help add'" -s "v" -d "print the version" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'help list'" -s "h" -d "show help" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'help list'" -s "v" -d "print the version" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'help ls'" -s "h" -d "show help" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'help ls'" -s "v" -d "print the version" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'help remove'" -s "h" -d "show help" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'help remove'" -s "v" -d "print the version" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'help rm'" -s "h" -d "show help" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'help rm'" -s "v" -d "print the version" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'help init'" -s "h" -d "show help" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'help init'" -s "v" -d "print the version" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'help cd'" -s "h" -d "show help" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'help cd'" -s "v" -d "print the version" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'help hook'" -s "h" -d "show help" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'help hook'" -s "v" -d "print the version" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'help shell-init'" -s "h" -d "show help" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'help shell-init'" -s "v" -d "print the version" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'help help'" -s "h" -d "show help" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'help help'" -s "v" -d "print the version" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'help h'" -s "h" -d "show help" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'help h'" -s "v" -d "print the version" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'h'" -l "version" -d "Show version information" # global
complete -c "wtp" -n "__fish_seen_subcommand_from 'h'" -l "help" -d "show help" # global
complete -c "wtp" -n "__fish_seen_subcommand_from 'h'" -s "h" -d "show help" # global
complete -c "wtp" -n "__fish_seen_subcommand_from 'h'" -l "version" -d "print the version" # global
complete -c "wtp" -n "__fish_seen_subcommand_from 'h'" -s "v" -d "print the version" # global
complete -f -c "wtp" -n "__fish_seen_subcommand_from 'h'" -a "add" -d "Create a new worktree" # sub
complete -f -c "wtp" -n "__fish_seen_subcommand_from 'h'" -a "list" -d "List all worktrees" # sub
complete -f -c "wtp" -n "__fish_seen_subcommand_from 'h'" -a "ls" -d "List all worktrees" # sub
complete -f -c "wtp" -n "__fish_seen_subcommand_from 'h'" -a "remove" -d "Remove a worktree" # sub
complete -f -c "wtp" -n "__fish_seen_subcommand_from 'h'" -a "rm" -d "Remove a worktree" # sub
complete -f -c "wtp" -n "__fish_seen_subcommand_from 'h'" -a "init" -d "Initialize configuration file" # sub
complete -f -c "wtp" -n "__fish_seen_subcommand_from 'h'" -a "cd" -d "Output absolute path to worktree" # sub
complete -f -c "wtp" -n "__fish_seen_subcommand_from 'h'" -a "hook" -d "Generate shell hook for cd functionality" # sub
complete -f -c "wtp" -n "__fish_seen_subcommand_from 'h'" -a "shell-init" -d "Initialize shell with completion and cd functionality" # sub
complete -f -c "wtp" -n "__fish_seen_subcommand_from 'h'" -a "help" -d "Shows a list of commands or help for one command" # sub
complete -f -c "wtp" -n "__fish_seen_subcommand_from 'h'" -a "h" -d "Shows a list of commands or help for one command" # sub
complete -c "wtp" -n "__fish_seen_subcommand_from 'h add'" -s "h" -d "show help" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'h add'" -s "v" -d "print the version" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'h list'" -s "h" -d "show help" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'h list'" -s "v" -d "print the version" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'h ls'" -s "h" -d "show help" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'h ls'" -s "v" -d "print the version" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'h remove'" -s "h" -d "show help" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'h remove'" -s "v" -d "print the version" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'h rm'" -s "h" -d "show help" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'h rm'" -s "v" -d "print the version" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'h init'" -s "h" -d "show help" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'h init'" -s "v" -d "print the version" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'h cd'" -s "h" -d "show help" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'h cd'" -s "v" -d "print the version" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'h hook'" -s "h" -d "show help" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'h hook'" -s "v" -d "print the version" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'h shell-init'" -s "h" -d "show help" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'h shell-init'" -s "v" -d "print the version" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'h help'" -s "h" -d "show help" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'h help'" -s "v" -d "print the version" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'h h'" -s "h" -d "show help" # subcommands flags
complete -c "wtp" -n "__fish_seen_subcommand_from 'h h'" -s "v" -d "print the version" # subcommands flags

complete -c "wtp" -n "__fish_seen_subcommand_from 'add'" --wraps "git branch"