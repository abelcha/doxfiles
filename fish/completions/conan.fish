
# complete -c conan -n '__fish_seen_subcommand_from cache'   -d "Perform file operations in the local cache (of recipes and/or packages)"
# complete -c conan -n '__fish_seen_subcommand_from cache'    -f -x -a "backup upload check integrity clean path restore save"
# complete -c conan -n '__fish_seen_subcommand_from config'  -d 'Manage the Conan configuration in the Conan home'
# complete -c conan -n '__fish_seen_subcommand_from config'  -f -x -a 'home install install-pkg list show'
# complete -c conan -n '__fish_seen_subcommand_from graph'   -d 'Compute a dependency graph, without installing or building the binaries'
# complete -c conan -n '__fish_seen_subcommand_from graph'   -f  -f -x -a "build-order build-order merge explain info outdated"
# complete -c conan -n '__fish_seen_subcommand_from inspect'   -d 'Inspect a conanfile.py to return its public fields.'
# complete -c conan -n '__fish_seen_subcommand_from inspect'   -a path -d 'Path to a folder containing a recipe (conanfile.py)'
# complete -c conan -n '__fish_seen_subcommand_from install'   -d 'Install the requirements specified in a recipe (conanfile.py or conanfile.txt).'
# complete -c conan -n '__fish_seen_subcommand_from list'  -d 'List existing recipes, revisions, or packages in the cache (by default) or the remotes.'
# complete -c conan -n '__fish_seen_subcommand_from list'  -a reference -d 'A pattern in the form pkg/version#revision:package_id#revision, e.g: zlib/1.2.13:* means all binaries for zlib/1.2.13. If revision is not specified, it is assumed latest one.'
# complete -c conan -n '__fish_seen_subcommand_from lock'  -d 'Create or manage lockfiles.'
# complete -c conan -n '__fish_seen_subcommand_from lock'  -a 'add,create,merge,remove' -d ''
# complete -c conan -n '__fish_seen_subcommand_from pkglist'   -d 'Several operations over package lists'
# complete -c conan -n '__fish_seen_subcommand_from pkglist'   -f 'find-remote,merge' -d ''
# complete -c conan -n '__fish_seen_subcommand_from profile'   -d 'Manage profiles.'
# complete -c conan -n '__fish_seen_subcommand_from profile'   -a 'detect,list,path,show' -d ''
# complete -c conan -n '__fish_seen_subcommand_from remote'  -d 'Manage the remote list and the users authenticated on them.'
# complete -c conan -n '__fish_seen_subcommand_from remote'  -a 'add,auth,disable,enable,list,list- users,login,logout,remove,rename,set-user,update' -d ''
# complete -c conan -n '__fish_seen_subcommand_from remove'  -d 'Remove recipes or packages from local cache or a remote.'
# complete -c conan -n '__fish_seen_subcommand_from remove'  -a reference -d 'A pattern in the form pkg/version#revision:package_id#revision, e.g: zlib/1.2.13:* means all binaries for zlib/1.2.13. If revision is not specified, it is assumed latest one.'
# complete -c conan -n '__fish_seen_subcommand_from search'  -d 'Search for package recipes in all the remotes (by default), or a remote.'
# complete -c conan -n '__fish_seen_subcommand_from search'  -a reference -d 'Recipe reference to search for. It can contain * as wildcard at any reference field.'
# complete -c conan -n '__fish_seen_subcommand_from version'   -d 'Give information about the Conan client version.'
# complete -c conan -n '__fish_seen_subcommand_from build'   -d 'Install dependencies and call the build() method.'
# complete -c conan -n '__fish_seen_subcommand_from build'   -a path -d 'Path to a python-based recipe file or a folder containing a conanfile.py recipe.'
# complete -c conan -n '__fish_seen_subcommand_from create'  -d 'Create a package.'
# complete -c conan -n '__fish_seen_subcommand_from create'  -a path -d 'Path to a folder containing a recipe (conanfile.py)'
# complete -c conan -n '__fish_seen_subcommand_from download'  -d 'Download (without installing) a single conan package from a remote server.'



# ## Download Command  # Completion for Conan download command
complete -c conan -n '__fish_seen_subcommand_from download' -s h -l help -d 'Show help message and exit'
complete -c conan -n '__fish_seen_subcommand_from download' -s v -l verbose -d 'Set the output verbosity level'
complete -c conan -n '__fish_seen_subcommand_from download' -s cc -l core-conf -d 'Global configuration for Conan'
complete -c conan -n '__fish_seen_subcommand_from download' -s f -l format -d 'Select the output format: json'
complete -c conan -n '__fish_seen_subcommand_from download' -l only-recipe -d 'Download only the recipe'
complete -c conan -n '__fish_seen_subcommand_from download' -s p -l package-q uery -d 'Download packages matching a specific query'
complete -c conan -n '__fish_seen_subcommand_from download' -s r -l remote -d 'Download from a specific remote' -r
complete -c conan -n '__fish_seen_subcommand_from download' -s m -l metadata -d 'Download metadata matching pattern'
complete -c conan -n '__fish_seen_subcommand_from download' -s l -l list -d 'Package list file'
# ## Editable Command  # Completion for Conan editable command
complete -c conan -n '__fish_seen_subcommand_from editable' -s h -l help -d 'Show help message and exit'
complete -c conan -n '__fish_seen_subcommand_from editable' -s v -l verbose -d 'Set the output verbosity level'
complete -c conan -n '__fish_seen_subcommand_from editable' -s cc -l core-conf -d 'Global configuration for Conan' # Sub-commands for editable
complete -c conan -n '__fish_seen_subcommand_from editable' -f -a 'add listr emove' -d 'Sub-commands for editable packages'
# ## Export Command  # Completion for Conan export command
complete -c conan -n '__fish_seen_subcommand_from export' -s h -l help -d 'Showh elp message and exit'
complete -c conan -n '__fish_seen_subcommand_from export' -s v -l verbose -d 'Set the output verbosity level'
complete -c conan -n '__fish_seen_subcommand_from export' -s cc -l core-conf -d 'Global configuration for Conan'
complete -c conan -n '__fish_seen_subcommand_from export' -s f -l format -d 'Select the output format: json, pkglist'
complete -c conan -n '__fish_seen_subcommand_from export' -l name -d 'Specifyp ackage name'
complete -c conan -n '__fish_seen_subcommand_from export' -l version -d 'Specify package version'
complete -c conan -n '__fish_seen_subcommand_from export' -l user -d 'Specifyu ser'
complete -c conan -n '__fish_seen_subcommand_from export' -l channel -d 'Specify channel'
complete -c conan -n '__fish_seen_subcommand_from export' -s r -l remote -d 'Look in the specified remote server' -r
complete -c conan -n '__fish_seen_subcommand_from export' -s nr -l no-remote -d 'Do not use remote, resolve in the cache'
complete -c conan -n '__fish_seen_subcommand_from export' -s l -l lockfile -d 'Path to a lockfile'
complete -c conan -n '__fish_seen_subcommand_from export' -l lockfile-out -d 'Filename of the updated lockfile'
complete -c conan -n '__fish_seen_subcommand_from export' -l lockfile-partial -d 'Partial lockfile usage'
complete -c conan -n '__fish_seen_subcommand_from export' -l build-require -d 'Treat as a build-require'
# conan export-pkg completions
complete -c conan -n "__fish_seen_subcommand_from export-pkg" -s h -l help -d "Show help message and exit"
complete -c conan -n "__fish_seen_subcommand_from export-pkg" -s v -l version -d "Show version"
complete -c conan -n "__fish_seen_subcommand_from export-pkg" -s cc -l core-conf - d "Core configuration for Conan"
complete -c conan -n "__fish_seen_subcommand_from export-pkg" -s f -l format -d "Output format, e.g., json"
complete -c conan -n "__fish_seen_subcommand_from export-pkg" -s of -l output- folder -d "Output folder for generated and build files"
complete -c conan -n "__fish_seen_subcommand_from export-pkg" -l build-require - d "Specify if the provided reference is a build-require"
complete -c conan -n "__fish_seen_subcommand_from export-pkg" -s r -l remote -d "Specify remote"
complete -c conan -n "__fish_seen_subcommand_from export-pkg" -s l -l lockfile - d "Path to a lockfile"
# conan new completions
complete -c conan -n "__fish_seen_subcommand_from new" -s h -l help -d "Show help message and exit"
complete -c conan -n "__fish_seen_subcommand_from new" -s v -l version -d "Show version"
complete -c conan -n "__fish_seen_subcommand_from new" -s cc -l core-conf -d "Core configuration for Conan"
complete -c conan -n "__fish_seen_subcommand_from new" -s d -l define -d "Define a template argument"
complete -c conan -n "__fish_seen_subcommand_from new" -s f -l force -d "Overwrite file if it already exists"
# conan source completions
complete -c conan -n "__fish_seen_subcommand_from source" -s h -l help -d "Show help message and exit"
complete -c conan -n "__fish_seen_subcommand_from source" -s v -l version -d "Show version"
complete -c conan -n "__fish_seen_subcommand_from source" -s cc -l core-conf -d "Core configuration for Conan"
# conan test completions
complete -c conan -n "__fish_seen_subcommand_from test" -s h -l help -d "Show help message and exit"
complete -c conan -n "__fish_seen_subcommand_from test" -s v -l version -d "Show version"
complete -c conan -n "__fish_seen_subcommand_from test" -s cc -l core-conf -d "Core configuration for Conan"
complete -c conan -n "__fish_seen_subcommand_from test" -s f -l format -d "Output format, e.g., json"
complete -c conan -n "__fish_seen_subcommand_from test" -s r -l remote -d "Specify remote"
complete -c conan -n "__fish_seen_subcommand_from test" -s b -l build -d "Specify which packages to build from source"
# conan upload completions
complete -c conan -n "__fish_seen_subcommand_from upload" -s h -l help -d "Show help message and exit"
complete -c conan -n "__fish_seen_subcommand_from upload" -s v -l version -d "Show version"
complete -c conan -n "__fish_seen_subcommand_from upload" -s cc -l core-conf -d "Core configuration for Conan"
complete -c conan -n "__fish_seen_subcommand_from upload" -s f -l format -d "Output format, e.g., json"
complete -c conan -n "__fish_seen_subcommand_from upload" -s r -l remote -d "Specify remote to upload to"
complete -c conan -n "__fish_seen_subcommand_from upload" -l only-recipe -d "Upload only the recipe"
