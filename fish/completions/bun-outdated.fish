# bun outdated completions
# Display outdated dependencies for each matching workspace

complete -c bun -n "__fish_bun_using_subcommand outdated" -s c -l config -F -d "Specify path to config file"
complete -c bun -n "__fish_bun_using_subcommand outdated" -s y -l yarn -d "Write a yarn.lock file (yarn v1)"
complete -c bun -n "__fish_bun_using_subcommand outdated" -s p -l production -d "Don't install devDependencies"
complete -c bun -n "__fish_bun_using_subcommand outdated" -l no-save -d "Don't update package.json or save a lockfile"
complete -c bun -n "__fish_bun_using_subcommand outdated" -l save -d "Save to package.json (default)"
complete -c bun -n "__fish_bun_using_subcommand outdated" -l ca -x -d "Provide Certificate Authority signing certificate"
complete -c bun -n "__fish_bun_using_subcommand outdated" -l cafile -F -d "Path to Certificate Authority certificate file"
complete -c bun -n "__fish_bun_using_subcommand outdated" -l dry-run -d "Perform a dry run without making changes"
complete -c bun -n "__fish_bun_using_subcommand outdated" -l frozen-lockfile -d "Disallow changes to lockfile"
complete -c bun -n "__fish_bun_using_subcommand outdated" -s f -l force -d "Always request latest versions and reinstall"
complete -c bun -n "__fish_bun_using_subcommand outdated" -l cache-dir -F -d "Store and load cached data from directory"
complete -c bun -n "__fish_bun_using_subcommand outdated" -l no-cache -d "Ignore manifest cache entirely"
complete -c bun -n "__fish_bun_using_subcommand outdated" -l silent -d "Don't log anything"
complete -c bun -n "__fish_bun_using_subcommand outdated" -l quiet -d "Only show tarball name when packing"
complete -c bun -n "__fish_bun_using_subcommand outdated" -l verbose -d "Excessively verbose logging"
complete -c bun -n "__fish_bun_using_subcommand outdated" -l no-progress -d "Disable the progress bar"
complete -c bun -n "__fish_bun_using_subcommand outdated" -l no-summary -d "Don't print a summary"
complete -c bun -n "__fish_bun_using_subcommand outdated" -l no-verify -d "Skip verifying package integrity"
complete -c bun -n "__fish_bun_using_subcommand outdated" -l ignore-scripts -d "Skip lifecycle scripts in package.json"
complete -c bun -n "__fish_bun_using_subcommand outdated" -l trust -d "Add to trustedDependencies in package.json"
complete -c bun -n "__fish_bun_using_subcommand outdated" -s g -l global -d "Install globally"
complete -c bun -n "__fish_bun_using_subcommand outdated" -l cwd -F -d "Set a specific working directory"
complete -c bun -n "__fish_bun_using_subcommand outdated" -l backend -x -a "clonefile\tDefault
hardlink\tHardlink backend
symlink\tSymlink backend
copyfile\tCopyfile backend" -d "Backend for installing dependencies"
complete -c bun -n "__fish_bun_using_subcommand outdated" -l registry -x -d "Use specific registry, override .npmrc"
complete -c bun -n "__fish_bun_using_subcommand outdated" -l concurrent-scripts -x -d "Maximum concurrent jobs for lifecycle scripts"
complete -c bun -n "__fish_bun_using_subcommand outdated" -l network-concurrency -x -d "Maximum concurrent network requests"
complete -c bun -n "__fish_bun_using_subcommand outdated" -l save-text-lockfile -d "Save a text-based lockfile"
complete -c bun -n "__fish_bun_using_subcommand outdated" -l omit -x -a "dev\tExclude dev dependencies
optional\tExclude optional dependencies
peer\tExclude peer dependencies" -d "Exclude dependency type from install"
complete -c bun -n "__fish_bun_using_subcommand outdated" -l lockfile-only -d "Generate lockfile without installing"
complete -c bun -n "__fish_bun_using_subcommand outdated" -l linker -x -a "isolated\tIsolated strategy
hoisted\tHoisted strategy" -d "Linker strategy"
complete -c bun -n "__fish_bun_using_subcommand outdated" -l minimum-release-age -x -d "Only install packages published N seconds ago"
complete -c bun -n "__fish_bun_using_subcommand outdated" -l cpu -x -d "Override CPU architecture (x64, arm64, *)"
complete -c bun -n "__fish_bun_using_subcommand outdated" -l os -x -d "Override operating system (linux, darwin, *)"
complete -c bun -n "__fish_bun_using_subcommand outdated" -s F -l filter -x -d "Filter for matching workspaces"
complete -c bun -n "__fish_bun_using_subcommand outdated" -s r -l recursive -d "Check outdated in all workspaces"
complete -c bun -n "__fish_bun_using_subcommand outdated" -s h -l help -d "Print help menu"
