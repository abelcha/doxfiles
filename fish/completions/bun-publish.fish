complete -c bun -f

# bun publish subcommand
complete -c bun -n "__fish_bun_using_subcommand publish" -a "[dist]" -d "Path to distribution tarball or directory"

# Config & Registry
complete -c bun -n "__fish_bun_using_subcommand publish" -s c -l config -r -d "Specify path to config file (bunfig.toml)"
complete -c bun -n "__fish_bun_using_subcommand publish" -l registry -x -d "Use a specific registry, overriding .npmrc and bunfig.toml"

# Package publishing options
complete -c bun -n "__fish_bun_using_subcommand publish" -l access -x -a "public\tPublic access
restricted\tRestricted access
private\tPrivate access" -d "Set access level for scoped packages"
complete -c bun -n "__fish_bun_using_subcommand publish" -l tag -x -d "Tag the release (default: latest)"
complete -c bun -n "__fish_bun_using_subcommand publish" -l otp -x -d "Provide a one-time password for authentication"
complete -c bun -n "__fish_bun_using_subcommand publish" -l auth-type -x -a "web\tWeb-based OTP" -d "Specify type of one-time password authentication (default: web)"
complete -c bun -n "__fish_bun_using_subcommand publish" -l dry-run -d "Perform a dry run without making changes"
complete -c bun -n "__fish_bun_using_subcommand publish" -l tolerate-republish -d "Don't exit with code 1 when republishing over existing version"

# Installation options
complete -c bun -n "__fish_bun_using_subcommand publish" -s y -l yarn -d "Write a yarn.lock file (yarn v1)"
complete -c bun -n "__fish_bun_using_subcommand publish" -s p -l production -d "Don't install devDependencies"
complete -c bun -n "__fish_bun_using_subcommand publish" -l no-save -d "Don't update package.json or save a lockfile"
complete -c bun -n "__fish_bun_using_subcommand publish" -l save -d "Save to package.json (true by default)"
complete -c bun -n "__fish_bun_using_subcommand publish" -l frozen-lockfile -d "Disallow changes to lockfile"
complete -c bun -n "__fish_bun_using_subcommand publish" -s f -l force -d "Always request latest versions from registry and reinstall all dependencies"
complete -c bun -n "__fish_bun_using_subcommand publish" -s g -l global -d "Install globally"
complete -c bun -n "__fish_bun_using_subcommand publish" -l save-text-lockfile -d "Save a text-based lockfile"
complete -c bun -n "__fish_bun_using_subcommand publish" -l lockfile-only -d "Generate a lockfile without installing dependencies"
complete -c bun -n "__fish_bun_using_subcommand publish" -l omit -x -a "dev\tOmit devDependencies
optional\tOmit optionalDependencies
peer\tOmit peerDependencies" -d "Exclude dependencies from install"

# Cache & Performance
complete -c bun -n "__fish_bun_using_subcommand publish" -l cache-dir -r -d "Store & load cached data from a specific directory path"
complete -c bun -n "__fish_bun_using_subcommand publish" -l no-cache -d "Ignore manifest cache entirely"
complete -c bun -n "__fish_bun_using_subcommand publish" -l no-progress -d "Disable the progress bar"
complete -c bun -n "__fish_bun_using_subcommand publish" -l no-summary -d "Don't print a summary"
complete -c bun -n "__fish_bun_using_subcommand publish" -l concurrent-scripts -x -d "Maximum number of concurrent jobs for lifecycle scripts (default: 2x CPU cores)"
complete -c bun -n "__fish_bun_using_subcommand publish" -l network-concurrency -x -d "Maximum number of concurrent network requests (default: 48)"

# Linker & backend
complete -c bun -n "__fish_bun_using_subcommand publish" -l linker -x -a "isolated\tIsolated linker strategy
hoisted\tHoisted linker strategy" -d "Linker strategy"
complete -c bun -n "__fish_bun_using_subcommand publish" -l backend -x -a "clonefile\tClonefile (default)
hardlink\tHardlink
symlink\tSymlink
copyfile\tCopyfile" -d "Platform-specific optimizations for installing dependencies"

# Logging
complete -c bun -n "__fish_bun_using_subcommand publish" -l silent -d "Don't log anything"
complete -c bun -n "__fish_bun_using_subcommand publish" -l quiet -d "Only show tarball name when packing"
complete -c bun -n "__fish_bun_using_subcommand publish" -l verbose -d "Excessively verbose logging"

# Security & verification
complete -c bun -n "__fish_bun_using_subcommand publish" -l ca -x -d "Provide a Certificate Authority signing certificate"
complete -c bun -n "__fish_bun_using_subcommand publish" -l cafile -r -d "Certificate Authority signing certificate file path"
complete -c bun -n "__fish_bun_using_subcommand publish" -l no-verify -d "Skip verifying integrity of newly downloaded packages"
complete -c bun -n "__fish_bun_using_subcommand publish" -l ignore-scripts -d "Skip lifecycle scripts in package.json"
complete -c bun -n "__fish_bun_using_subcommand publish" -l trust -d "Add to trustedDependencies in package.json and install"

# Environment & workspace
complete -c bun -n "__fish_bun_using_subcommand publish" -l cwd -r -d "Set a specific cwd"

# Platform & compression
complete -c bun -n "__fish_bun_using_subcommand publish" -l cpu -x -d "Override CPU architecture for optional dependencies (e.g., x64, arm64, * for all)"
complete -c bun -n "__fish_bun_using_subcommand publish" -l os -x -d "Override operating system for optional dependencies (e.g., linux, darwin, * for all)"
complete -c bun -n "__fish_bun_using_subcommand publish" -l minimum-release-age -x -d "Only install packages published at least N seconds ago"
complete -c bun -n "__fish_bun_using_subcommand publish" -l gzip-level -x -d "Specify a custom compression level for gzip (default: 9)"

# Help
complete -c bun -n "__fish_bun_using_subcommand publish" -s h -l help -d "Print help menu"
