function _fish_complete_vcpkg_package
    if type -q jq
        vcpkg search --x-json 2>/dev/null | jq -r 'to_entries[] | "\(.key)\t\(.value.description[0])"'

    end
end
complete -c vcpkg -l "@response_file" -d "Contains one argument per line expanded at that location" # global
complete -f -c vcpkg -n __fish_use_subcommand -a export -d "Creates a standalone deployment of installed ports" # sub
complete -f -c vcpkg -n __fish_use_subcommand -a install -d "Installs a package"
complete --command vcpkg --condition '__fish_seen_subcommand_from install' -x -a '(_fish_complete_vcpkg_package)'
complete -f -c vcpkg -n __fish_use_subcommand -a remove -d "Uninstalls a package" # sub
complete -f -c vcpkg -n __fish_use_subcommand -a x-set-installed -d "Installs, upgrades, or removes packages such that that installed matches exactly those supplied" # sub
complete -f -c vcpkg -n __fish_use_subcommand -a upgrade -d "Rebuilds all outdated packages" # sub
complete -f -c vcpkg -n __fish_use_subcommand -a x-check-support -d "Tests whether a port is supported without building it" # sub
complete -f -c vcpkg -n __fish_use_subcommand -a depend-info -d "Displays a list of dependencies for ports" # sub
complete -f -c vcpkg -n __fish_use_subcommand -a list -d "Lists installed libraries" # sub
complete -f -c vcpkg -n __fish_use_subcommand -a owns -d "Searches for the owner of a file in installed packages" # sub
complete -f -c vcpkg -n __fish_use_subcommand -a x-package-info -d "Display detailed information on packages" # sub
complete -f -c vcpkg -n __fish_use_subcommand -a portsdiff -d "Diffs changes in port versions between commits" # sub
complete -f -c vcpkg -n __fish_use_subcommand -a search -d "Searches for packages available to be built" # sub
complete -f -c vcpkg -n __fish_use_subcommand -a update -d "Lists packages that can be upgraded" # sub
complete -f -c vcpkg -n __fish_use_subcommand -a add -d "Adds dependency to manifest" # sub
complete -f -c vcpkg -n __fish_use_subcommand -a x-add-version -d "Adds a version to the version database" # sub
complete -f -c vcpkg -n __fish_use_subcommand -a create -d "Creates a new port" # sub
complete -f -c vcpkg -n __fish_use_subcommand -a edit -d "Edits a port, optionally with ＄EDITOR, defaults to \"code\"" # sub
complete -f -c vcpkg -n __fish_use_subcommand -a env -d "Creates a clean shell environment for development or compiling" # sub
complete -f -c vcpkg -n __fish_use_subcommand -a format-manifest -d "Prettyfies vcpkg.json" # sub
complete -f -c vcpkg -n __fish_use_subcommand -a hash -d "Gets a file's SHA256 or SHA512" # sub
complete -f -c vcpkg -n __fish_use_subcommand -a x-init-registry -d "Creates a blank git registry" # sub
complete -f -c vcpkg -n __fish_use_subcommand -a new -d "Creates a new manifest" # sub
complete -f -c vcpkg -n __fish_use_subcommand -a x-update-baseline -d "Updates baselines of git registries in a manifest to those registries' HEAD commit" # sub
complete -f -c vcpkg -n __fish_use_subcommand -a ci -d "Tries building all ports for CI testing" # sub
complete -f -c vcpkg -n __fish_use_subcommand -a x-ci-verify-versions -d "Checks integrity of the version database" # sub
complete -f -c vcpkg -n __fish_use_subcommand -a contact -d "Displays contact information to send feedback" # sub
complete -f -c vcpkg -n __fish_use_subcommand -a fetch -d "Fetches something from the system or the internet" # sub
complete -f -c vcpkg -n __fish_use_subcommand -a integrate -d "Integrates vcpkg with machines, projects, or shells" # sub
complete -f -c vcpkg -n __fish_use_subcommand -a helptopics -d "Displays full list of help topics" # sub
complete -f -c vcpkg -n __fish_use_subcommand -a helptopic -d "Displays specific help topic" # sub
complete -f -c vcpkg -n __fish_use_subcommand -a helpcommands -d "Displays full list of commands, including rare ones not listed here" # sub
complete -f -c vcpkg -n __fish_use_subcommand -a helpcommand -d "Displays help detail for <command>" # sub
complete -c vcpkg -n "__fish_seen_subcommand_from 'export'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'install'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'remove'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-set-installed'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'upgrade'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-check-support'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'depend-info'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'list'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'owns'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-package-info'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'portsdiff'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'search'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'update'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'add'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'create'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'edit'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'env'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'format-manifest'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'hash'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-init-registry'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'new'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-update-baseline'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'ci'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-ci-verify-versions'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'contact'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'fetch'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopics'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopic'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'export'" -l 7zip -d "Exports to a 7zip (.7z) file" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'export'" -l x-all-installed -d "Exports all installed packages" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'export'" -l x-asset-sources -d "Asset caching sources." -xa "'(vcpkg help assetcaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'export'" -l binarysource -d "Binary caching sources." -xa "'(vcpkg help binarycaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'export'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'export'" -l classic -d "Force classic mode, even if a manifest could be found." # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'export'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'export'" -l dry-run -d "Does not actually export" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'export'" -l host-triplet -d "Host triplet." -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'export'" -l x-install-root -d "Installed directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'export'" -l nuget -d "Exports a NuGet package" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'export'" -l nuget-description -d "Description for the exported NuGet package" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'export'" -l nuget-id -d "Id for the exported NuGet package (overrides --output)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'export'" -l nuget-version -d "The version for the exported NuGet package" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'export'" -l output-dir -d "The output directory for produced artifacts" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'export'" -l output -d "The output name (used to construct filename)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'export'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'export'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'export'" -l x-packages-root -d "Packages directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'export'" -l raw -d "Exports to an uncompressed directory" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'export'" -l triplet -d "Target triplet." -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'export'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'export'" -l zip -d "Exports to a zip file" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'install'" -l allow-unsupported -d "Continues with a warning on unsupported ports, rather than failing" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'install'" -l x-asset-sources -d "Asset caching sources. See 'vcpkg help assetcaching'" -xa "'(vcpkg help assetcaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'install'" -l binarysource -d "Binary caching sources. See 'vcpkg help binarycaching'" -xa "'(vcpkg help binarycaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'install'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'install'" -l classic -d "Force classic mode, even if a manifest could be found." # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'install'" -l clean-after-build -d "Cleans buildtrees, packages and downloads after building each package" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'install'" -l clean-buildtrees-after-build -d "Cleans buildtrees after building each package" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'install'" -l clean-downloads-after-build -d "Cleans downloads after building each package" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'install'" -l clean-packages-after-build -d "Cleans packages after building each package" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'install'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'install'" -l dry-run -d "Does not actually build or install" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'install'" -l editable -d "Disables source re-extraction and binary caching for libraries on the command line (classic mode)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'install'" -l enforce-port-checks -d "Fails install if a port has detected problems or attempts to use a deprecated feature" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'install'" -l x-feature -d "Additional features from the top-level manifest to install (manifest mode)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'install'" -l head -d "Installs the libraries on the command line using the latest upstream sources (classic mode)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'install'" -l host-triplet -d "Host triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_HOST_TRIPLET)" -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'install'" -l x-install-root -d "Installed directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'install'" -l keep-going -d "Continues installing packages on failure" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'install'" -l x-no-default-features -d "Does not install the default features from the top-level manifest (manifest mode)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'install'" -l no-downloads -d "Does not download new sources" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'install'" -l no-print-usage -d "Does not print CMake usage information after install" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'install'" -l only-binarycaching -d "Fails if cached binaries are not available" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'install'" -l only-downloads -d "Makes best-effort attempt to download sources without building" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'install'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'install'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'install'" -l x-packages-root -d "Packages directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'install'" -l recurse -d "Allows removal of packages as part of installation" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'install'" -l triplet -d "Target triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_TRIPLET)" -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'install'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'install'" -l x-write-nuget-packages-config -d "Writes a NuGet packages.config-formatted file for use with external binary caching. See `vcpkg help binarycaching` for more information" -xa "'(vcpkg help binarycaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'remove'" -l x-asset-sources -d "Asset caching sources. See 'vcpkg help assetcaching'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'remove'" -l binarysource -d "Binary caching sources. See 'vcpkg help binarycaching'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'remove'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'remove'" -l classic -d "Force classic mode, even if a manifest could be found." # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'remove'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'remove'" -l dry-run -d "Prints the packages to be removed, but does not remove them" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'remove'" -l host-triplet -d "Host triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_HOST_TRIPLET)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'remove'" -l x-install-root -d "Installed directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'remove'" -l outdated -d "Removes all packages with versions that do not match the built-in registry" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'remove'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'remove'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'remove'" -l x-packages-root -d "Packages directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'remove'" -l recurse -d "Allows removal of dependent packages not explicitly specified" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'remove'" -l triplet -d "Target triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_TRIPLET)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'remove'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # global
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'remove'" -a --outdated -d "Removes all packages with versions that do not match the built-in registry" # sub
complete -c vcpkg -n "__fish_seen_subcommand_from 'remove --outdated'" -l x-asset-sources -d "Asset caching sources. See 'vcpkg help assetcaching'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'remove --outdated'" -l binarysource -d "Binary caching sources. See 'vcpkg help binarycaching'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'remove --outdated'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'remove --outdated'" -l classic -d "Force classic mode, even if a manifest could be found." # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'remove --outdated'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'remove --outdated'" -l dry-run -d "Prints the packages to be removed, but does not remove them" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'remove --outdated'" -l host-triplet -d "Host triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_HOST_TRIPLET)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'remove --outdated'" -l x-install-root -d "Installed directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'remove --outdated'" -l outdated -d "Removes all packages with versions that do not match the built-in registry" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'remove --outdated'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'remove --outdated'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'remove --outdated'" -l x-packages-root -d "Packages directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'remove --outdated'" -l recurse -d "Allows removal of dependent packages not explicitly specified" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'remove --outdated'" -l triplet -d "Target triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_TRIPLET)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'remove --outdated'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-set-installed'" -l allow-unsupported -d "Continues with a warning on unsupported ports, rather than failing" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-set-installed'" -l x-asset-sources -d "Asset caching sources. See 'vcpkg help assetcaching'" -xa "'(vcpkg help assetcaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-set-installed'" -l binarysource -d "Binary caching sources. See 'vcpkg help binarycaching'" -xa "'(vcpkg help binarycaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-set-installed'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-set-installed'" -l classic -d "Force classic mode, even if a manifest could be found." # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-set-installed'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-set-installed'" -l dry-run -d "Does not actually build or install" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-set-installed'" -l enforce-port-checks -d "Fails install if a port has detected problems or attempts to use a deprecated feature" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-set-installed'" -l host-triplet -d "Host triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_HOST_TRIPLET)" -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-set-installed'" -l x-install-root -d "Installed directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-set-installed'" -l keep-going -d "Continues installing packages on failure" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-set-installed'" -l no-print-usage -d "Does not print CMake usage information after install" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-set-installed'" -l only-downloads -d "Makes best-effort attempt to download sources without building" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-set-installed'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-set-installed'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-set-installed'" -l x-packages-root -d "Packages directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-set-installed'" -l triplet -d "Target triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_TRIPLET)" -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-set-installed'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-set-installed'" -l x-write-nuget-packages-config -d "Writes a NuGet packages.config-formatted file for use with external binary caching. See `vcpkg help binarycaching` for more information" -xa "'(vcpkg help binarycaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'upgrade'" -l allow-unsupported -d "Continues with a warning on unsupported ports, rather than failing" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'upgrade'" -l x-asset-sources -d "Asset caching sources. See 'vcpkg help assetcaching'" -xa "'(vcpkg help assetcaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'upgrade'" -l binarysource -d "Binary caching sources. See 'vcpkg help binarycaching'" -xa "'(vcpkg help binarycaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'upgrade'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'upgrade'" -l classic -d "Force classic mode, even if a manifest could be found." # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'upgrade'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'upgrade'" -l host-triplet -d "Host triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_HOST_TRIPLET)" -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'upgrade'" -l x-install-root -d "Installed directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'upgrade'" -l no-dry-run -d "Actually upgrade" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'upgrade'" -l no-keep-going -d "Stop installing packages on failure" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'upgrade'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'upgrade'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'upgrade'" -l x-packages-root -d "Packages directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'upgrade'" -l triplet -d "Target triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_TRIPLET)" -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'upgrade'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-check-support'" -l x-asset-sources -d "Asset caching sources. See 'vcpkg help assetcaching'" -xa "'(vcpkg help assetcaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-check-support'" -l binarysource -d "Binary caching sources. See 'vcpkg help binarycaching'" -xa "'(vcpkg help binarycaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-check-support'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-check-support'" -l classic -d "Force classic mode, even if a manifest could be found." # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-check-support'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-check-support'" -l host-triplet -d "Host triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_HOST_TRIPLET)" -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-check-support'" -l x-install-root -d "Installed directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-check-support'" -l x-json -d "Prints JSON rather than plain text" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-check-support'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-check-support'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-check-support'" -l x-packages-root -d "Packages directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-check-support'" -l triplet -d "Target triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_TRIPLET)" -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-check-support'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'depend-info'" -l x-asset-sources -d "Asset caching sources. See 'vcpkg help assetcaching'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'depend-info'" -l binarysource -d "Binary caching sources. See 'vcpkg help binarycaching'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'depend-info'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'depend-info'" -l classic -d "Force classic mode, even if a manifest could be found." # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'depend-info'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'depend-info'" -l format -xa "list tree mermaid dot dgml" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'depend-info'" -l host-triplet -d "Host triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_HOST_TRIPLET)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'depend-info'" -l x-install-root -d "Installed directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'depend-info'" -l max-recurse -d "Sets max recursion depth. Default is no limit" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'depend-info'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'depend-info'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'depend-info'" -l x-packages-root -d "Packages directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'depend-info'" -l show-depth -d "Shows recursion depth in `list` output" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'depend-info'" -l sort -xa "lexicographical topological reverse" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'depend-info'" -l triplet -d "Target triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_TRIPLET)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'depend-info'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'list'" -l x-asset-sources -d "Asset caching sources. See 'vcpkg help assetcaching'" -xa "'(vcpkg help assetcaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'list'" -l binarysource -d "Binary caching sources. See 'vcpkg help binarycaching'" -xa "'(vcpkg help binarycaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'list'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'list'" -l classic -d "Force classic mode, even if a manifest could be found." # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'list'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'list'" -l x-full-desc -d "Does not truncate long text" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'list'" -l host-triplet -d "Host triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_HOST_TRIPLET)" -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'list'" -l x-install-root -d "Installed directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'list'" -l x-json -d "Prints JSON rather than plain text" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'list'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'list'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'list'" -l x-packages-root -d "Packages directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'list'" -l triplet -d "Target triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_TRIPLET)" -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'list'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'owns'" -l x-asset-sources -d "Asset caching sources. See 'vcpkg help assetcaching'" -xa "'(vcpkg help assetcaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'owns'" -l binarysource -d "Binary caching sources. See 'vcpkg help binarycaching'" -xa "'(vcpkg help binarycaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'owns'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'owns'" -l classic -d "Force classic mode, even if a manifest could be found." # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'owns'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'owns'" -l host-triplet -d "Host triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_HOST_TRIPLET)" -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'owns'" -l x-install-root -d "Installed directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'owns'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'owns'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'owns'" -l x-packages-root -d "Packages directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'owns'" -l triplet -d "Target triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_TRIPLET)" -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'owns'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-package-info'" -l x-asset-sources -d "Asset caching sources. See 'vcpkg help assetcaching'" -xa "'(vcpkg help assetcaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-package-info'" -l binarysource -d "Binary caching sources. See 'vcpkg help binarycaching'" -xa "'(vcpkg help binarycaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-package-info'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-package-info'" -l classic -d "Force classic mode, even if a manifest could be found." # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-package-info'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-package-info'" -l host-triplet -d "Host triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_HOST_TRIPLET)" -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-package-info'" -l x-install-root -d "Installed directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-package-info'" -l x-installed -d "(experimental) Reports installed packages rather than available" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-package-info'" -l x-json -d "Prints JSON rather than plain text" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-package-info'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-package-info'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-package-info'" -l x-packages-root -d "Packages directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-package-info'" -l x-transitive -d "(experimental) Also reports dependencies of installed packages" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-package-info'" -l triplet -d "Target triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_TRIPLET)" -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-package-info'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'portsdiff'" -l x-asset-sources -d "Asset caching sources." -xa "'(vcpkg help assetcaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'portsdiff'" -l binarysource -d "Binary caching sources." -xa "'(vcpkg help binarycaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'portsdiff'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'portsdiff'" -l classic -d "Force classic mode, even if a manifest could be found." # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'portsdiff'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'portsdiff'" -l host-triplet -d "Host triplet." -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'portsdiff'" -l x-install-root -d "Installed directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'portsdiff'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'portsdiff'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'portsdiff'" -l x-packages-root -d "Packages directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'portsdiff'" -l triplet -d "Target triplet." -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'portsdiff'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'search'" -l x-asset-sources -d "Asset caching sources. See 'vcpkg help assetcaching'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'search'" -l binarysource -d "Binary caching sources. See 'vcpkg help binarycaching'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'search'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'search'" -l classic -d "Force classic mode, even if a manifest could be found." # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'search'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'search'" -l x-full-desc -d "Does not truncate long text" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'search'" -l host-triplet -d "Host triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_HOST_TRIPLET)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'search'" -l x-install-root -d "Installed directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'search'" -l x-json -d "Prints JSON rather than plain text" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'search'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'search'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'search'" -l x-packages-root -d "Packages directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'search'" -l triplet -d "Target triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_TRIPLET)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'search'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'update'" -l x-asset-sources -d "Asset caching sources. See 'vcpkg help assetcaching'" -xa "'(vcpkg help assetcaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'update'" -l binarysource -d "Binary caching sources. See 'vcpkg help binarycaching'" -xa "'(vcpkg help binarycaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'update'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'update'" -l classic -d "Force classic mode, even if a manifest could be found." # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'update'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'update'" -l host-triplet -d "Host triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_HOST_TRIPLET)" -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'update'" -l x-install-root -d "Installed directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'update'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'update'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'update'" -l x-packages-root -d "Packages directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'update'" -l triplet -d "Target triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_TRIPLET)" -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'update'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'add'" -l x-asset-sources -d "Asset caching sources. See 'vcpkg help assetcaching'" -xa "'(vcpkg help assetcaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'add'" -l binarysource -d "Binary caching sources. See 'vcpkg help binarycaching'" -xa "'(vcpkg help binarycaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'add'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'add'" -l classic -d "Force classic mode, even if a manifest could be found." # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'add'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'add'" -l host-triplet -d "Host triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_HOST_TRIPLET)" -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'add'" -l x-install-root -d "Installed directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'add'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'add'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'add'" -l x-packages-root -d "Packages directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'add'" -l triplet -d "Target triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_TRIPLET)" -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'add'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'add'" -l version -d "A version or version range to match; only valid for artifacts" # global
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'add'" -a port -d "Add a port" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'add'" -a artifact -d "Add an artifact" # sub
complete -c vcpkg -n "__fish_seen_subcommand_from 'add port'" -l x-asset-sources -d "Asset caching sources. See 'vcpkg help assetcaching'" -xa "'(vcpkg help assetcaching)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'add port'" -l binarysource -d "Binary caching sources. See 'vcpkg help binarycaching'" -xa "'(vcpkg help binarycaching)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'add port'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'add port'" -l classic -d "Force classic mode, even if a manifest could be found." # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'add port'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'add port'" -l host-triplet -d "Host triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_HOST_TRIPLET)" -xa "'(vcpkg help triplet)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'add port'" -l x-install-root -d "Installed directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'add port'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'add port'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'add port'" -l x-packages-root -d "Packages directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'add port'" -l triplet -d "Target triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_TRIPLET)" -xa "'(vcpkg help triplet)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'add port'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'add port'" -l version -d "A version or version range to match; only valid for artifacts" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'add artifact'" -l x-asset-sources -d "Asset caching sources. See 'vcpkg help assetcaching'" -xa "'(vcpkg help assetcaching)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'add artifact'" -l binarysource -d "Binary caching sources. See 'vcpkg help binarycaching'" -xa "'(vcpkg help binarycaching)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'add artifact'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'add artifact'" -l classic -d "Force classic mode, even if a manifest could be found." # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'add artifact'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'add artifact'" -l host-triplet -d "Host triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_HOST_TRIPLET)" -xa "'(vcpkg help triplet)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'add artifact'" -l x-install-root -d "Installed directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'add artifact'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'add artifact'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'add artifact'" -l x-packages-root -d "Packages directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'add artifact'" -l triplet -d "Target triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_TRIPLET)" -xa "'(vcpkg help triplet)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'add artifact'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'add artifact'" -l version -d "A version or version range to match; only valid for artifacts" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version'" -l all -d "Processes versions for all ports" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version'" -l x-asset-sources -d "Asset caching sources." -xa "'(vcpkg help assetcaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version'" -l binarysource -d "Binary caching sources." -xa "'(vcpkg help binarycaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version'" -l classic -d "Force classic mode, even if a manifest could be found." # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version'" -l downloads-root -d "Downloads directory" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version'" -l host-triplet -d "Host triplet." -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version'" -l x-install-root -d "Installed directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version'" -l overlay-triplets -d "Directories of overlay triplets" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version'" -l overwrite-version -d "Overwrites git-tree of an existing version" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version'" -l x-packages-root -d "Packages directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version'" -l skip-formatting-check -d "Skips the formatting check of vcpkg.json files" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version'" -l skip-version-format-check -d "Skips the version format check" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version'" -l triplet -d "Target triplet." -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version'" -l vcpkg-root -d "The vcpkg root directory" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version'" -l verbose -d "Prints success messages rather than only errors" # global
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version'" -a portname # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version'" -a curl # sub
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version portname'" -l all -d "Processes versions for all ports" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version portname'" -l x-asset-sources -d "Asset caching sources." -xa "'(vcpkg help assetcaching)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version portname'" -l binarysource -d "Binary caching sources." -xa "'(vcpkg help binarycaching)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version portname'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version portname'" -l classic -d "Force classic mode, even if a manifest could be found." # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version portname'" -l downloads-root -d "Downloads directory" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version portname'" -l host-triplet -d "Host triplet." -xa "'(vcpkg help triplet)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version portname'" -l x-install-root -d "Installed directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version portname'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version portname'" -l overlay-triplets -d "Directories of overlay triplets" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version portname'" -l overwrite-version -d "Overwrites git-tree of an existing version" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version portname'" -l x-packages-root -d "Packages directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version portname'" -l skip-formatting-check -d "Skips the formatting check of vcpkg.json files" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version portname'" -l skip-version-format-check -d "Skips the version format check" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version portname'" -l triplet -d "Target triplet." -xa "'(vcpkg help triplet)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version portname'" -l vcpkg-root -d "The vcpkg root directory" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version portname'" -l verbose -d "Prints success messages rather than only errors" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version curl'" -l all -d "Processes versions for all ports" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version curl'" -l x-asset-sources -d "Asset caching sources." -xa "'(vcpkg help assetcaching)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version curl'" -l binarysource -d "Binary caching sources." -xa "'(vcpkg help binarycaching)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version curl'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version curl'" -l classic -d "Force classic mode, even if a manifest could be found." # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version curl'" -l downloads-root -d "Downloads directory" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version curl'" -l host-triplet -d "Host triplet." -xa "'(vcpkg help triplet)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version curl'" -l x-install-root -d "Installed directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version curl'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version curl'" -l overlay-triplets -d "Directories of overlay triplets" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version curl'" -l overwrite-version -d "Overwrites git-tree of an existing version" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version curl'" -l x-packages-root -d "Packages directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version curl'" -l skip-formatting-check -d "Skips the formatting check of vcpkg.json files" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version curl'" -l skip-version-format-check -d "Skips the version format check" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version curl'" -l triplet -d "Target triplet." -xa "'(vcpkg help triplet)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version curl'" -l vcpkg-root -d "The vcpkg root directory" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-add-version curl'" -l verbose -d "Prints success messages rather than only errors" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'create'" -l x-asset-sources -d "Asset caching sources. See 'vcpkg help assetcaching'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'create'" -l binarysource -d "Binary caching sources. See 'vcpkg help binarycaching'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'create'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'create'" -l classic -d "Force classic mode, even if a manifest could be found." # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'create'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'create'" -l host-triplet -d "Host triplet. See 'vcpkg help triplet' (default:\n＄VCPKG_DEFAULT_HOST_TRIPLET)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'create'" -l x-install-root -d "Installed directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'create'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port\ndirectories (also: ＄VCPKG_OVERLAY_PORTS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'create'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'create'" -l x-packages-root -d "Packages directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'create'" -l triplet -d "Target triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_TRIPLET)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'create'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'edit'" -l all -d "Opens editor into the port as well as the port-specific buildtree subfolder" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'edit'" -l x-asset-sources -d "Asset caching sources. See 'vcpkg help assetcaching'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'edit'" -l binarysource -d "Binary caching sources. See 'vcpkg help binarycaching'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'edit'" -l buildtrees -d "Opens editor into the port-specific buildtree subfolder" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'edit'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'edit'" -l classic -d "Force classic mode, even if a manifest could be found." # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'edit'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'edit'" -l host-triplet -d "Host triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_HOST_TRIPLET)" -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'edit'" -l x-install-root -d "Installed directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'edit'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'edit'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'edit'" -l x-packages-root -d "Packages directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'edit'" -l triplet -d "Target triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_TRIPLET)" -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'edit'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'env'" -l x-asset-sources -d "Asset caching sources. See 'vcpkg help assetcaching'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'env'" -l bin -d "Adds installed bin/ to ＄PATH" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'env'" -l binarysource -d "Binary caching sources. See 'vcpkg help binarycaching'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'env'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'env'" -l classic -d "Force classic mode, even if a manifest could be found." # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'env'" -l debug-bin -d "Adds installed debug/bin/ to ＄PATH" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'env'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'env'" -l host-triplet -d "Host triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_HOST_TRIPLET)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'env'" -l include -d "Adds installed include/ to ＄INCLUDE" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'env'" -l x-install-root -d "Installed directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'env'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'env'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'env'" -l x-packages-root -d "Packages directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'env'" -l python -d "Adds installed python/ to ＄PYTHONPATH" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'env'" -l tools -d "Adds installed tools/*/ to ＄PATH" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'env'" -l triplet -d "Target triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_TRIPLET)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'env'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'format-manifest'" -l all -d "Formats all ports' manifest files" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'format-manifest'" -l x-asset-sources -d "Asset caching sources. See 'vcpkg help assetcaching'" -xa "'(vcpkg help assetcaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'format-manifest'" -l binarysource -d "Binary caching sources. See 'vcpkg help binarycaching'" -xa "'(vcpkg help binarycaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'format-manifest'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'format-manifest'" -l classic -d "Force classic mode, even if a manifest could be found." # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'format-manifest'" -l convert-control -d "Converts CONTROL files to manifest files" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'format-manifest'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'format-manifest'" -l host-triplet -d "Host triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_HOST_TRIPLET)" -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'format-manifest'" -l x-install-root -d "Installed directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'format-manifest'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'format-manifest'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'format-manifest'" -l x-packages-root -d "Packages directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'format-manifest'" -l triplet -d "Target triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_TRIPLET)" -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'format-manifest'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'hash'" -l x-asset-sources -d "Asset caching sources. See 'vcpkg help assetcaching'" -xa "'(vcpkg help assetcaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'hash'" -l binarysource -d "Binary caching sources. See 'vcpkg help binarycaching'" -xa "'(vcpkg help binarycaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'hash'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'hash'" -l classic -d "Force classic mode, even if a manifest could be found." # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'hash'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'hash'" -l host-triplet -d "Host triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_HOST_TRIPLET)" -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'hash'" -l x-install-root -d "Installed directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'hash'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'hash'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'hash'" -l x-packages-root -d "Packages directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'hash'" -l triplet -d "Target triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_TRIPLET)" -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'hash'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-init-registry'" -l x-asset-sources -d "Asset caching sources. See 'vcpkg help assetcaching'" -xa "'(vcpkg help assetcaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-init-registry'" -l binarysource -d "Binary caching sources. See 'vcpkg help binarycaching'" -xa "'(vcpkg help binarycaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-init-registry'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-init-registry'" -l classic -d "Force classic mode, even if a manifest could be found." # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-init-registry'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-init-registry'" -l host-triplet -d "Host triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_HOST_TRIPLET)" -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-init-registry'" -l x-install-root -d "Installed directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-init-registry'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-init-registry'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-init-registry'" -l x-packages-root -d "Packages directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-init-registry'" -l triplet -d "Target triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_TRIPLET)" -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-init-registry'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'new'" -l application -d "Creates an application manifest (don't require name or version)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'new'" -l x-asset-sources -d "Asset caching sources." -xa "'(vcpkg help assetcaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'new'" -l binarysource -d "Binary caching sources." -xa "'(vcpkg help binarycaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'new'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'new'" -l classic -d "Force classic mode, even if a manifest could be found." # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'new'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'new'" -l host-triplet -d "Host triplet." -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'new'" -l x-install-root -d "Installed directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'new'" -l name -d "Name for the new manifest" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'new'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'new'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'new'" -l x-packages-root -d "Packages directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'new'" -l single-file -d "Embeds vcpkg-configuration.json into vcpkg.json" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'new'" -l triplet -d "Target triplet." -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'new'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'new'" -l version-date -d "Interprets --version as an ISO 8601 date. (YYYY-MM-DD)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'new'" -l version-relaxed -d "Interprets --version as a relaxed-numeric version (Nonnegative numbers separated by dots)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'new'" -l version-string -d "Interprets --version as a string with no ordering behavior" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'new'" -l version -d "Version for the new manifest" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-update-baseline'" -l add-initial-baseline -d "Adds a `builtin-baseline` to a vcpkg.json that doesn't already have it" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-update-baseline'" -l x-asset-sources -d "Asset caching sources. See 'vcpkg help assetcaching'" -xa "'(vcpkg help assetcaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-update-baseline'" -l binarysource -d "Binary caching sources. See 'vcpkg help binarycaching'" -xa "'(vcpkg help binarycaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-update-baseline'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-update-baseline'" -l classic -d "Force classic mode, even if a manifest could be found." # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-update-baseline'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-update-baseline'" -l dry-run -d "Prints out plan without execution" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-update-baseline'" -l host-triplet -d "Host triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_HOST_TRIPLET)" -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-update-baseline'" -l x-install-root -d "Installed directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-update-baseline'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-update-baseline'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-update-baseline'" -l x-packages-root -d "Packages directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-update-baseline'" -l triplet -d "Target triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_TRIPLET)" -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-update-baseline'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'ci'" -l allow-unexpected-passing -d "Suppresses 'Passing, remove from fail list' results" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'ci'" -l x-asset-sources -d "Asset caching sources. See 'vcpkg help assetcaching'" -xa "'(vcpkg help assetcaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'ci'" -l binarysource -d "Binary caching sources. See 'vcpkg help binarycaching'" -xa "'(vcpkg help binarycaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'ci'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'ci'" -l ci-baseline -d "Path to the ci.baseline.txt file. Used to skip ports and detect regressions." # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'ci'" -l classic -d "Force classic mode, even if a manifest could be found." # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'ci'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'ci'" -l dry-run -d "Prints out plan without execution" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'ci'" -l exclude -d "Comma separated list of ports to skip" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'ci'" -l failure-logs -d "Directory to which failure logs will be copied" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'ci'" -l host-exclude -d "Comma separated list of ports to skip for the host triplet" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'ci'" -l host-triplet -d "Host triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_HOST_TRIPLET)" -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'ci'" -l x-install-root -d "Installed directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'ci'" -l known-failures-from -d "Path to the file of known package build failures" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'ci'" -l output-hashes -d "File to output all determined package hashes" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'ci'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'ci'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'ci'" -l x-packages-root -d "Packages directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'ci'" -l parent-hashes -d "File to read package hashes for a parent CI state, to reduce the set of changed packages" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'ci'" -l x-randomize -d "Randomizes the install order" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'ci'" -l skip-failures -d "Skips ports marked `=fail` in ci.baseline.txt" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'ci'" -l triplet -d "Target triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_TRIPLET)" -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'ci'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'ci'" -l x-xunit-all -d "Reports unchanged ports in the XUnit output" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'ci'" -l x-xunit -d "File to output results in XUnit format" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-ci-verify-versions'" -l x-asset-sources -d "Asset caching sources. See 'vcpkg help assetcaching'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-ci-verify-versions'" -l binarysource -d "Binary caching sources. See 'vcpkg help binarycaching'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-ci-verify-versions'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-ci-verify-versions'" -l classic -d "Force classic mode, even if a manifest could be found." # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-ci-verify-versions'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-ci-verify-versions'" -l host-triplet -d "Host triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_HOST_TRIPLET)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-ci-verify-versions'" -l x-install-root -d "Installed directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-ci-verify-versions'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-ci-verify-versions'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-ci-verify-versions'" -l x-packages-root -d "Packages directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-ci-verify-versions'" -l triplet -d "Target triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_TRIPLET)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-ci-verify-versions'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-ci-verify-versions'" -l verbose -d "Prints result for each port rather than only just errors" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'x-ci-verify-versions'" -l verify-git-trees -d "Verifies that each git tree object matches its declared version (this is very slow)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'contact'" -l x-asset-sources -d "Asset caching sources. See 'vcpkg help assetcaching'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'contact'" -l binarysource -d "Binary caching sources. See 'vcpkg help binarycaching'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'contact'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'contact'" -l classic -d "Force classic mode, even if a manifest could be found." # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'contact'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'contact'" -l host-triplet -d "Host triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_HOST_TRIPLET)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'contact'" -l x-install-root -d "Installed directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'contact'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'contact'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'contact'" -l x-packages-root -d "Packages directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'contact'" -l triplet -d "Target triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_TRIPLET)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'contact'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'fetch'" -l x-asset-sources -d "Asset caching sources. See 'vcpkg help assetcaching'" -xa "'(vcpkg help assetcaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'fetch'" -l binarysource -d "Binary caching sources. See 'vcpkg help binarycaching'" -xa "'(vcpkg help binarycaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'fetch'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'fetch'" -l classic -d "Force classic mode, even if a manifest could be found." # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'fetch'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'fetch'" -l host-triplet -d "Host triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_HOST_TRIPLET)" -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'fetch'" -l x-install-root -d "Installed directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'fetch'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'fetch'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'fetch'" -l x-packages-root -d "Packages directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'fetch'" -l x-stderr-status -d "Prints status/downloading messages to stderr rather than stdout (Errors/failures still go to stdout)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'fetch'" -l triplet -d "Target triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_TRIPLET)" -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'fetch'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate'" -l x-asset-sources -d "Asset caching sources. See 'vcpkg help assetcaching'" -xa "'(vcpkg help assetcaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate'" -l binarysource -d "Binary caching sources. See 'vcpkg help binarycaching'" -xa "'(vcpkg help binarycaching)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate'" -l classic -d "Force classic mode, even if a manifest could be found." # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate'" -l host-triplet -d "Host triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_HOST_TRIPLET)" -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate'" -l x-install-root -d "Installed directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate'" -l x-packages-root -d "Packages directory (experimental)" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate'" -l triplet -d "Target triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_TRIPLET)" -xa "'(vcpkg help triplet)'" # global
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # global
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'integrate'" -a install -d "Makes installed packages available user-wide" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'integrate'" -a remove -d "Removes user-wide integration" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'integrate'" -a project -d "Generates a referencing NuGet package for individual Visual Studio project use. Windows-only" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'integrate'" -a bash -d "Enable bash tab-completion. Non-Windows only" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'integrate'" -a x-fish -d "Enable fish tab-completion. Non-Windows only" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'integrate'" -a powershell -d "Enable PowerShell tab-completion. Windows-only" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'integrate'" -a zsh -d "Enable zsh tab-completion. Non-Windows only" # sub
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate install'" -l x-asset-sources -d "Asset caching sources. See 'vcpkg help assetcaching'" -xa "'(vcpkg help assetcaching)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate install'" -l binarysource -d "Binary caching sources. See 'vcpkg help binarycaching'" -xa "'(vcpkg help binarycaching)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate install'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate install'" -l classic -d "Force classic mode, even if a manifest could be found." # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate install'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate install'" -l host-triplet -d "Host triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_HOST_TRIPLET)" -xa "'(vcpkg help triplet)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate install'" -l x-install-root -d "Installed directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate install'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate install'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate install'" -l x-packages-root -d "Packages directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate install'" -l triplet -d "Target triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_TRIPLET)" -xa "'(vcpkg help triplet)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate install'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate remove'" -l x-asset-sources -d "Asset caching sources. See 'vcpkg help assetcaching'" -xa "'(vcpkg help assetcaching)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate remove'" -l binarysource -d "Binary caching sources. See 'vcpkg help binarycaching'" -xa "'(vcpkg help binarycaching)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate remove'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate remove'" -l classic -d "Force classic mode, even if a manifest could be found." # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate remove'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate remove'" -l host-triplet -d "Host triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_HOST_TRIPLET)" -xa "'(vcpkg help triplet)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate remove'" -l x-install-root -d "Installed directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate remove'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate remove'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate remove'" -l x-packages-root -d "Packages directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate remove'" -l triplet -d "Target triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_TRIPLET)" -xa "'(vcpkg help triplet)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate remove'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate project'" -l x-asset-sources -d "Asset caching sources. See 'vcpkg help assetcaching'" -xa "'(vcpkg help assetcaching)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate project'" -l binarysource -d "Binary caching sources. See 'vcpkg help binarycaching'" -xa "'(vcpkg help binarycaching)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate project'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate project'" -l classic -d "Force classic mode, even if a manifest could be found." # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate project'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate project'" -l host-triplet -d "Host triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_HOST_TRIPLET)" -xa "'(vcpkg help triplet)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate project'" -l x-install-root -d "Installed directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate project'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate project'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate project'" -l x-packages-root -d "Packages directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate project'" -l triplet -d "Target triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_TRIPLET)" -xa "'(vcpkg help triplet)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate project'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate bash'" -l x-asset-sources -d "Asset caching sources. See 'vcpkg help assetcaching'" -xa "'(vcpkg help assetcaching)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate bash'" -l binarysource -d "Binary caching sources. See 'vcpkg help binarycaching'" -xa "'(vcpkg help binarycaching)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate bash'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate bash'" -l classic -d "Force classic mode, even if a manifest could be found." # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate bash'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate bash'" -l host-triplet -d "Host triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_HOST_TRIPLET)" -xa "'(vcpkg help triplet)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate bash'" -l x-install-root -d "Installed directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate bash'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate bash'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate bash'" -l x-packages-root -d "Packages directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate bash'" -l triplet -d "Target triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_TRIPLET)" -xa "'(vcpkg help triplet)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate bash'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate x-fish'" -l x-asset-sources -d "Asset caching sources. See 'vcpkg help assetcaching'" -xa "'(vcpkg help assetcaching)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate x-fish'" -l binarysource -d "Binary caching sources. See 'vcpkg help binarycaching'" -xa "'(vcpkg help binarycaching)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate x-fish'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate x-fish'" -l classic -d "Force classic mode, even if a manifest could be found." # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate x-fish'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate x-fish'" -l host-triplet -d "Host triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_HOST_TRIPLET)" -xa "'(vcpkg help triplet)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate x-fish'" -l x-install-root -d "Installed directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate x-fish'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate x-fish'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate x-fish'" -l x-packages-root -d "Packages directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate x-fish'" -l triplet -d "Target triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_TRIPLET)" -xa "'(vcpkg help triplet)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate x-fish'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate powershell'" -l x-asset-sources -d "Asset caching sources. See 'vcpkg help assetcaching'" -xa "'(vcpkg help assetcaching)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate powershell'" -l binarysource -d "Binary caching sources. See 'vcpkg help binarycaching'" -xa "'(vcpkg help binarycaching)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate powershell'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate powershell'" -l classic -d "Force classic mode, even if a manifest could be found." # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate powershell'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate powershell'" -l host-triplet -d "Host triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_HOST_TRIPLET)" -xa "'(vcpkg help triplet)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate powershell'" -l x-install-root -d "Installed directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate powershell'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate powershell'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate powershell'" -l x-packages-root -d "Packages directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate powershell'" -l triplet -d "Target triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_TRIPLET)" -xa "'(vcpkg help triplet)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate powershell'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate zsh'" -l x-asset-sources -d "Asset caching sources. See 'vcpkg help assetcaching'" -xa "'(vcpkg help assetcaching)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate zsh'" -l binarysource -d "Binary caching sources. See 'vcpkg help binarycaching'" -xa "'(vcpkg help binarycaching)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate zsh'" -l x-buildtrees-root -d "Buildtrees directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate zsh'" -l classic -d "Force classic mode, even if a manifest could be found." # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate zsh'" -l downloads-root -d "Downloads directory (default: ＄VCPKG_DOWNLOADS)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate zsh'" -l host-triplet -d "Host triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_HOST_TRIPLET)" -xa "'(vcpkg help triplet)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate zsh'" -l x-install-root -d "Installed directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate zsh'" -l overlay-ports -d "Overlay-port directories, or directories containing overlay-port directories (also: ＄VCPKG_OVERLAY_PORTS)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate zsh'" -l overlay-triplets -d "Directories of overlay triplets (also: ＄VCPKG_OVERLAY_TRIPLETS)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate zsh'" -l x-packages-root -d "Packages directory (experimental)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate zsh'" -l triplet -d "Target triplet. See 'vcpkg help triplet' (default: ＄VCPKG_DEFAULT_TRIPLET)" -xa "'(vcpkg help triplet)'" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'integrate zsh'" -l vcpkg-root -d "The vcpkg root directory (default: ＄VCPKG_ROOT)" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopics'" -l "@response_file" -d "Contains one argument per line expanded at that location" # global
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopics'" -a export -d "Creates a standalone deployment of installed ports" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopics'" -a install -d "Installs a package" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopics'" -a remove -d "Uninstalls a package" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopics'" -a x-set-installed -d "Installs, upgrades, or removes packages such that that installed matches exactly those supplied" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopics'" -a upgrade -d "Rebuilds all outdated packages" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopics'" -a x-check-support -d "Tests whether a port is supported without building it" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopics'" -a depend-info -d "Displays a list of dependencies for ports" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopics'" -a list -d "Lists installed libraries" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopics'" -a owns -d "Searches for the owner of a file in installed packages" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopics'" -a x-package-info -d "Display detailed information on packages" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopics'" -a portsdiff -d "Diffs changes in port versions between commits" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopics'" -a search -d "Searches for packages available to be built" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopics'" -a update -d "Lists packages that can be upgraded" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopics'" -a add -d "Adds dependency to manifest" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopics'" -a x-add-version -d "Adds a version to the version database" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopics'" -a create -d "Creates a new port" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopics'" -a edit -d "Edits a port, optionally with ＄EDITOR, defaults to \"code\"" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopics'" -a env -d "Creates a clean shell environment for development or compiling" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopics'" -a format-manifest -d "Prettyfies vcpkg.json" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopics'" -a hash -d "Gets a file's SHA256 or SHA512" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopics'" -a x-init-registry -d "Creates a blank git registry" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopics'" -a new -d "Creates a new manifest" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopics'" -a x-update-baseline -d "Updates baselines of git registries in a manifest to those registries' HEAD commit" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopics'" -a ci -d "Tries building all ports for CI testing" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopics'" -a x-ci-verify-versions -d "Checks integrity of the version database" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopics'" -a contact -d "Displays contact information to send feedback" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopics'" -a fetch -d "Fetches something from the system or the internet" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopics'" -a integrate -d "Integrates vcpkg with machines, projects, or shells" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopics'" -a helptopics -d "Displays full list of help topics" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopics'" -a helptopic -d "Displays specific help topic" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopics'" -a helpcommands -d "Displays full list of commands, including rare ones not listed here" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopics'" -a helpcommand -d "Displays help detail for <command>" # sub
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopics export'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopics install'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopics remove'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopics x-set-installed'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopics upgrade'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopics x-check-support'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopics depend-info'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopics list'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopics owns'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopics x-package-info'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopics portsdiff'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopics search'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopics update'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopics add'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopics x-add-version'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopics create'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopics edit'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopics env'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopics format-manifest'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopics hash'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopics x-init-registry'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopics new'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopics x-update-baseline'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopics ci'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopics x-ci-verify-versions'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopics contact'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopics fetch'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopics integrate'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopics helptopics'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopics helptopic'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopics helpcommands'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopics helpcommand'" -l "@response_file" -d "Contains one argument per line expanded at that location" # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopic'" -l vcpkg-root # global
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopic'" -a export -d "Creates a standalone deployment of installed ports" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopic'" -a install -d "Installs a package" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopic'" -a remove -d "Uninstalls a package" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopic'" -a x-set-installed -d "Installs, upgrades, or removes packages such that that installed matches exactly those supplied" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopic'" -a upgrade -d "Rebuilds all outdated packages" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopic'" -a x-check-support -d "Tests whether a port is supported without building it" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopic'" -a depend-info -d "Displays a list of dependencies for ports" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopic'" -a list -d "Lists installed libraries" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopic'" -a owns -d "Searches for the owner of a file in installed packages" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopic'" -a x-package-info -d "Display detailed information on packages" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopic'" -a portsdiff -d "Diffs changes in port versions between commits" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopic'" -a search -d "Searches for packages available to be built" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopic'" -a update -d "Lists packages that can be upgraded" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopic'" -a add -d "Adds dependency to manifest" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopic'" -a x-add-version -d "Adds a version to the version database" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopic'" -a create -d "Creates a new port" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopic'" -a edit -d "Edits a port, optionally with ＄EDITOR, defaults to \"code\"" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopic'" -a env -d "Creates a clean shell environment for development or compiling" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopic'" -a format-manifest -d "Prettyfies vcpkg.json" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopic'" -a hash -d "Gets a file's SHA256 or SHA512" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopic'" -a x-init-registry -d "Creates a blank git registry" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopic'" -a new -d "Creates a new manifest" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopic'" -a x-update-baseline -d "Updates baselines of git registries in a manifest to those registries' HEAD commit" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopic'" -a ci -d "Tries building all ports for CI testing" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopic'" -a x-ci-verify-versions -d "Checks integrity of the version database" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopic'" -a contact -d "Displays contact information to send feedback" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopic'" -a fetch -d "Fetches something from the system or the internet" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helptopic'" -a integrate -d "Integrates vcpkg with machines, projects, or shells" # sub
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopic export'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopic install'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopic remove'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopic x-set-installed'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopic upgrade'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopic x-check-support'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopic depend-info'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopic list'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopic owns'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopic x-package-info'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopic portsdiff'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopic search'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopic update'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopic add'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopic x-add-version'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopic create'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopic edit'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopic env'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopic format-manifest'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopic hash'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopic x-init-registry'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopic new'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopic x-update-baseline'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopic ci'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopic x-ci-verify-versions'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopic contact'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopic fetch'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helptopic integrate'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands'" -l vcpkg-root # global
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands'" -a export -d "Creates a standalone deployment of installed ports" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands'" -a install -d "Installs a package" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands'" -a remove -d "Uninstalls a package" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands'" -a x-set-installed -d "Installs, upgrades, or removes packages such that that installed matches exactly those supplied" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands'" -a upgrade -d "Rebuilds all outdated packages" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands'" -a x-check-support -d "Tests whether a port is supported without building it" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands'" -a depend-info -d "Displays a list of dependencies for ports" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands'" -a list -d "Lists installed libraries" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands'" -a owns -d "Searches for the owner of a file in installed packages" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands'" -a x-package-info -d "Display detailed information on packages" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands'" -a portsdiff -d "Diffs changes in port versions between commits" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands'" -a search -d "Searches for packages available to be built" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands'" -a update -d "Lists packages that can be upgraded" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands'" -a add -d "Adds dependency to manifest" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands'" -a x-add-version -d "Adds a version to the version database" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands'" -a create -d "Creates a new port" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands'" -a edit -d "Edits a port, optionally with ＄EDITOR, defaults to \"code\"" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands'" -a env -d "Creates a clean shell environment for development or compiling" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands'" -a format-manifest -d "Prettyfies vcpkg.json" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands'" -a hash -d "Gets a file's SHA256 or SHA512" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands'" -a x-init-registry -d "Creates a blank git registry" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands'" -a new -d "Creates a new manifest" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands'" -a x-update-baseline -d "Updates baselines of git registries in a manifest to those registries' HEAD commit" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands'" -a ci -d "Tries building all ports for CI testing" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands'" -a x-ci-verify-versions -d "Checks integrity of the version database" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands'" -a contact -d "Displays contact information to send feedback" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands'" -a fetch -d "Fetches something from the system or the internet" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands'" -a integrate -d "Integrates vcpkg with machines, projects, or shells" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands'" -a helptopics -d "Displays full list of help topics" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands'" -a helptopic -d "Displays specific help topic" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands'" -a helpcommands -d "Displays full list of commands, including rare ones not listed here" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands'" -a helpcommand -d "Displays help detail for <command>" # sub
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands export'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands install'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands remove'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands x-set-installed'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands upgrade'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands x-check-support'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands depend-info'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands list'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands owns'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands x-package-info'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands portsdiff'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands search'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands update'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands add'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands x-add-version'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands create'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands edit'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands env'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands format-manifest'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands hash'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands x-init-registry'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands new'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands x-update-baseline'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands ci'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands x-ci-verify-versions'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands contact'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands fetch'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands integrate'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands helptopics'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands helptopic'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands helpcommands'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommands helpcommand'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand'" -l vcpkg-root # global
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand'" -a export -d "Creates a standalone deployment of installed ports" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand'" -a install -d "Installs a package" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand'" -a remove -d "Uninstalls a package" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand'" -a x-set-installed -d "Installs, upgrades, or removes packages such that that installed matches exactly those supplied" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand'" -a upgrade -d "Rebuilds all outdated packages" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand'" -a x-check-support -d "Tests whether a port is supported without building it" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand'" -a depend-info -d "Displays a list of dependencies for ports" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand'" -a list -d "Lists installed libraries" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand'" -a owns -d "Searches for the owner of a file in installed packages" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand'" -a x-package-info -d "Display detailed information on packages" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand'" -a portsdiff -d "Diffs changes in port versions between commits" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand'" -a search -d "Searches for packages available to be built" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand'" -a update -d "Lists packages that can be upgraded" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand'" -a add -d "Adds dependency to manifest" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand'" -a x-add-version -d "Adds a version to the version database" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand'" -a create -d "Creates a new port" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand'" -a edit -d "Edits a port, optionally with ＄EDITOR, defaults to \"code\"" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand'" -a env -d "Creates a clean shell environment for development or compiling" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand'" -a format-manifest -d "Prettyfies vcpkg.json" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand'" -a hash -d "Gets a file's SHA256 or SHA512" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand'" -a x-init-registry -d "Creates a blank git registry" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand'" -a new -d "Creates a new manifest" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand'" -a x-update-baseline -d "Updates baselines of git registries in a manifest to those registries' HEAD commit" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand'" -a ci -d "Tries building all ports for CI testing" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand'" -a x-ci-verify-versions -d "Checks integrity of the version database" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand'" -a contact -d "Displays contact information to send feedback" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand'" -a fetch -d "Fetches something from the system or the internet" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand'" -a integrate -d "Integrates vcpkg with machines, projects, or shells" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand'" -a helptopics -d "Displays full list of help topics" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand'" -a helptopic -d "Displays specific help topic" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand'" -a helpcommands -d "Displays full list of commands, including rare ones not listed here" # sub
complete -f -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand'" -a helpcommand -d "Displays help detail for <command>" # sub
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand export'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand install'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand remove'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand x-set-installed'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand upgrade'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand x-check-support'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand depend-info'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand list'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand owns'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand x-package-info'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand portsdiff'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand search'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand update'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand add'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand x-add-version'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand create'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand edit'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand env'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand format-manifest'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand hash'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand x-init-registry'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand new'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand x-update-baseline'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand ci'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand x-ci-verify-versions'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand contact'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand fetch'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand integrate'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand helptopics'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand helptopic'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand helpcommands'" -l vcpkg-root # subcommands flags
complete -c vcpkg -n "__fish_seen_subcommand_from 'helpcommand helpcommand'" -l vcpkg-root # subcommands flags# vcpkg completions for fish
set vcpkg_executable (string split -m1 ' ' (commandline -cb))[1]

function _vcpkg_completions
    set arg (string split -m1 ' ' (commandline -cb))[2]
    set curr_token (commandline -t)
    if [ -n $arg ]
        if [ -z $curr_token ]
            set arg $arg " "
        end
    end
    for key in ($vcpkg_executable autocomplete "$arg" -- 2>/dev/null)
        echo $key
    end
end

complete -c vcpkg -f --arguments '(_vcpkg_completions)'

set vcpkg_commands ($vcpkg_executable autocomplete)

function _set_triplet_arguments
    set triplets ($vcpkg_executable help triplet | grep "^\s" | cut -d' ' -f3)
    set triplet_from ""
    for triplet in $triplets
        echo (test -n "$triplet") >>temp.txt
        if [ (string sub -l5 -- $triplet) = VCPKG ]
            set -l temp (string length $triplet)
            set triplet_from (string sub -s6 -l(math $temp - 15) -- $triplet)
        else if [ -n "$triplet" ]
            complete -c vcpkg -n "__fish_seen_subcommand_from $vcpkg_commands" -x -l triplet -d "$triplet_from" -a (string sub -s3 -- $triplet)
        end
    end
end
_set_triplet_arguments

# options for all completions
complete -c vcpkg -n "__fish_seen_subcommand_from $vcpkg_commands" -x -l triplet -d "Specify the target architecture triplet. See 'vcpkg help triplet' (default: \$VCPKG_DEFAULT_TRIPLET)"
complete -c vcpkg -n "__fish_seen_subcommand_from $vcpkg_commands" -x -l overlay-ports -d "Specify directories to be used when searching for ports (also: \$VCPKG_OVERLAY_PORTS)" -a '(__fish_complete_directories)'
complete -c vcpkg -n "__fish_seen_subcommand_from $vcpkg_commands" -x -l overlay-triplets -d "Specify directories containing triplets files (also: \$VCPKG_OVERLAY_TRIPLETS)" -a '(__fish_complete_directories)'
complete -c vcpkg -n "__fish_seen_subcommand_from $vcpkg_commands" -x -l binarysource -d "Add sources for binary caching. See 'vcpkg help binarycaching'" -a '(__fish_complete_directories)'
complete -c vcpkg -n "__fish_seen_subcommand_from $vcpkg_commands" -x -l downloads-root -d "Specify the downloads root directory (default: \$VCPKG_DOWNLOADS)" -a '(__fish_complete_directories)'
complete -c vcpkg -n "__fish_seen_subcommand_from $vcpkg_commands" -x -l vcpkg-root -d "Specify the vcpkg root directory (default: \$VCPKG_ROOT)" -a '(__fish_complete_directories)'

# options for install
complete -c vcpkg -n "__fish_seen_subcommand_from install" -f -l dry-run -d "Do not actually build or install"
complete -c vcpkg -n "__fish_seen_subcommand_from install" -f -l head -d "Install the libraries on the command line using the latest upstream sources"
complete -c vcpkg -n "__fish_seen_subcommand_from install" -f -l no-downloads -d "Do not download new sources"
complete -c vcpkg -n "__fish_seen_subcommand_from install" -f -l only-downloads -d "Download sources but don't build packages"
complete -c vcpkg -n "__fish_seen_subcommand_from install" -f -l recurse -d "Allow removal of packages as part of installation"
complete -c vcpkg -n "__fish_seen_subcommand_from install" -f -l keep-going -d "Continue installing packages on failure"
complete -c vcpkg -n "__fish_seen_subcommand_from install" -f -l editable -d "Disable source re-extraction and binary caching for libraries on the command line"
complete -c vcpkg -n "__fish_seen_subcommand_from install" -f -l clean-after-build -d "Clean buildtrees, packages and downloads after building each package"

# options for edit
complete -c vcpkg -n "__fish_seen_subcommand_from edit" -f -l buildtrees -d "Open editor into the port-specific buildtree subfolder"
complete -c vcpkg -n "__fish_seen_subcommand_from edit" -f -l all -d "Open editor into the port as well as the port-specific buildtree subfolder"

# options for export
complete -c vcpkg -n "__fish_seen_subcommand_from export" -f -l dry-run -d "Do not actually export"
complete -c vcpkg -n "__fish_seen_subcommand_from export" -f -l raw -d "Export to an uncompressed directory"
complete -c vcpkg -n "__fish_seen_subcommand_from export" -f -l nuget -d "Export a NuGet package"
complete -c vcpkg -n "__fish_seen_subcommand_from export" -f -l ifw -d "Export to an IFW-based installer"
complete -c vcpkg -n "__fish_seen_subcommand_from export" -f -l zip -d "Export to a zip file"
complete -c vcpkg -n "__fish_seen_subcommand_from export" -f -l 7zip -d "Export to a 7zip (.7z) file"
complete -c vcpkg -n "__fish_seen_subcommand_from export" -f -l prefab -d "Export to Prefab format"
complete -c vcpkg -n "__fish_seen_subcommand_from export" -f -l prefab-maven -d "Enable maven"
complete -c vcpkg -n "__fish_seen_subcommand_from export" -f -l prefab-debug -d "Enable prefab debug"
complete -c vcpkg -n "__fish_seen_subcommand_from export" -f -r -l output -d "Specify the output name (used to construct filename)"
complete -c vcpkg -n "__fish_seen_subcommand_from export" -f -r -l output-dir -d "Specify the output directory for produced artifacts" -a '(__fish_complete_directories)'
complete -c vcpkg -n "__fish_seen_subcommand_from export" -f -r -l nuget-id -d "Specify the id for the exported NuGet package (overrides --output)"
complete -c vcpkg -n "__fish_seen_subcommand_from export" -f -r -l nuget-version -d "Specify the version for the exported NuGet package"
complete -c vcpkg -n "__fish_seen_subcommand_from export" -f -r -l ifw-repository-url -d "Specify the remote repository URL for the online installer"
complete -c vcpkg -n "__fish_seen_subcommand_from export" -f -r -l ifw-packages-directory-path -d "Specify the temporary directory path for the repacked packages"
complete -c vcpkg -n "__fish_seen_subcommand_from export" -f -r -l ifw-repository-directory-path -d "Specify the directory path for the exported repository"
complete -c vcpkg -n "__fish_seen_subcommand_from export" -f -r -l ifw-configuration-file-path -d "Specify the temporary file path for the installer configuration"
complete -c vcpkg -n "__fish_seen_subcommand_from export" -f -r -l ifw-installer-file-path -d "Specify the file path for the exported installer"
complete -c vcpkg -n "__fish_seen_subcommand_from export" -f -r -l prefab-group-id -d "GroupId uniquely identifies your project according maven specifications"
complete -c vcpkg -n "__fish_seen_subcommand_from export" -f -r -l prefab-artifact-id -d "Artifact Id is the name of the project according maven specifications"
complete -c vcpkg -n "__fish_seen_subcommand_from export" -f -r -l prefab-version -d "Version is the name of the project according maven specifications"
complete -c vcpkg -n "__fish_seen_subcommand_from export" -f -r -l prefab-min-sdk -d "Android minimum supported sdk version"
complete -c vcpkg -n "__fish_seen_subcommand_from export" -f -r -l prefab-target-sdk -d "Android target sdk version"

# options for remove
complete -c vcpkg -n "__fish_seen_subcommand_from remove" -f -l purge -d "Remove the cached copy of the package (default)"
complete -c vcpkg -n "__fish_seen_subcommand_from remove" -f -l no-purge -d "Do not remove the cached copy of the package (deprecated)"
complete -c vcpkg -n "__fish_seen_subcommand_from remove" -f -l recurse -d "Allow removal of packages not explicitly specified on the command line"
complete -c vcpkg -n "__fish_seen_subcommand_from remove" -f -l dry-run -d "Print the packages to be removed, but do not remove them"
complete -c vcpkg -n "__fish_seen_subcommand_from remove" -f -l outdated -d "Select all packages with versions that do not match the portfiles"

# options for upgrade
complete -c vcpkg -n "__fish_seen_subcommand_from upgrade" -f -l no-dry-run -d "Actually upgrade"
complete -c vcpkg -n "__fish_seen_subcommand_from upgrade" -f -l keep-going -d "Continue installing packages on failure"
