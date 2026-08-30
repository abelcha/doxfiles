#!/usr/bin/env fish
# Completions for `bun install`

# Helper function to detect if we're using the install subcommand
function __fish_bun_using_install_command
    set -l tokens (commandline -opc)
    # tokens[1] is 'bun', tokens[2] should be 'install' or 'i'
    if test (count $tokens) -ge 2
        if test "$tokens[2]" = "install" -o "$tokens[2]" = "i"
            return 0
        end
    end
    return 1
end

# Config flag
complete -c bun -n "__fish_bun_using_install_command" -s c -l config -x -d "Specify path to config file (bunfig.toml)"

# Yarn lockfile flag
complete -c bun -n "__fish_bun_using_install_command" -s y -l yarn -d "Write a yarn.lock file (yarn v1)"

# Production flag
complete -c bun -n "__fish_bun_using_install_command" -s p -l production -d "Don't install devDependencies"

# Save flags
complete -c bun -n "__fish_bun_using_install_command" -l no-save -d "Don't update package.json or save a lockfile"
complete -c bun -n "__fish_bun_using_install_command" -l save -d "Save to package.json (true by default)"

# Certificate flags
complete -c bun -n "__fish_bun_using_install_command" -l ca -x -d "Provide a Certificate Authority signing certificate"
complete -c bun -n "__fish_bun_using_install_command" -l cafile -F -d "File path to the certificate"

# Dry run flag
complete -c bun -n "__fish_bun_using_install_command" -l dry-run -d "Perform a dry run without making changes"

# Lockfile flag
complete -c bun -n "__fish_bun_using_install_command" -l frozen-lockfile -d "Disallow changes to lockfile"

# Force flag
complete -c bun -n "__fish_bun_using_install_command" -s f -l force -d "Always request latest versions and reinstall all dependencies"

# Cache flags
complete -c bun -n "__fish_bun_using_install_command" -l cache-dir -x -d "Store & load cached data from a specific directory"
complete -c bun -n "__fish_bun_using_install_command" -l no-cache -d "Ignore manifest cache entirely"

# Logging flags
complete -c bun -n "__fish_bun_using_install_command" -l silent -d "Don't log anything"
complete -c bun -n "__fish_bun_using_install_command" -l quiet -d "Only show tarball name when packing"
complete -c bun -n "__fish_bun_using_install_command" -l verbose -d "Excessively verbose logging"

# Progress flags
complete -c bun -n "__fish_bun_using_install_command" -l no-progress -d "Disable the progress bar"
complete -c bun -n "__fish_bun_using_install_command" -l no-summary -d "Don't print a summary"

# Verification flag
complete -c bun -n "__fish_bun_using_install_command" -l no-verify -d "Skip verifying integrity of newly downloaded packages"

# Scripts flag
complete -c bun -n "__fish_bun_using_install_command" -l ignore-scripts -d "Skip lifecycle scripts in the project's package.json"

# Trust flag
complete -c bun -n "__fish_bun_using_install_command" -l trust -d "Add to trustedDependencies and install the package(s)"

# Global flag
complete -c bun -n "__fish_bun_using_install_command" -s g -l global -d "Install globally"

# CWD flag
complete -c bun -n "__fish_bun_using_install_command" -l cwd -x -d "Set a specific working directory"

# Backend flag with options
complete -c bun -n "__fish_bun_using_install_command" -l backend -x -a "clonefile\tDefault hardlink\tHardlink symlink\tSymlink copyfile\tCopyfile" -d "Platform-specific optimizations"

# Registry flag
complete -c bun -n "__fish_bun_using_install_command" -l registry -x -d "Use a specific registry by default"

# Concurrency flags
complete -c bun -n "__fish_bun_using_install_command" -l concurrent-scripts -x -d "Maximum concurrent jobs for lifecycle scripts"
complete -c bun -n "__fish_bun_using_install_command" -l network-concurrency -x -d "Maximum concurrent network requests (default 48)"

# Lockfile format flag
complete -c bun -n "__fish_bun_using_install_command" -l save-text-lockfile -d "Save a text-based lockfile"

# Omit flag with options
complete -c bun -n "__fish_bun_using_install_command" -l omit -x -a "dev\tExclude dev optional\tExclude optional peer\tExclude peer" -d "Exclude dependency types from install"

# Lockfile only flag
complete -c bun -n "__fish_bun_using_install_command" -l lockfile-only -d "Generate lockfile without installing"

# Linker flag with options
complete -c bun -n "__fish_bun_using_install_command" -l linker -x -a "isolated\tIsolated hoisted\tHoisted" -d "Linker strategy"

# Minimum release age flag
complete -c bun -n "__fish_bun_using_install_command" -l minimum-release-age -x -d "Only install packages published N seconds ago"

# Architecture flags
complete -c bun -n "__fish_bun_using_install_command" -l cpu -x -d "Override CPU architecture (x64, arm64, *)"
complete -c bun -n "__fish_bun_using_install_command" -l os -x -d "Override OS (linux, darwin, *)"

# Dependency type flags
complete -c bun -n "__fish_bun_using_install_command" -s d -l dev -d "Add to devDependencies"
complete -c bun -n "__fish_bun_using_install_command" -l optional -d "Add to optionalDependencies"
complete -c bun -n "__fish_bun_using_install_command" -l peer -d "Add to peerDependencies"

# Exact version flag
complete -c bun -n "__fish_bun_using_install_command" -s E -l exact -d "Add exact version instead of ^range"

# Filter flag
complete -c bun -n "__fish_bun_using_install_command" -l filter -x -d "Install for matching workspaces"

# Analyze flag
complete -c bun -n "__fish_bun_using_install_command" -s a -l analyze -d "Analyze & install dependencies of files recursively"

# Only missing flag
complete -c bun -n "__fish_bun_using_install_command" -l only-missing -d "Only add if not already present"

# Help flag
complete -c bun -n "__fish_bun_using_install_command" -s h -l help -d "Print help menu"
