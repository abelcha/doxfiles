complete -c "juv" -l "version" -d "Show the version and exit." # global
complete -c "juv" -l "help" -d "Show this message and exit." # global
complete -f -c "juv" -n "__fish_use_subcommand" -a "add" -d "Add dependencies to a notebook or script." # sub
complete -f -c "juv" -n "__fish_use_subcommand" -a "cat" -d "Print notebook contents to stdout." # sub
complete -f -c "juv" -n "__fish_use_subcommand" -a "clear" -d "Clear notebook cell outputs." # sub
complete -f -c "juv" -n "__fish_use_subcommand" -a "edit" -d "Quick edit a notebook as markdown." # sub
complete -f -c "juv" -n "__fish_use_subcommand" -a "exec" -d "Execute a notebook as a script." # sub
complete -f -c "juv" -n "__fish_use_subcommand" -a "export" -d "Export the notebook's lockfile to an alternate format." # sub
complete -f -c "juv" -n "__fish_use_subcommand" -a "init" -d "Initialize a new notebook." # sub
complete -f -c "juv" -n "__fish_use_subcommand" -a "lock" -d "Update the notebooks's lockfile." # sub
complete -f -c "juv" -n "__fish_use_subcommand" -a "remove" -d "Remove dependencies from a notebook." # sub
complete -f -c "juv" -n "__fish_use_subcommand" -a "run" -d "Launch a notebook or script in a Jupyter front end." # sub
complete -f -c "juv" -n "__fish_use_subcommand" -a "stamp" -d "Stamp a notebook or script with a reproducible timestamp." # sub
complete -f -c "juv" -n "__fish_use_subcommand" -a "sync" -d "Sync a virtual enviroment for a notebook." # sub
complete -f -c "juv" -n "__fish_use_subcommand" -a "tree" -d "Display the notebook's dependency tree." # sub
complete -f -c "juv" -n "__fish_use_subcommand" -a "venv" -d "Create a virtual enviroment from a notebook." # sub
complete -f -c "juv" -n "__fish_use_subcommand" -a "version" -d "Display juv's version." # sub
complete -c "juv" -n "__fish_seen_subcommand_from 'add'" -s "r" -l "requirements" -d "Add all packages listed in the given `requirements.txt` file." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'add'" -l "extra" -d "Extras to enable for the dependency. May be provided more than once." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'add'" -l "editable" -d "Add the requirements as editable." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'add'" -l "tag" -d "Tag to use when adding a dependency from Git." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'add'" -l "branch" -d "Branch to use when adding a dependency from Git." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'add'" -l "rev" -d "Commit to use when adding a dependency from Git." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'add'" -l "pin" -d "Resolve package specifiers to exact versions and pin." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'add'" -l "exclude-newer" -d "Limit candidate packages to those that were uploaded prior to the given date" # global
complete -c "juv" -n "__fish_seen_subcommand_from 'add'" -l "index" -d "The URLs to use when resolving dependencies, in addition to the default index" # global
complete -c "juv" -n "__fish_seen_subcommand_from 'add'" -l "default-index" -d "The URL of the default package index (by default: <https://pypi.org/simple>)" # global
complete -c "juv" -n "__fish_seen_subcommand_from 'add'" -l "help" -d "Show this message and exit." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'cat'" -l "script" # global
complete -c "juv" -n "__fish_seen_subcommand_from 'cat'" -l "help" -d "Show this message and exit." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'clear'" -l "check" -d "Check if the notebooks are cleared." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'clear'" -l "help" -d "Show this message and exit." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'edit'" -l "editor" -d "The editor to use." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'edit'" -l "help" -d "Show this message and exit." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'exec'" -s "p" -l "python" -d "The Python interpreter to use for the exec environment." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'exec'" -l "with" -d "Run with the given packages installed." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'exec'" -l "quiet" # global
complete -c "juv" -n "__fish_seen_subcommand_from 'exec'" -l "help" -d "Show this message and exit." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'export'" -l "help" -d "Show this message and exit." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'init'" -s "p" -l "python" -d "The Python interpreter to use to determine the minimum supported Python version. [env: UV_PYTHON=]" # global
complete -c "juv" -n "__fish_seen_subcommand_from 'init'" -l "help" -d "Show this message and exit." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'lock'" -l "clear" -d "Clear the lockfile contents." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'lock'" -l "help" -d "Show this message and exit." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'remove'" -l "help" -d "Show this message and exit." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'run'" -l "jupyter" -d "The Jupyter frontend to use." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'run'" -l "with" -d "Run with the given packages installed." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'run'" -s "p" -l "python" -d "The Python interpreter to use for the run environment." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'run'" -l "help" -d "Show this message and exit." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'stamp'" -l "timestamp" -d "An RFC 3339 timestamp (e.g., 2006-12-02T02:07:43Z)." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'stamp'" -l "date" -d "A local ISO 8601 date (e.g., 2006-12-02). Resolves to midnight system's time zone." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'stamp'" -l "rev" -d "A Git revision to stamp the file with." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'stamp'" -l "latest" -d "Use the latest Git revision." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'stamp'" -l "clear" -d "Clear the `exclude-newer` field." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'stamp'" -l "help" -d "Show this message and exit." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'sync'" -l "target" -d "Path to virtual environment to sync. Falls back to `.venv` in current directory." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'sync'" -l "active" -d "Sync dependencies to the active virtual environment. Overrides --target." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'sync'" -s "p" -l "python" -d "The Python interpreter to use to determine the minimum supported Python version." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'sync'" -l "no-kernel" -d "Exclude `ipykernel` from the environment." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'sync'" -l "help" -d "Show this message and exit." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'tree'" -l "help" -d "Show this message and exit." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'venv'" -l "from" -d "The notebook or script from which to derive the virtual environment." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'venv'" -s "p" -l "python" -d "The Python interpreter to use to determine the minimum supported Python version." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'venv'" -l "no-kernel" -d "Exclude `ipykernel` from the enviroment." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'venv'" -l "help" -d "Show this message and exit." # global
complete -c "juv" -n "__fish_seen_subcommand_from 'version'" -l "output-format" -d "Output format" -xa "json text" # global
complete -c "juv" -n "__fish_seen_subcommand_from 'version'" -l "help" -d "Show this message and exit." # global