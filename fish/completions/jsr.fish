complete -c "jsr" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # global
complete -c "jsr" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # global
complete -c "jsr" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # global
complete -c "jsr" -l "npm" -d "Use npm to remove and install packages." # global
complete -c "jsr" -l "yarn" -d "Use yarn to remove and install packages." # global
complete -c "jsr" -l "pnpm" -d "Use pnpm to remove and install packages." # global
complete -c "jsr" -l "bun" -d "Use bun to remove and install packages." # global
complete -c "jsr" -l "verbose" -d "Show additional debugging information." # global
complete -c "jsr" -s "h" -l "help" -d "Show this help text." # global
complete -c "jsr" -s "v" -l "version" -d "Print the version number." # global
complete -c "jsr" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # global
complete -c "jsr" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # global
complete -c "jsr" -l "allow-slow-types" -d "Allow publishing with slow types." # global
complete -c "jsr" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # global
complete -f -c "jsr" -n "__fish_use_subcommand" -a "script" -d "Run a script from the package.json file" # sub
complete -f -c "jsr" -n "__fish_use_subcommand" -a "run" -d "Run a script from the package.json file" # sub
complete -f -c "jsr" -n "__fish_use_subcommand" -a "install" -d "Install one or more JSR packages." # sub
complete -f -c "jsr" -n "__fish_use_subcommand" -a "add" -d "Install one or more JSR packages." # sub
complete -f -c "jsr" -n "__fish_use_subcommand" -a "i" -d "Install one or more JSR packages." # sub
complete -f -c "jsr" -n "__fish_use_subcommand" -a "uninstall" -d "Remove one or more JSR packages." # sub
complete -f -c "jsr" -n "__fish_use_subcommand" -a "remove" -d "Remove one or more JSR packages." # sub
complete -f -c "jsr" -n "__fish_use_subcommand" -a "r" -d "Remove one or more JSR packages." # sub
complete -f -c "jsr" -n "__fish_use_subcommand" -a "publish" -d "Publish a package to the JSR registry." # sub
complete -f -c "jsr" -n "__fish_use_subcommand" -a "info" -d "Show package information." # sub
complete -f -c "jsr" -n "__fish_use_subcommand" -a "show" -d "Show package information." # sub
complete -f -c "jsr" -n "__fish_use_subcommand" -a "view" -d "Show package information." # sub
complete -c "jsr" -n "__fish_seen_subcommand_from 'script'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'script'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'script'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'script'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'script'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'script'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'script'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'script'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'script'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'script'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'script'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'script'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'script'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'script'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'i'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'i'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'i'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'i'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'i'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'i'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'i'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'i'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'i'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'i'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'i'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'i'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'i'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'i'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'uninstall'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'uninstall'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'uninstall'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'uninstall'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'uninstall'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'uninstall'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'uninstall'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'uninstall'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'uninstall'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'uninstall'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'uninstall'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'uninstall'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'uninstall'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'uninstall'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'remove'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'remove'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'remove'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'remove'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'remove'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'remove'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'remove'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'remove'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'remove'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'remove'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'remove'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'remove'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'remove'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'remove'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'r'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'r'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'r'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'r'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'r'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'r'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'r'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'r'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'r'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'r'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'r'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'r'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'r'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'r'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'publish'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'publish'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'publish'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'publish'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'publish'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'publish'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'publish'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'publish'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'publish'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'publish'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'publish'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'publish'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'publish'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'publish'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'show'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'show'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'show'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'show'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'show'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'show'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'show'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'show'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'show'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'show'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'show'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'show'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'show'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'show'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'view'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'view'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'view'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'view'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'view'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'view'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'view'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'view'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'view'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'view'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'view'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'view'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'view'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'view'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'script'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'script'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'script'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'script'" -l "npm" -d "Use npm to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'script'" -l "yarn" -d "Use yarn to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'script'" -l "pnpm" -d "Use pnpm to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'script'" -l "bun" -d "Use bun to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'script'" -l "verbose" -d "Show additional debugging information." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'script'" -s "h" -l "help" -d "Show this help text." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'script'" -s "v" -l "version" -d "Print the version number." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'run'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'run'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'run'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'run'" -l "npm" -d "Use npm to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'run'" -l "yarn" -d "Use yarn to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'run'" -l "pnpm" -d "Use pnpm to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'run'" -l "bun" -d "Use bun to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'run'" -l "verbose" -d "Show additional debugging information." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'run'" -s "h" -l "help" -d "Show this help text." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'run'" -s "v" -l "version" -d "Print the version number." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'run'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'run'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'run'" -l "allow-slow-types" -d "Allow publishing with slow types." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'run'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # global
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'run'" -a "script" -d "Run a script from the package.json file" # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'run'" -a "run" -d "Run a script from the package.json file" # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'run'" -a "install" -d "Install one or more JSR packages." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'run'" -a "add" -d "Install one or more JSR packages." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'run'" -a "i" -d "Install one or more JSR packages." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'run'" -a "uninstall" -d "Remove one or more JSR packages." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'run'" -a "remove" -d "Remove one or more JSR packages." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'run'" -a "r" -d "Remove one or more JSR packages." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'run'" -a "publish" -d "Publish a package to the JSR registry." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'run'" -a "info" -d "Show package information." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'run'" -a "show" -d "Show package information." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'run'" -a "view" -d "Show package information." # sub
complete -c "jsr" -n "__fish_seen_subcommand_from 'run script'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run script'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run script'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run script'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run script'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run script'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run script'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run script'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run script'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run script'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run script'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run script'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run script'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run script'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run run'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run run'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run run'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run run'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run run'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run run'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run run'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run run'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run run'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run run'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run run'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run run'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run run'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run run'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run install'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run install'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run install'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run install'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run install'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run install'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run install'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run install'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run install'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run install'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run install'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run install'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run install'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run install'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run add'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run add'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run add'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run add'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run add'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run add'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run add'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run add'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run add'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run add'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run add'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run add'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run add'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run add'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run i'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run i'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run i'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run i'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run i'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run i'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run i'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run i'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run i'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run i'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run i'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run i'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run i'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run i'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run uninstall'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run uninstall'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run uninstall'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run uninstall'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run uninstall'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run uninstall'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run uninstall'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run uninstall'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run uninstall'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run uninstall'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run uninstall'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run uninstall'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run uninstall'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run uninstall'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run remove'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run remove'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run remove'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run remove'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run remove'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run remove'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run remove'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run remove'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run remove'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run remove'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run remove'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run remove'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run remove'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run remove'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run r'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run r'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run r'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run r'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run r'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run r'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run r'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run r'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run r'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run r'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run r'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run r'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run r'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run r'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run publish'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run publish'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run publish'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run publish'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run publish'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run publish'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run publish'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run publish'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run publish'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run publish'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run publish'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run publish'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run publish'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run publish'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run info'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run info'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run info'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run info'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run info'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run info'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run info'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run info'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run info'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run info'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run info'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run info'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run info'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run info'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run show'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run show'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run show'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run show'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run show'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run show'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run show'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run show'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run show'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run show'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run show'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run show'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run show'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run show'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run view'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run view'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run view'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run view'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run view'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run view'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run view'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run view'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run view'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run view'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run view'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run view'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run view'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'run view'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'install'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'install'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'install'" -l "npm" -d "Use npm to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'install'" -l "yarn" -d "Use yarn to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'install'" -l "pnpm" -d "Use pnpm to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'install'" -l "bun" -d "Use bun to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'install'" -l "verbose" -d "Show additional debugging information." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'install'" -s "h" -l "help" -d "Show this help text." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'install'" -s "v" -l "version" -d "Print the version number." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'install'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'install'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'install'" -l "allow-slow-types" -d "Allow publishing with slow types." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'install'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # global
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'install'" -a "script" -d "Run a script from the package.json file" # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'install'" -a "run" -d "Run a script from the package.json file" # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'install'" -a "install" -d "Install one or more JSR packages." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'install'" -a "add" -d "Install one or more JSR packages." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'install'" -a "i" -d "Install one or more JSR packages." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'install'" -a "uninstall" -d "Remove one or more JSR packages." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'install'" -a "remove" -d "Remove one or more JSR packages." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'install'" -a "r" -d "Remove one or more JSR packages." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'install'" -a "publish" -d "Publish a package to the JSR registry." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'install'" -a "info" -d "Show package information." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'install'" -a "show" -d "Show package information." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'install'" -a "view" -d "Show package information." # sub
complete -c "jsr" -n "__fish_seen_subcommand_from 'install script'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install script'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install script'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install script'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install script'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install script'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install script'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install script'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install script'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install script'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install script'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install script'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install script'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install script'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install run'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install run'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install run'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install run'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install run'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install run'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install run'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install run'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install run'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install run'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install run'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install run'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install run'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install run'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install install'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install install'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install install'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install install'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install install'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install install'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install install'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install install'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install install'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install install'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install install'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install install'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install install'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install install'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install add'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install add'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install add'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install add'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install add'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install add'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install add'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install add'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install add'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install add'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install add'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install add'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install add'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install add'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install i'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install i'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install i'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install i'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install i'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install i'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install i'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install i'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install i'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install i'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install i'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install i'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install i'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install i'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install uninstall'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install uninstall'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install uninstall'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install uninstall'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install uninstall'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install uninstall'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install uninstall'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install uninstall'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install uninstall'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install uninstall'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install uninstall'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install uninstall'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install uninstall'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install uninstall'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install remove'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install remove'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install remove'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install remove'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install remove'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install remove'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install remove'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install remove'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install remove'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install remove'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install remove'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install remove'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install remove'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install remove'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install r'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install r'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install r'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install r'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install r'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install r'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install r'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install r'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install r'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install r'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install r'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install r'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install r'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install r'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install publish'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install publish'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install publish'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install publish'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install publish'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install publish'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install publish'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install publish'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install publish'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install publish'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install publish'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install publish'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install publish'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install publish'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install info'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install info'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install info'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install info'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install info'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install info'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install info'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install info'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install info'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install info'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install info'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install info'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install info'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install info'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install show'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install show'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install show'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install show'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install show'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install show'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install show'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install show'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install show'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install show'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install show'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install show'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install show'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install show'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install view'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install view'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install view'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install view'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install view'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install view'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install view'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install view'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install view'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install view'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install view'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install view'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install view'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'install view'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'add'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'add'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'add'" -l "npm" -d "Use npm to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'add'" -l "yarn" -d "Use yarn to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'add'" -l "pnpm" -d "Use pnpm to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'add'" -l "bun" -d "Use bun to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'add'" -l "verbose" -d "Show additional debugging information." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'add'" -s "h" -l "help" -d "Show this help text." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'add'" -s "v" -l "version" -d "Print the version number." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'add'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'add'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'add'" -l "allow-slow-types" -d "Allow publishing with slow types." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'add'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # global
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'add'" -a "script" -d "Run a script from the package.json file" # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'add'" -a "run" -d "Run a script from the package.json file" # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'add'" -a "install" -d "Install one or more JSR packages." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'add'" -a "add" -d "Install one or more JSR packages." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'add'" -a "i" -d "Install one or more JSR packages." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'add'" -a "uninstall" -d "Remove one or more JSR packages." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'add'" -a "remove" -d "Remove one or more JSR packages." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'add'" -a "r" -d "Remove one or more JSR packages." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'add'" -a "publish" -d "Publish a package to the JSR registry." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'add'" -a "info" -d "Show package information." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'add'" -a "show" -d "Show package information." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'add'" -a "view" -d "Show package information." # sub
complete -c "jsr" -n "__fish_seen_subcommand_from 'add script'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add script'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add script'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add script'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add script'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add script'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add script'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add script'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add script'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add script'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add script'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add script'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add script'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add script'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add run'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add run'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add run'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add run'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add run'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add run'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add run'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add run'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add run'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add run'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add run'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add run'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add run'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add run'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add install'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add install'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add install'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add install'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add install'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add install'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add install'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add install'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add install'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add install'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add install'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add install'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add install'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add install'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add add'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add add'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add add'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add add'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add add'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add add'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add add'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add add'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add add'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add add'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add add'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add add'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add add'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add add'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add i'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add i'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add i'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add i'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add i'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add i'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add i'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add i'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add i'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add i'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add i'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add i'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add i'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add i'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add uninstall'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add uninstall'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add uninstall'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add uninstall'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add uninstall'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add uninstall'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add uninstall'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add uninstall'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add uninstall'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add uninstall'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add uninstall'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add uninstall'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add uninstall'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add uninstall'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add remove'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add remove'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add remove'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add remove'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add remove'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add remove'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add remove'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add remove'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add remove'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add remove'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add remove'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add remove'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add remove'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add remove'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add r'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add r'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add r'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add r'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add r'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add r'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add r'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add r'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add r'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add r'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add r'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add r'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add r'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add r'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add publish'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add publish'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add publish'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add publish'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add publish'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add publish'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add publish'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add publish'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add publish'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add publish'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add publish'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add publish'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add publish'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add publish'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add info'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add info'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add info'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add info'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add info'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add info'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add info'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add info'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add info'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add info'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add info'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add info'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add info'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add info'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add show'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add show'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add show'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add show'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add show'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add show'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add show'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add show'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add show'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add show'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add show'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add show'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add show'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add show'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add view'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add view'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add view'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add view'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add view'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add view'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add view'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add view'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add view'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add view'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add view'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add view'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add view'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'add view'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'i'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'i'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'i'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'i'" -l "npm" -d "Use npm to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'i'" -l "yarn" -d "Use yarn to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'i'" -l "pnpm" -d "Use pnpm to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'i'" -l "bun" -d "Use bun to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'i'" -l "verbose" -d "Show additional debugging information." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'i'" -s "h" -l "help" -d "Show this help text." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'i'" -s "v" -l "version" -d "Print the version number." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'uninstall'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'uninstall'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'uninstall'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'uninstall'" -l "npm" -d "Use npm to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'uninstall'" -l "yarn" -d "Use yarn to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'uninstall'" -l "pnpm" -d "Use pnpm to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'uninstall'" -l "bun" -d "Use bun to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'uninstall'" -l "verbose" -d "Show additional debugging information." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'uninstall'" -s "h" -l "help" -d "Show this help text." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'uninstall'" -s "v" -l "version" -d "Print the version number." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'remove'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'remove'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'remove'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'remove'" -l "npm" -d "Use npm to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'remove'" -l "yarn" -d "Use yarn to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'remove'" -l "pnpm" -d "Use pnpm to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'remove'" -l "bun" -d "Use bun to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'remove'" -l "verbose" -d "Show additional debugging information." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'remove'" -s "h" -l "help" -d "Show this help text." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'remove'" -s "v" -l "version" -d "Print the version number." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'r'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'r'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'r'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'r'" -l "npm" -d "Use npm to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'r'" -l "yarn" -d "Use yarn to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'r'" -l "pnpm" -d "Use pnpm to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'r'" -l "bun" -d "Use bun to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'r'" -l "verbose" -d "Show additional debugging information." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'r'" -s "h" -l "help" -d "Show this help text." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'r'" -s "v" -l "version" -d "Print the version number." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'publish'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'publish'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'publish'" -l "allow-slow-types" -d "Allow publishing with slow types." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'publish'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'info'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'info'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'info'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'info'" -l "npm" -d "Use npm to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'info'" -l "yarn" -d "Use yarn to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'info'" -l "pnpm" -d "Use pnpm to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'info'" -l "bun" -d "Use bun to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'info'" -l "verbose" -d "Show additional debugging information." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'info'" -s "h" -l "help" -d "Show this help text." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'info'" -s "v" -l "version" -d "Print the version number." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'info'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'info'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'info'" -l "allow-slow-types" -d "Allow publishing with slow types." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'info'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # global
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'info'" -a "script" -d "Run a script from the package.json file" # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'info'" -a "run" -d "Run a script from the package.json file" # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'info'" -a "install" -d "Install one or more JSR packages." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'info'" -a "add" -d "Install one or more JSR packages." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'info'" -a "i" -d "Install one or more JSR packages." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'info'" -a "uninstall" -d "Remove one or more JSR packages." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'info'" -a "remove" -d "Remove one or more JSR packages." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'info'" -a "r" -d "Remove one or more JSR packages." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'info'" -a "publish" -d "Publish a package to the JSR registry." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'info'" -a "info" -d "Show package information." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'info'" -a "show" -d "Show package information." # sub
complete -f -c "jsr" -n "__fish_seen_subcommand_from 'info'" -a "view" -d "Show package information." # sub
complete -c "jsr" -n "__fish_seen_subcommand_from 'info script'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info script'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info script'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info script'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info script'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info script'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info script'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info script'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info script'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info script'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info script'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info script'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info script'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info script'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info run'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info run'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info run'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info run'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info run'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info run'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info run'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info run'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info run'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info run'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info run'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info run'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info run'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info run'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info install'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info install'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info install'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info install'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info install'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info install'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info install'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info install'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info install'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info install'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info install'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info install'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info install'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info install'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info add'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info add'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info add'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info add'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info add'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info add'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info add'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info add'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info add'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info add'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info add'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info add'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info add'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info add'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info i'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info i'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info i'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info i'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info i'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info i'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info i'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info i'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info i'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info i'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info i'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info i'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info i'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info i'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info uninstall'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info uninstall'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info uninstall'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info uninstall'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info uninstall'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info uninstall'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info uninstall'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info uninstall'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info uninstall'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info uninstall'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info uninstall'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info uninstall'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info uninstall'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info uninstall'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info remove'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info remove'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info remove'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info remove'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info remove'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info remove'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info remove'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info remove'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info remove'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info remove'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info remove'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info remove'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info remove'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info remove'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info r'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info r'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info r'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info r'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info r'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info r'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info r'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info r'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info r'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info r'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info r'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info r'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info r'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info r'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info publish'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info publish'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info publish'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info publish'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info publish'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info publish'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info publish'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info publish'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info publish'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info publish'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info publish'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info publish'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info publish'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info publish'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info info'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info info'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info info'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info info'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info info'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info info'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info info'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info info'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info info'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info info'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info info'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info info'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info info'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info info'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info show'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info show'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info show'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info show'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info show'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info show'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info show'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info show'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info show'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info show'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info show'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info show'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info show'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info show'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info view'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info view'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info view'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info view'" -l "npm" -d "Use npm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info view'" -l "yarn" -d "Use yarn to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info view'" -l "pnpm" -d "Use pnpm to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info view'" -l "bun" -d "Use bun to remove and install packages." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info view'" -l "verbose" -d "Show additional debugging information." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info view'" -s "h" -l "help" -d "Show this help text." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info view'" -s "v" -l "version" -d "Print the version number." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info view'" -l "token" -d "The API token to use when publishing. If unset, interactive authentication will be used." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info view'" -l "dry-run" -d "Prepare the package for publishing performing all checks and validations without uploading." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info view'" -l "allow-slow-types" -d "Allow publishing with slow types." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'info view'" -l "provenance" -d "From CI/CD system, publicly links the package to where it was built and published from." # subcommands flags
complete -c "jsr" -n "__fish_seen_subcommand_from 'show'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'show'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'show'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'show'" -l "npm" -d "Use npm to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'show'" -l "yarn" -d "Use yarn to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'show'" -l "pnpm" -d "Use pnpm to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'show'" -l "bun" -d "Use bun to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'show'" -l "verbose" -d "Show additional debugging information." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'show'" -s "h" -l "help" -d "Show this help text." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'show'" -s "v" -l "version" -d "Print the version number." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'view'" -s "P" -l "save-prod" -d "Package will be added to dependencies. This is the default." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'view'" -s "D" -l "save-dev" -d "Package will be added to devDependencies." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'view'" -s "O" -l "save-optional" -d "Package will be added to optionalDependencies." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'view'" -l "npm" -d "Use npm to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'view'" -l "yarn" -d "Use yarn to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'view'" -l "pnpm" -d "Use pnpm to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'view'" -l "bun" -d "Use bun to remove and install packages." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'view'" -l "verbose" -d "Show additional debugging information." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'view'" -s "h" -l "help" -d "Show this help text." # global
complete -c "jsr" -n "__fish_seen_subcommand_from 'view'" -s "v" -l "version" -d "Print the version number." # global