# bun unlink - Unregister the current directory as a "linkable" package

# Helper function to detect if unlink subcommand is active
function __fish_bun_using_subcommand
    set -l tokens (commandline -poc)
    if contains -- unlink $tokens
        return 0
    end
    return 1
end

# Config file path
complete -c bun -n "__fish_bun_using_subcommand" -s c -l config -r -F -d "Specify path to config file"

# Package manager options
complete -c bun -n "__fish_bun_using_subcommand" -s y -l yarn -d "Write a yarn.lock file"
complete -c bun -n "__fish_bun_using_subcommand" -s p -l production -d "Don't install devDependencies"
complete -c bun -n "__fish_bun_using_subcommand" -l no-save -d "Don't update package.json"
complete -c bun -n "__fish_bun_using_subcommand" -l save -d "Save to package.json"

# Certificate options
complete -c bun -n "__fish_bun_using_subcommand" -l ca -r -x -d "Provide CA signing certificate"
complete -c bun -n "__fish_bun_using_subcommand" -l cafile -r -F -d "Path to CA certificate file"

# Installation behavior
complete -c bun -n "__fish_bun_using_subcommand" -l dry-run -d "Perform a dry run without making changes"
complete -c bun -n "__fish_bun_using_subcommand" -l frozen-lockfile -d "Disallow changes to lockfile"
complete -c bun -n "__fish_bun_using_subcommand" -s f -l force -d "Request latest versions from registry"

# Cache options
complete -c bun -n "__fish_bun_using_subcommand" -l cache-dir -r -F -d "Store cached data in directory"
complete -c bun -n "__fish_bun_using_subcommand" -l no-cache -d "Ignore manifest cache entirely"

# Logging options
complete -c bun -n "__fish_bun_using_subcommand" -l silent -d "Don't log anything"
complete -c bun -n "__fish_bun_using_subcommand" -l quiet -d "Only show tarball name when packing"
complete -c bun -n "__fish_bun_using_subcommand" -l verbose -d "Excessively verbose logging"
complete -c bun -n "__fish_bun_using_subcommand" -l no-progress -d "Disable the progress bar"
complete -c bun -n "__fish_bun_using_subcommand" -l no-summary -d "Don't print a summary"

# Verification and scripts
complete -c bun -n "__fish_bun_using_subcommand" -l no-verify -d "Skip verifying integrity of packages"
complete -c bun -n "__fish_bun_using_subcommand" -l ignore-scripts -d "Skip lifecycle scripts in package.json"
complete -c bun -n "__fish_bun_using_subcommand" -l trust -d "Add to trustedDependencies and install"

# Global and working directory
complete -c bun -n "__fish_bun_using_subcommand" -s g -l global -d "Install globally"
complete -c bun -n "__fish_bun_using_subcommand" -l cwd -r -F -d "Set working directory"

# Backend and linker options
complete -c bun -n "__fish_bun_using_subcommand" -l backend -r -x -d "Platform-specific optimizations" \
    -a "clonefile\tDefault" \
    -a "hardlink\tCreate hardlinks" \
    -a "symlink\tCreate symlinks" \
    -a "copyfile\tCopy files"
complete -c bun -n "__fish_bun_using_subcommand" -l linker -r -x -d "Linker strategy" \
    -a "isolated\tIsolated linker" \
    -a "hoisted\tHoisted linker"

# Registry
complete -c bun -n "__fish_bun_using_subcommand" -l registry -r -x -d "Use specific registry by default"

# Concurrency options
complete -c bun -n "__fish_bun_using_subcommand" -l concurrent-scripts -r -x -d "Max concurrent jobs for lifecycle scripts"
complete -c bun -n "__fish_bun_using_subcommand" -l network-concurrency -r -x -d "Max concurrent network requests"

# Lockfile and install options
complete -c bun -n "__fish_bun_using_subcommand" -l save-text-lockfile -d "Save text-based lockfile"
complete -c bun -n "__fish_bun_using_subcommand" -l omit -r -x -d "Exclude dependency types" \
    -a "dev\tDevelopment dependencies" \
    -a "optional\tOptional dependencies" \
    -a "peer\tPeer dependencies"
complete -c bun -n "__fish_bun_using_subcommand" -l lockfile-only -d "Generate lockfile without installing"

# Platform and security options
complete -c bun -n "__fish_bun_using_subcommand" -l minimum-release-age -r -x -d "Only install packages N seconds old"
complete -c bun -n "__fish_bun_using_subcommand" -l cpu -r -x -d "Override CPU architecture" \
    -a "x64\t64-bit" \
    -a "arm64\tARM 64-bit" \
    -a "*\tAll architectures"
complete -c bun -n "__fish_bun_using_subcommand" -l os -r -x -d "Override operating system" \
    -a "linux\tLinux" \
    -a "darwin\tmacOS" \
    -a "*\tAll OS"

# Help
complete -c bun -n "__fish_bun_using_subcommand" -s h -l help -d "Print help menu"
