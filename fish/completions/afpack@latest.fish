complete -f -c "afpack@latest" -n "__fish_use_subcommand" -a "autocomplete" -d "Generate shell completion scripts for the executable" # sub
complete -f -c "afpack@latest" -n "__fish_use_subcommand" -a "boot-mount" -d "Mount all registered artifacts (used by LaunchAgent)" # sub
complete -f -c "afpack@latest" -n "__fish_use_subcommand" -a "compress" -d "Apply transparent compression to registered artifacts" # sub
complete -f -c "afpack@latest" -n "__fish_use_subcommand" -a "detach" -d "Unmount artifacts in current directory" # sub
complete -f -c "afpack@latest" -n "__fish_use_subcommand" -a "detect" -d "Auto-detect, create, mount, and register artifact disk images" # sub
complete -f -c "afpack@latest" -n "__fish_use_subcommand" -a "down" -d "Unmount artifacts in current directory" # sub
complete -f -c "afpack@latest" -n "__fish_use_subcommand" -a "install-agent" -d "Install LaunchAgent for auto-mount on boot" # sub
complete -f -c "afpack@latest" -n "__fish_use_subcommand" -a "register" -d "Manually register an artifact for tracking" # sub
complete -f -c "afpack@latest" -n "__fish_use_subcommand" -a "status" -d "List registered artifacts with mount status" # sub
complete -f -c "afpack@latest" -n "__fish_use_subcommand" -a "uninstall-agent" -d "Remove LaunchAgent" # sub
complete -f -c "afpack@latest" -n "__fish_use_subcommand" -a "unmount" -d "Unmount artifacts in current directory" # sub
complete -f -c "afpack@latest" -n "__fish_use_subcommand" -a "unregister" -d "Remove an artifact from the registry" # sub
complete -f -c "afpack@latest" -n "__fish_use_subcommand" -a "up" -d "Auto-detect, create, mount, and register artifact disk images" # sub
complete -c "afpack@latest" -n "__fish_seen_subcommand_from 'autocomplete'" -s "s" -l "shell" -d "Generate a completion script for SHELL. Defaults to the \"SHELL\" environment variable if possible." -xa "bash zsh" # global
complete -c "afpack@latest" -n "__fish_seen_subcommand_from 'autocomplete'" -s "o" -l "output" -d "Write the completion script to the file at OUTPUT, overwriting its contents. Defaults to printing to stdout." # global
complete -c "afpack@latest" -n "__fish_seen_subcommand_from 'autocomplete'" -s "q" -l "quiet" -d "Suppress any informational console output" # global
complete -c "afpack@latest" -n "__fish_seen_subcommand_from 'boot-mount'" -l "dry-run" -d "Show what would be done without making changes" # global
complete -c "afpack@latest" -n "__fish_seen_subcommand_from 'boot-mount'" -l "silent" -d "Suppress output (for LaunchAgent)" # global
complete -c "afpack@latest" -n "__fish_seen_subcommand_from 'compress'" -s "g" -l "global" -d "Compress all registered artifacts, not just current directory" # global
complete -c "afpack@latest" -n "__fish_seen_subcommand_from 'compress'" -l "dry-run" -d "Show what would be done without making changes" # global
complete -c "afpack@latest" -n "__fish_seen_subcommand_from 'detach'" -l "dry-run" -d "Show what would be done without making changes" # global
complete -c "afpack@latest" -n "__fish_seen_subcommand_from 'detect'" -s "i" -l "import" -d "Import existing directory contents into new image" # global
complete -c "afpack@latest" -n "__fish_seen_subcommand_from 'detect'" -s "y" -l "yes" -d "Skip confirmation prompts (auto-confirm)" # global
complete -c "afpack@latest" -n "__fish_seen_subcommand_from 'detect'" -l "dry-run" -d "Show what would be done without making changes" # global
complete -c "afpack@latest" -n "__fish_seen_subcommand_from 'down'" -l "dry-run" -d "Show what would be done without making changes" # global
complete -c "afpack@latest" -n "__fish_seen_subcommand_from 'install-agent'" -l "executable" -d "Path to the afpack executable" # global
complete -c "afpack@latest" -n "__fish_seen_subcommand_from 'install-agent'" -l "dry-run" -d "Show what would be done without making changes" # global
complete -c "afpack@latest" -n "__fish_seen_subcommand_from 'register'" -l "type" -d "Type identifier" -xa "node rust swift custom" # global
complete -c "afpack@latest" -n "__fish_seen_subcommand_from 'register'" -l "dry-run" -d "Show what would be done without making changes" # global
complete -c "afpack@latest" -n "__fish_seen_subcommand_from 'status'" -s "g" -l "global" -d "Show all registered artifacts, not just current directory" # global
complete -c "afpack@latest" -n "__fish_seen_subcommand_from 'status'" -l "dry-run" -d "Show what would be done without making changes" # global
complete -c "afpack@latest" -n "__fish_seen_subcommand_from 'uninstall-agent'" -l "dry-run" -d "Show what would be done without making changes" # global
complete -c "afpack@latest" -n "__fish_seen_subcommand_from 'unmount'" -l "dry-run" -d "Show what would be done without making changes" # global
complete -c "afpack@latest" -n "__fish_seen_subcommand_from 'unregister'" -l "dry-run" -d "Show what would be done without making changes" # global
complete -c "afpack@latest" -n "__fish_seen_subcommand_from 'up'" -s "i" -l "import" -d "Import existing directory contents into new image" # global
complete -c "afpack@latest" -n "__fish_seen_subcommand_from 'up'" -s "y" -l "yes" -d "Skip confirmation prompts (auto-confirm)" # global
complete -c "afpack@latest" -n "__fish_seen_subcommand_from 'up'" -l "dry-run" -d "Show what would be done without making changes" # global