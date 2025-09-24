complete -c "lla" -s "c" -l "case-sensitive" -d "Enable case-sensitive filtering (overrides config setting)" # global
complete -c "lla" -s "d" -l "depth" -d "Set the depth for tree listing (default from config)" # global
complete -c "lla" -l "dirs-only" -d "Show only directories" # global
complete -c "lla" -l "disable-plugin" -d "Disable specific plugins" # global
complete -c "lla" -l "dotfiles-only" -d "Show only dot files and directories (those starting with a dot)" # global
complete -c "lla" -l "enable-plugin" -d "Enable specific plugins" # global
complete -c "lla" -s "f" -l "filter" -d "Filter files by name or extension" # global
complete -c "lla" -s "F" -l "fuzzy" -d "Use interactive fuzzy finder" # global
complete -c "lla" -l "files-only" -d "Show only regular files" # global
complete -c "lla" -s "g" -l "grid" -d "Use grid listing format (overrides config format)" # global
complete -c "lla" -s "G" -l "git" -d "Show git status and information (overrides config format)" # global
complete -c "lla" -l "grid-ignore" -d "Use grid view ignoring terminal width (Warning: output may extend beyond screen width)" # global
complete -c "lla" -s "h" -l "help" -d "Print help information" # global
complete -c "lla" -l "icons" -d "Show icons for files and directories (overrides config setting)" # global
complete -c "lla" -l "include-dirs" -d "Include directory sizes in the metadata" # global
complete -c "lla" -s "l" -l "long" -d "Use long listing format (overrides config format)" # global
complete -c "lla" -l "no-color" -d "Disable all colors in the output" # global
complete -c "lla" -l "no-dirs" -d "Hide directories" # global
complete -c "lla" -l "no-dotfiles" -d "Hide dot files and directories (those starting with a dot)" # global
complete -c "lla" -l "no-files" -d "Hide regular files" # global
complete -c "lla" -l "no-icons" -d "Hide icons for files and directories (overrides config setting)" # global
complete -c "lla" -l "no-symlinks" -d "Hide symbolic links" # global
complete -c "lla" -l "permission-format" -d "Format for displaying permissions" -xa "symbolic octal binary verbose compact" # global
complete -c "lla" -l "plugins-dir" -d "Specify the plugins directory" # global
complete -c "lla" -s "r" -l "sort-reverse" -d "Reverse the sort order" # global
complete -c "lla" -s "R" -l "recursive" -d "Use recursive listing format" # global
complete -c "lla" -s "s" -l "sort" -d "Sort files by name, size, or date" -xa "name size date" # global
complete -c "lla" -s "S" -l "sizemap" -d "Show visual representation of file sizes (overrides config format)" # global
complete -c "lla" -l "sort-case-sensitive" -d "Enable case-sensitive sorting (overrides config setting)" # global
complete -c "lla" -l "sort-dirs-first" -d "List directories before files (overrides config setting)" # global
complete -c "lla" -l "sort-natural" -d "Use natural sorting for numbers (overrides config setting)" # global
complete -c "lla" -l "symlinks-only" -d "Show only symbolic links" # global
complete -c "lla" -s "t" -l "tree" -d "Use tree listing format (overrides config format)" # global
complete -c "lla" -s "T" -l "table" -d "Use table listing format (overrides config format)" # global
complete -c "lla" -l "timeline" -d "Group files by time periods (overrides config format)" # global
complete -c "lla" -s "V" -l "version" -d "Print version information" # global
complete -f -c "lla" -n "__fish_use_subcommand" -a "clean" -d "This command will clean up invalid plugins" # sub
complete -f -c "lla" -n "__fish_use_subcommand" -a "completion" -d "Generate shell completion scripts" # sub
complete -f -c "lla" -n "__fish_use_subcommand" -a "config" -d "View or modify configuration" # sub
complete -f -c "lla" -n "__fish_use_subcommand" -a "help" -d "Print this message or the help of the given subcommand(s)" # sub
complete -f -c "lla" -n "__fish_use_subcommand" -a "init" -d "Initialize the configuration file" # sub
complete -f -c "lla" -n "__fish_use_subcommand" -a "install" -d "Install a plugin" # sub
complete -f -c "lla" -n "__fish_use_subcommand" -a "list-plugins" -d "List all available plugins" # sub
complete -f -c "lla" -n "__fish_use_subcommand" -a "plugin" -d "Run a plugin action" # sub
complete -f -c "lla" -n "__fish_use_subcommand" -a "shortcut" -d "Manage command shortcuts" # sub
complete -f -c "lla" -n "__fish_use_subcommand" -a "theme" -d "Interactive theme manager" # sub
complete -f -c "lla" -n "__fish_use_subcommand" -a "update" -d "Update installed plugins" # sub
complete -f -c "lla" -n "__fish_use_subcommand" -a "use" -d "Interactive plugin manager" # sub
complete -c "lla" -n "__fish_seen_subcommand_from 'clean'" -s "c" -l "case-sensitive" -d "Enable case-sensitive filtering (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'clean'" -s "d" -l "depth" -d "Set the depth for tree listing (default from config)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'clean'" -l "dirs-only" -d "Show only directories" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'clean'" -l "disable-plugin" -d "Disable specific plugins" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'clean'" -l "dotfiles-only" -d "Show only dot files and directories (those starting with a dot)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'clean'" -l "enable-plugin" -d "Enable specific plugins" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'clean'" -s "f" -l "filter" -d "Filter files by name or extension" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'clean'" -s "F" -l "fuzzy" -d "Use interactive fuzzy finder" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'clean'" -l "files-only" -d "Show only regular files" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'clean'" -s "g" -l "grid" -d "Use grid listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'clean'" -s "G" -l "git" -d "Show git status and information (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'clean'" -l "grid-ignore" -d "Use grid view ignoring terminal width (Warning: output may extend beyond screen width)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'clean'" -l "icons" -d "Show icons for files and directories (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'clean'" -l "include-dirs" -d "Include directory sizes in the metadata" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'clean'" -s "l" -l "long" -d "Use long listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'clean'" -l "no-color" -d "Disable all colors in the output" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'clean'" -l "no-dirs" -d "Hide directories" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'clean'" -l "no-dotfiles" -d "Hide dot files and directories (those starting with a dot)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'clean'" -l "no-files" -d "Hide regular files" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'clean'" -l "no-icons" -d "Hide icons for files and directories (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'clean'" -l "no-symlinks" -d "Hide symbolic links" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'clean'" -l "permission-format" -d "Format for displaying permissions" -xa "symbolic octal binary verbose compact" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'clean'" -l "plugins-dir" -d "Specify the plugins directory" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'clean'" -s "r" -l "sort-reverse" -d "Reverse the sort order" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'clean'" -s "R" -l "recursive" -d "Use recursive listing format" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'clean'" -s "s" -l "sort" -d "Sort files by name, size, or date" -xa "name size date" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'clean'" -s "S" -l "sizemap" -d "Show visual representation of file sizes (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'clean'" -l "sort-case-sensitive" -d "Enable case-sensitive sorting (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'clean'" -l "sort-dirs-first" -d "List directories before files (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'clean'" -l "sort-natural" -d "Use natural sorting for numbers (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'clean'" -l "symlinks-only" -d "Show only symbolic links" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'clean'" -s "t" -l "tree" -d "Use tree listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'clean'" -s "T" -l "table" -d "Use table listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'clean'" -l "timeline" -d "Group files by time periods (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -s "c" -l "case-sensitive" -d "Enable case-sensitive filtering (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -s "d" -l "depth" -d "Set the depth for tree listing (default from config)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -l "dirs-only" -d "Show only directories" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -l "disable-plugin" -d "Disable specific plugins" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -l "dotfiles-only" -d "Show only dot files and directories (those starting with a dot)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -l "enable-plugin" -d "Enable specific plugins" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -s "f" -l "filter" -d "Filter files by name or extension" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -s "F" -l "fuzzy" -d "Use interactive fuzzy finder" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -l "files-only" -d "Show only regular files" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -s "g" -l "grid" -d "Use grid listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -s "G" -l "git" -d "Show git status and information (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -l "grid-ignore" -d "Use grid view ignoring terminal width (Warning: output may extend beyond screen width)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -l "icons" -d "Show icons for files and directories (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -l "include-dirs" -d "Include directory sizes in the metadata" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -s "l" -l "long" -d "Use long listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -l "no-color" -d "Disable all colors in the output" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -l "no-dirs" -d "Hide directories" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -l "no-dotfiles" -d "Hide dot files and directories (those starting with a dot)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -l "no-files" -d "Hide regular files" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -l "no-icons" -d "Hide icons for files and directories (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -l "no-symlinks" -d "Hide symbolic links" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -l "permission-format" -d "Format for displaying permissions" -xa "symbolic octal binary verbose compact" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -l "plugins-dir" -d "Specify the plugins directory" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -s "r" -l "sort-reverse" -d "Reverse the sort order" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -s "R" -l "recursive" -d "Use recursive listing format" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -s "s" -l "sort" -d "Sort files by name, size, or date" -xa "name size date" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -s "S" -l "sizemap" -d "Show visual representation of file sizes (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -l "sort-case-sensitive" -d "Enable case-sensitive sorting (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -l "sort-dirs-first" -d "List directories before files (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -l "sort-natural" -d "Use natural sorting for numbers (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -l "symlinks-only" -d "Show only symbolic links" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -s "t" -l "tree" -d "Use tree listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -s "T" -l "table" -d "Use table listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -l "timeline" -d "Group files by time periods (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -s "c" -l "case-sensitive" -d "Enable case-sensitive filtering (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -s "d" -l "depth" -d "Set the depth for tree listing (default from config)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -l "dirs-only" -d "Show only directories" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -l "disable-plugin" -d "Disable specific plugins" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -l "dotfiles-only" -d "Show only dot files and directories (those starting with a dot)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -l "enable-plugin" -d "Enable specific plugins" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -s "f" -l "filter" -d "Filter files by name or extension" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -s "F" -l "fuzzy" -d "Use interactive fuzzy finder" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -l "files-only" -d "Show only regular files" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -s "g" -l "grid" -d "Use grid listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -s "G" -l "git" -d "Show git status and information (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -l "grid-ignore" -d "Use grid view ignoring terminal width (Warning: output may extend beyond screen width)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -l "icons" -d "Show icons for files and directories (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -l "include-dirs" -d "Include directory sizes in the metadata" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -s "l" -l "long" -d "Use long listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -l "no-color" -d "Disable all colors in the output" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -l "no-dirs" -d "Hide directories" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -l "no-dotfiles" -d "Hide dot files and directories (those starting with a dot)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -l "no-files" -d "Hide regular files" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -l "no-icons" -d "Hide icons for files and directories (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -l "no-symlinks" -d "Hide symbolic links" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -l "permission-format" -d "Format for displaying permissions" -xa "symbolic octal binary verbose compact" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -l "plugins-dir" -d "Specify the plugins directory" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -s "r" -l "sort-reverse" -d "Reverse the sort order" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -s "R" -l "recursive" -d "Use recursive listing format" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -s "s" -l "sort" -d "Sort files by name, size, or date" -xa "name size date" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -s "S" -l "sizemap" -d "Show visual representation of file sizes (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -l "sort-case-sensitive" -d "Enable case-sensitive sorting (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -l "sort-dirs-first" -d "List directories before files (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -l "sort-natural" -d "Use natural sorting for numbers (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -l "symlinks-only" -d "Show only symbolic links" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -s "t" -l "tree" -d "Use tree listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -s "T" -l "table" -d "Use table listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -l "timeline" -d "Group files by time periods (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'help'" -s "c" -l "case-sensitive" -d "Enable case-sensitive filtering (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'help'" -s "d" -l "depth" -d "Set the depth for tree listing (default from config)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'help'" -l "dirs-only" -d "Show only directories" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'help'" -l "disable-plugin" -d "Disable specific plugins" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'help'" -l "dotfiles-only" -d "Show only dot files and directories (those starting with a dot)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'help'" -l "enable-plugin" -d "Enable specific plugins" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'help'" -s "f" -l "filter" -d "Filter files by name or extension" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'help'" -s "F" -l "fuzzy" -d "Use interactive fuzzy finder" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'help'" -l "files-only" -d "Show only regular files" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'help'" -s "g" -l "grid" -d "Use grid listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'help'" -s "G" -l "git" -d "Show git status and information (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'help'" -l "grid-ignore" -d "Use grid view ignoring terminal width (Warning: output may extend beyond screen width)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'help'" -l "icons" -d "Show icons for files and directories (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'help'" -l "include-dirs" -d "Include directory sizes in the metadata" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'help'" -s "l" -l "long" -d "Use long listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'help'" -l "no-color" -d "Disable all colors in the output" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'help'" -l "no-dirs" -d "Hide directories" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'help'" -l "no-dotfiles" -d "Hide dot files and directories (those starting with a dot)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'help'" -l "no-files" -d "Hide regular files" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'help'" -l "no-icons" -d "Hide icons for files and directories (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'help'" -l "no-symlinks" -d "Hide symbolic links" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'help'" -l "permission-format" -d "Format for displaying permissions" -xa "symbolic octal binary verbose compact" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'help'" -l "plugins-dir" -d "Specify the plugins directory" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'help'" -s "r" -l "sort-reverse" -d "Reverse the sort order" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'help'" -s "R" -l "recursive" -d "Use recursive listing format" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'help'" -s "s" -l "sort" -d "Sort files by name, size, or date" -xa "name size date" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'help'" -s "S" -l "sizemap" -d "Show visual representation of file sizes (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'help'" -l "sort-case-sensitive" -d "Enable case-sensitive sorting (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'help'" -l "sort-dirs-first" -d "List directories before files (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'help'" -l "sort-natural" -d "Use natural sorting for numbers (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'help'" -l "symlinks-only" -d "Show only symbolic links" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'help'" -s "t" -l "tree" -d "Use tree listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'help'" -s "T" -l "table" -d "Use table listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'help'" -l "timeline" -d "Group files by time periods (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'init'" -s "c" -l "case-sensitive" -d "Enable case-sensitive filtering (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'init'" -s "d" -l "depth" -d "Set the depth for tree listing (default from config)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'init'" -l "dirs-only" -d "Show only directories" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'init'" -l "disable-plugin" -d "Disable specific plugins" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'init'" -l "dotfiles-only" -d "Show only dot files and directories (those starting with a dot)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'init'" -l "enable-plugin" -d "Enable specific plugins" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'init'" -s "f" -l "filter" -d "Filter files by name or extension" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'init'" -s "F" -l "fuzzy" -d "Use interactive fuzzy finder" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'init'" -l "files-only" -d "Show only regular files" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'init'" -s "g" -l "grid" -d "Use grid listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'init'" -s "G" -l "git" -d "Show git status and information (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'init'" -l "grid-ignore" -d "Use grid view ignoring terminal width (Warning: output may extend beyond screen width)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'init'" -l "icons" -d "Show icons for files and directories (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'init'" -l "include-dirs" -d "Include directory sizes in the metadata" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'init'" -s "l" -l "long" -d "Use long listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'init'" -l "no-color" -d "Disable all colors in the output" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'init'" -l "no-dirs" -d "Hide directories" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'init'" -l "no-dotfiles" -d "Hide dot files and directories (those starting with a dot)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'init'" -l "no-files" -d "Hide regular files" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'init'" -l "no-icons" -d "Hide icons for files and directories (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'init'" -l "no-symlinks" -d "Hide symbolic links" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'init'" -l "permission-format" -d "Format for displaying permissions" -xa "symbolic octal binary verbose compact" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'init'" -l "plugins-dir" -d "Specify the plugins directory" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'init'" -s "r" -l "sort-reverse" -d "Reverse the sort order" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'init'" -s "R" -l "recursive" -d "Use recursive listing format" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'init'" -s "s" -l "sort" -d "Sort files by name, size, or date" -xa "name size date" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'init'" -s "S" -l "sizemap" -d "Show visual representation of file sizes (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'init'" -l "sort-case-sensitive" -d "Enable case-sensitive sorting (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'init'" -l "sort-dirs-first" -d "List directories before files (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'init'" -l "sort-natural" -d "Use natural sorting for numbers (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'init'" -l "symlinks-only" -d "Show only symbolic links" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'init'" -s "t" -l "tree" -d "Use tree listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'init'" -s "T" -l "table" -d "Use table listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'init'" -l "timeline" -d "Group files by time periods (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -s "c" -l "case-sensitive" -d "Enable case-sensitive filtering (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -s "d" -l "depth" -d "Set the depth for tree listing (default from config)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -l "dirs-only" -d "Show only directories" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -l "disable-plugin" -d "Disable specific plugins" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -l "dotfiles-only" -d "Show only dot files and directories (those starting with a dot)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -l "enable-plugin" -d "Enable specific plugins" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -s "f" -l "filter" -d "Filter files by name or extension" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -s "F" -l "fuzzy" -d "Use interactive fuzzy finder" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -l "files-only" -d "Show only regular files" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -s "g" -l "grid" -d "Use grid listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -s "G" -l "git" -d "Show git status and information (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -l "grid-ignore" -d "Use grid view ignoring terminal width (Warning: output may extend beyond screen width)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -l "icons" -d "Show icons for files and directories (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -l "include-dirs" -d "Include directory sizes in the metadata" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -s "l" -l "long" -d "Use long listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -l "no-color" -d "Disable all colors in the output" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -l "no-dirs" -d "Hide directories" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -l "no-dotfiles" -d "Hide dot files and directories (those starting with a dot)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -l "no-files" -d "Hide regular files" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -l "no-icons" -d "Hide icons for files and directories (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -l "no-symlinks" -d "Hide symbolic links" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -l "permission-format" -d "Format for displaying permissions" -xa "symbolic octal binary verbose compact" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -l "plugins-dir" -d "Specify the plugins directory" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -s "r" -l "sort-reverse" -d "Reverse the sort order" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -s "R" -l "recursive" -d "Use recursive listing format" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -s "s" -l "sort" -d "Sort files by name, size, or date" -xa "name size date" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -s "S" -l "sizemap" -d "Show visual representation of file sizes (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -l "sort-case-sensitive" -d "Enable case-sensitive sorting (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -l "sort-dirs-first" -d "List directories before files (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -l "sort-natural" -d "Use natural sorting for numbers (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -l "symlinks-only" -d "Show only symbolic links" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -s "t" -l "tree" -d "Use tree listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -s "T" -l "table" -d "Use table listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -l "timeline" -d "Group files by time periods (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'list-plugins'" -s "c" -l "case-sensitive" -d "Enable case-sensitive filtering (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'list-plugins'" -s "d" -l "depth" -d "Set the depth for tree listing (default from config)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'list-plugins'" -l "dirs-only" -d "Show only directories" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'list-plugins'" -l "disable-plugin" -d "Disable specific plugins" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'list-plugins'" -l "dotfiles-only" -d "Show only dot files and directories (those starting with a dot)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'list-plugins'" -l "enable-plugin" -d "Enable specific plugins" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'list-plugins'" -s "f" -l "filter" -d "Filter files by name or extension" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'list-plugins'" -s "F" -l "fuzzy" -d "Use interactive fuzzy finder" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'list-plugins'" -l "files-only" -d "Show only regular files" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'list-plugins'" -s "g" -l "grid" -d "Use grid listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'list-plugins'" -s "G" -l "git" -d "Show git status and information (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'list-plugins'" -l "grid-ignore" -d "Use grid view ignoring terminal width (Warning: output may extend beyond screen width)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'list-plugins'" -l "icons" -d "Show icons for files and directories (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'list-plugins'" -l "include-dirs" -d "Include directory sizes in the metadata" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'list-plugins'" -s "l" -l "long" -d "Use long listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'list-plugins'" -l "no-color" -d "Disable all colors in the output" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'list-plugins'" -l "no-dirs" -d "Hide directories" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'list-plugins'" -l "no-dotfiles" -d "Hide dot files and directories (those starting with a dot)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'list-plugins'" -l "no-files" -d "Hide regular files" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'list-plugins'" -l "no-icons" -d "Hide icons for files and directories (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'list-plugins'" -l "no-symlinks" -d "Hide symbolic links" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'list-plugins'" -l "permission-format" -d "Format for displaying permissions" -xa "symbolic octal binary verbose compact" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'list-plugins'" -l "plugins-dir" -d "Specify the plugins directory" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'list-plugins'" -s "r" -l "sort-reverse" -d "Reverse the sort order" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'list-plugins'" -s "R" -l "recursive" -d "Use recursive listing format" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'list-plugins'" -s "s" -l "sort" -d "Sort files by name, size, or date" -xa "name size date" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'list-plugins'" -s "S" -l "sizemap" -d "Show visual representation of file sizes (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'list-plugins'" -l "sort-case-sensitive" -d "Enable case-sensitive sorting (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'list-plugins'" -l "sort-dirs-first" -d "List directories before files (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'list-plugins'" -l "sort-natural" -d "Use natural sorting for numbers (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'list-plugins'" -l "symlinks-only" -d "Show only symbolic links" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'list-plugins'" -s "t" -l "tree" -d "Use tree listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'list-plugins'" -s "T" -l "table" -d "Use table listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'list-plugins'" -l "timeline" -d "Group files by time periods (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -s "c" -l "case-sensitive" -d "Enable case-sensitive filtering (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -s "d" -l "depth" -d "Set the depth for tree listing (default from config)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -l "dirs-only" -d "Show only directories" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -l "disable-plugin" -d "Disable specific plugins" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -l "dotfiles-only" -d "Show only dot files and directories (those starting with a dot)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -l "enable-plugin" -d "Enable specific plugins" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -s "f" -l "filter" -d "Filter files by name or extension" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -s "F" -l "fuzzy" -d "Use interactive fuzzy finder" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -l "files-only" -d "Show only regular files" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -s "g" -l "grid" -d "Use grid listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -s "G" -l "git" -d "Show git status and information (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -l "grid-ignore" -d "Use grid view ignoring terminal width (Warning: output may extend beyond screen width)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -l "icons" -d "Show icons for files and directories (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -l "include-dirs" -d "Include directory sizes in the metadata" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -s "l" -l "long" -d "Use long listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -l "no-color" -d "Disable all colors in the output" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -l "no-dirs" -d "Hide directories" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -l "no-dotfiles" -d "Hide dot files and directories (those starting with a dot)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -l "no-files" -d "Hide regular files" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -l "no-icons" -d "Hide icons for files and directories (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -l "no-symlinks" -d "Hide symbolic links" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -l "permission-format" -d "Format for displaying permissions" -xa "symbolic octal binary verbose compact" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -l "plugins-dir" -d "Specify the plugins directory" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -s "r" -l "sort-reverse" -d "Reverse the sort order" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -s "R" -l "recursive" -d "Use recursive listing format" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -s "s" -l "sort" -d "Sort files by name, size, or date" -xa "name size date" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -s "S" -l "sizemap" -d "Show visual representation of file sizes (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -l "sort-case-sensitive" -d "Enable case-sensitive sorting (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -l "sort-dirs-first" -d "List directories before files (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -l "sort-natural" -d "Use natural sorting for numbers (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -l "symlinks-only" -d "Show only symbolic links" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -s "t" -l "tree" -d "Use tree listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -s "T" -l "table" -d "Use table listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -l "timeline" -d "Group files by time periods (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -s "c" -l "case-sensitive" -d "Enable case-sensitive filtering (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -s "d" -l "depth" -d "Set the depth for tree listing (default from config)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -l "dirs-only" -d "Show only directories" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -l "disable-plugin" -d "Disable specific plugins" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -l "dotfiles-only" -d "Show only dot files and directories (those starting with a dot)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -l "enable-plugin" -d "Enable specific plugins" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -s "f" -l "filter" -d "Filter files by name or extension" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -s "F" -l "fuzzy" -d "Use interactive fuzzy finder" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -l "files-only" -d "Show only regular files" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -s "g" -l "grid" -d "Use grid listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -s "G" -l "git" -d "Show git status and information (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -l "grid-ignore" -d "Use grid view ignoring terminal width (Warning: output may extend beyond screen width)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -l "icons" -d "Show icons for files and directories (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -l "include-dirs" -d "Include directory sizes in the metadata" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -s "l" -l "long" -d "Use long listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -l "no-color" -d "Disable all colors in the output" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -l "no-dirs" -d "Hide directories" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -l "no-dotfiles" -d "Hide dot files and directories (those starting with a dot)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -l "no-files" -d "Hide regular files" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -l "no-icons" -d "Hide icons for files and directories (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -l "no-symlinks" -d "Hide symbolic links" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -l "permission-format" -d "Format for displaying permissions" -xa "symbolic octal binary verbose compact" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -l "plugins-dir" -d "Specify the plugins directory" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -s "r" -l "sort-reverse" -d "Reverse the sort order" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -s "R" -l "recursive" -d "Use recursive listing format" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -s "s" -l "sort" -d "Sort files by name, size, or date" -xa "name size date" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -s "S" -l "sizemap" -d "Show visual representation of file sizes (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -l "sort-case-sensitive" -d "Enable case-sensitive sorting (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -l "sort-dirs-first" -d "List directories before files (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -l "sort-natural" -d "Use natural sorting for numbers (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -l "symlinks-only" -d "Show only symbolic links" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -s "t" -l "tree" -d "Use tree listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -s "T" -l "table" -d "Use table listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -l "timeline" -d "Group files by time periods (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'theme'" -s "c" -l "case-sensitive" -d "Enable case-sensitive filtering (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'theme'" -s "d" -l "depth" -d "Set the depth for tree listing (default from config)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'theme'" -l "dirs-only" -d "Show only directories" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'theme'" -l "disable-plugin" -d "Disable specific plugins" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'theme'" -l "dotfiles-only" -d "Show only dot files and directories (those starting with a dot)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'theme'" -l "enable-plugin" -d "Enable specific plugins" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'theme'" -s "f" -l "filter" -d "Filter files by name or extension" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'theme'" -s "F" -l "fuzzy" -d "Use interactive fuzzy finder" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'theme'" -l "files-only" -d "Show only regular files" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'theme'" -s "g" -l "grid" -d "Use grid listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'theme'" -s "G" -l "git" -d "Show git status and information (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'theme'" -l "grid-ignore" -d "Use grid view ignoring terminal width (Warning: output may extend beyond screen width)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'theme'" -l "icons" -d "Show icons for files and directories (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'theme'" -l "include-dirs" -d "Include directory sizes in the metadata" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'theme'" -s "l" -l "long" -d "Use long listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'theme'" -l "no-color" -d "Disable all colors in the output" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'theme'" -l "no-dirs" -d "Hide directories" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'theme'" -l "no-dotfiles" -d "Hide dot files and directories (those starting with a dot)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'theme'" -l "no-files" -d "Hide regular files" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'theme'" -l "no-icons" -d "Hide icons for files and directories (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'theme'" -l "no-symlinks" -d "Hide symbolic links" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'theme'" -l "permission-format" -d "Format for displaying permissions" -xa "symbolic octal binary verbose compact" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'theme'" -l "plugins-dir" -d "Specify the plugins directory" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'theme'" -s "r" -l "sort-reverse" -d "Reverse the sort order" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'theme'" -s "R" -l "recursive" -d "Use recursive listing format" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'theme'" -s "s" -l "sort" -d "Sort files by name, size, or date" -xa "name size date" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'theme'" -s "S" -l "sizemap" -d "Show visual representation of file sizes (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'theme'" -l "sort-case-sensitive" -d "Enable case-sensitive sorting (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'theme'" -l "sort-dirs-first" -d "List directories before files (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'theme'" -l "sort-natural" -d "Use natural sorting for numbers (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'theme'" -l "symlinks-only" -d "Show only symbolic links" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'theme'" -s "t" -l "tree" -d "Use tree listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'theme'" -s "T" -l "table" -d "Use table listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'theme'" -l "timeline" -d "Group files by time periods (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'update'" -s "c" -l "case-sensitive" -d "Enable case-sensitive filtering (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'update'" -s "d" -l "depth" -d "Set the depth for tree listing (default from config)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'update'" -l "dirs-only" -d "Show only directories" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'update'" -l "disable-plugin" -d "Disable specific plugins" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'update'" -l "dotfiles-only" -d "Show only dot files and directories (those starting with a dot)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'update'" -l "enable-plugin" -d "Enable specific plugins" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'update'" -s "f" -l "filter" -d "Filter files by name or extension" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'update'" -s "F" -l "fuzzy" -d "Use interactive fuzzy finder" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'update'" -l "files-only" -d "Show only regular files" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'update'" -s "g" -l "grid" -d "Use grid listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'update'" -s "G" -l "git" -d "Show git status and information (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'update'" -l "grid-ignore" -d "Use grid view ignoring terminal width (Warning: output may extend beyond screen width)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'update'" -l "icons" -d "Show icons for files and directories (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'update'" -l "include-dirs" -d "Include directory sizes in the metadata" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'update'" -s "l" -l "long" -d "Use long listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'update'" -l "no-color" -d "Disable all colors in the output" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'update'" -l "no-dirs" -d "Hide directories" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'update'" -l "no-dotfiles" -d "Hide dot files and directories (those starting with a dot)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'update'" -l "no-files" -d "Hide regular files" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'update'" -l "no-icons" -d "Hide icons for files and directories (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'update'" -l "no-symlinks" -d "Hide symbolic links" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'update'" -l "permission-format" -d "Format for displaying permissions" -xa "symbolic octal binary verbose compact" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'update'" -l "plugins-dir" -d "Specify the plugins directory" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'update'" -s "r" -l "sort-reverse" -d "Reverse the sort order" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'update'" -s "R" -l "recursive" -d "Use recursive listing format" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'update'" -s "s" -l "sort" -d "Sort files by name, size, or date" -xa "name size date" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'update'" -s "S" -l "sizemap" -d "Show visual representation of file sizes (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'update'" -l "sort-case-sensitive" -d "Enable case-sensitive sorting (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'update'" -l "sort-dirs-first" -d "List directories before files (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'update'" -l "sort-natural" -d "Use natural sorting for numbers (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'update'" -l "symlinks-only" -d "Show only symbolic links" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'update'" -s "t" -l "tree" -d "Use tree listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'update'" -s "T" -l "table" -d "Use table listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'update'" -l "timeline" -d "Group files by time periods (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'use'" -s "c" -l "case-sensitive" -d "Enable case-sensitive filtering (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'use'" -s "d" -l "depth" -d "Set the depth for tree listing (default from config)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'use'" -l "dirs-only" -d "Show only directories" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'use'" -l "disable-plugin" -d "Disable specific plugins" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'use'" -l "dotfiles-only" -d "Show only dot files and directories (those starting with a dot)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'use'" -l "enable-plugin" -d "Enable specific plugins" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'use'" -s "f" -l "filter" -d "Filter files by name or extension" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'use'" -s "F" -l "fuzzy" -d "Use interactive fuzzy finder" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'use'" -l "files-only" -d "Show only regular files" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'use'" -s "g" -l "grid" -d "Use grid listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'use'" -s "G" -l "git" -d "Show git status and information (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'use'" -l "grid-ignore" -d "Use grid view ignoring terminal width (Warning: output may extend beyond screen width)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'use'" -l "icons" -d "Show icons for files and directories (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'use'" -l "include-dirs" -d "Include directory sizes in the metadata" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'use'" -s "l" -l "long" -d "Use long listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'use'" -l "no-color" -d "Disable all colors in the output" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'use'" -l "no-dirs" -d "Hide directories" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'use'" -l "no-dotfiles" -d "Hide dot files and directories (those starting with a dot)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'use'" -l "no-files" -d "Hide regular files" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'use'" -l "no-icons" -d "Hide icons for files and directories (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'use'" -l "no-symlinks" -d "Hide symbolic links" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'use'" -l "permission-format" -d "Format for displaying permissions" -xa "symbolic octal binary verbose compact" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'use'" -l "plugins-dir" -d "Specify the plugins directory" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'use'" -s "r" -l "sort-reverse" -d "Reverse the sort order" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'use'" -s "R" -l "recursive" -d "Use recursive listing format" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'use'" -s "s" -l "sort" -d "Sort files by name, size, or date" -xa "name size date" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'use'" -s "S" -l "sizemap" -d "Show visual representation of file sizes (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'use'" -l "sort-case-sensitive" -d "Enable case-sensitive sorting (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'use'" -l "sort-dirs-first" -d "List directories before files (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'use'" -l "sort-natural" -d "Use natural sorting for numbers (overrides config setting)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'use'" -l "symlinks-only" -d "Show only symbolic links" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'use'" -s "t" -l "tree" -d "Use tree listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'use'" -s "T" -l "table" -d "Use table listing format (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'use'" -l "timeline" -d "Group files by time periods (overrides config format)" # subcommands flags
complete -c "lla" -n "__fish_seen_subcommand_from 'clean'" -s "h" -l "help" -d "Print help information" # global
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -s "h" -l "help" -d "Print help information" # global
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -s "o" -l "output" -d "Output path for the completion script (prints to stdout if not specified)" # global
complete -c "lla" -n "__fish_seen_subcommand_from 'completion'" -s "p" -l "path" -d "Custom installation path for the completion script" # global
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -s "h" -l "help" -d "Print help information" # global
complete -c "lla" -n "__fish_seen_subcommand_from 'config'" -l "set" -d "Set a configuration value (e.g., --set plugins_dir /new/path)" # global
complete -c "lla" -n "__fish_seen_subcommand_from 'init'" -s "h" -l "help" -d "Print help information" # global
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -l "dir" -d "Install a plugin from a local directory" # global
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -l "git" -d "Install a plugin from a GitHub repository URL" # global
complete -c "lla" -n "__fish_seen_subcommand_from 'install'" -s "h" -l "help" -d "Print help information" # global
complete -c "lla" -n "__fish_seen_subcommand_from 'list-plugins'" -s "h" -l "help" -d "Print help information" # global
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -s "a" -l "action" -d "Action to perform" # global
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -s "h" -l "help" -d "Print help information" # global
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -s "n" -l "name" -d "Name of the plugin" # global
complete -c "lla" -n "__fish_seen_subcommand_from 'plugin'" -s "r" -l "args" -d "Arguments for the plugin action" # global
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -s "h" -l "help" -d "Print help information" # global
complete -f -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -a "add" -d "Add a new shortcut" # sub
complete -f -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -a "help" -d "Print this message or the help of the given subcommand(s)" # sub
complete -f -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -a "list" -d "List all shortcuts" # sub
complete -f -c "lla" -n "__fish_seen_subcommand_from 'shortcut'" -a "remove" -d "Remove a shortcut" # sub
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut add'" -s "d" -l "description" -d "Optional description of the shortcut" # global
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut add'" -s "h" -l "help" -d "Print help information" # global
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut list'" -s "h" -l "help" -d "Print help information" # global
complete -c "lla" -n "__fish_seen_subcommand_from 'shortcut remove'" -s "h" -l "help" -d "Print help information" # global
complete -c "lla" -n "__fish_seen_subcommand_from 'theme'" -s "h" -l "help" -d "Print help information" # global
complete -f -c "lla" -n "__fish_seen_subcommand_from 'theme'" -a "help" -d "Print this message or the help of the given subcommand(s)" # sub
complete -f -c "lla" -n "__fish_seen_subcommand_from 'theme'" -a "install" -d "Install theme(s) from a file or directory" # sub
complete -f -c "lla" -n "__fish_seen_subcommand_from 'theme'" -a "pull" -d "Pull and install themes from the official repository" # sub
complete -c "lla" -n "__fish_seen_subcommand_from 'theme install'" -s "h" -l "help" -d "Print help information" # global
complete -c "lla" -n "__fish_seen_subcommand_from 'theme pull'" -s "h" -l "help" -d "Print help information" # global
complete -c "lla" -n "__fish_seen_subcommand_from 'update'" -s "h" -l "help" -d "Print help information" # global
complete -c "lla" -n "__fish_seen_subcommand_from 'use'" -s "h" -l "help" -d "Print help information" # global