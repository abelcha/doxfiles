complete -f -c "mint" -n "__fish_use_subcommand" -a "run" -d "Install and then run a package" # sub
complete -f -c "mint" -n "__fish_use_subcommand" -a "install" -d "Install a package. If the version is already installed no action will be taken" # sub
complete -f -c "mint" -n "__fish_use_subcommand" -a "uninstall" -d "Uninstall a package by name" # sub
complete -f -c "mint" -n "__fish_use_subcommand" -a "list" -d "List all the currently installed packages. Globally linked packages are marked with *" # sub
complete -f -c "mint" -n "__fish_use_subcommand" -a "bootstrap" -d "Installs all the packages in a Mintfile" # sub
complete -f -c "mint" -n "__fish_use_subcommand" -a "which" -d "Prints the full path to the installed executable" # sub
complete -f -c "mint" -n "__fish_use_subcommand" -a "outdated" -d "List all the outdated packages in your Mintfile" # sub
complete -f -c "mint" -n "__fish_use_subcommand" -a "help" -d "Prints help information" # sub
complete -f -c "mint" -n "__fish_use_subcommand" -a "version" -d "Prints the current version of this app" # sub
complete -c "mint" -n "__fish_seen_subcommand_from 'run'" -s "e" -l "executable" -d "The executable to use" # global
complete -c "mint" -n "__fish_seen_subcommand_from 'run'" -s "h" -l "help" -d "Show help information" # global
complete -c "mint" -n "__fish_seen_subcommand_from 'run'" -s "l" -l "link" -d "Install the packages of the Mintfile globally" # global
complete -c "mint" -n "__fish_seen_subcommand_from 'run'" -s "m" -l "mintfile" -d "Custom path to a Mintfile. Defaults to Mintfile" # global
complete -c "mint" -n "__fish_seen_subcommand_from 'run'" -s "n" -l "no-install" -d "If a package is not already installed this prevents Mint from installing it automatically. It will fail instead" # global
complete -c "mint" -n "__fish_seen_subcommand_from 'run'" -s "s" -l "silent" -d "Silences any output from Mint itself" # global
complete -c "mint" -n "__fish_seen_subcommand_from 'run'" -s "v" -l "verbose" -d "Show verbose output" # global
complete -c "mint" -n "__fish_seen_subcommand_from 'install'" -s "f" -l "force" -d "Force a reinstall even if the package is already installed" # global
complete -c "mint" -n "__fish_seen_subcommand_from 'install'" -s "h" -l "help" -d "Show help information" # global
complete -c "mint" -n "__fish_seen_subcommand_from 'install'" -s "l" -l "link" -d "Install the packages of the Mintfile globally" # global
complete -c "mint" -n "__fish_seen_subcommand_from 'install'" -s "m" -l "mintfile" -d "Custom path to a Mintfile. Defaults to Mintfile" # global
complete -c "mint" -n "__fish_seen_subcommand_from 'install'" -s "n" -l "no-link" -d "Whether to prevent global linkage" # global
complete -c "mint" -n "__fish_seen_subcommand_from 'install'" -s "o" -l "overwrite" -d "Automatically overwrite a symlinked executable that is not installed by mint without asking. Either (y/n)" -xa "y n" # global
complete -c "mint" -n "__fish_seen_subcommand_from 'install'" -s "s" -l "silent" -d "Silences any output from Mint itself" # global
complete -c "mint" -n "__fish_seen_subcommand_from 'install'" -s "v" -l "verbose" -d "Show verbose output" # global
complete -c "mint" -n "__fish_seen_subcommand_from 'uninstall'" -s "h" -l "help" -d "Show help information" # global
complete -c "mint" -n "__fish_seen_subcommand_from 'list'" -s "h" -l "help" -d "Show help information" # global
complete -c "mint" -n "__fish_seen_subcommand_from 'bootstrap'" -s "h" -l "help" -d "Show help information" # global
complete -c "mint" -n "__fish_seen_subcommand_from 'bootstrap'" -s "l" -l "link" -d "Install the packages of the Mintfile globally" # global
complete -c "mint" -n "__fish_seen_subcommand_from 'bootstrap'" -s "m" -l "mintfile" -d "Custom path to a Mintfile. Defaults to Mintfile" # global
complete -c "mint" -n "__fish_seen_subcommand_from 'bootstrap'" -s "o" -l "overwrite" -d "Automatically overwrite a symlinked executable that is not installed by mint without asking. Either (y/n)" -xa "y n" # global
complete -c "mint" -n "__fish_seen_subcommand_from 'bootstrap'" -s "v" -l "verbose" -d "Show verbose output" # global
complete -c "mint" -n "__fish_seen_subcommand_from 'which'" -s "h" -l "help" -d "Show help information" # global
complete -c "mint" -n "__fish_seen_subcommand_from 'which'" -s "l" -l "link" -d "Install the packages of the Mintfile globally" # global
complete -c "mint" -n "__fish_seen_subcommand_from 'which'" -s "m" -l "mintfile" -d "Custom path to a Mintfile. Defaults to Mintfile" # global
complete -c "mint" -n "__fish_seen_subcommand_from 'which'" -s "s" -l "silent" -d "Silences any output from Mint itself" # global
complete -c "mint" -n "__fish_seen_subcommand_from 'which'" -s "v" -l "verbose" -d "Show verbose output" # global
complete -c "mint" -n "__fish_seen_subcommand_from 'outdated'" -s "h" -l "help" -d "Show help information" # global
complete -c "mint" -n "__fish_seen_subcommand_from 'outdated'" -s "l" -l "link" -d "Install the packages of the Mintfile globally" # global
complete -c "mint" -n "__fish_seen_subcommand_from 'outdated'" -s "m" -l "mintfile" -d "Custom path to a Mintfile. Defaults to Mintfile" # global
complete -c "mint" -n "__fish_seen_subcommand_from 'outdated'" -s "v" -l "verbose" -d "Show verbose output" # global
complete -f -c "mint" -n "__fish_seen_subcommand_from 'help'" -a "run" -d "Install and then run a package" # sub
complete -f -c "mint" -n "__fish_seen_subcommand_from 'help'" -a "install" -d "Install a package. If the version is already installed no action will be taken" # sub
complete -f -c "mint" -n "__fish_seen_subcommand_from 'help'" -a "uninstall" -d "Uninstall a package by name" # sub
complete -f -c "mint" -n "__fish_seen_subcommand_from 'help'" -a "list" -d "List all the currently installed packages. Globally linked packages are marked with *" # sub
complete -f -c "mint" -n "__fish_seen_subcommand_from 'help'" -a "bootstrap" -d "Installs all the packages in a Mintfile" # sub
complete -f -c "mint" -n "__fish_seen_subcommand_from 'help'" -a "which" -d "Prints the full path to the installed executable" # sub
complete -f -c "mint" -n "__fish_seen_subcommand_from 'help'" -a "outdated" -d "List all the outdated packages in your Mintfile" # sub
complete -f -c "mint" -n "__fish_seen_subcommand_from 'help'" -a "help" -d "Prints help information" # sub
complete -f -c "mint" -n "__fish_seen_subcommand_from 'help'" -a "version" -d "Prints the current version of this app" # sub
complete -c "mint" -n "__fish_seen_subcommand_from 'version'" -s "h" -l "help" -d "Show help information" # global