# This is terribly complicated
# It's because:
# 1. bun run has to have dynamic completions
# 2. there are global options
# 3. bun {install add remove} gets special options
# 4. I don't know how to write fish completions well
# Contributions very welcome!!

function __fish__get_bun_bins
	string split ' ' (bun getcompletes b)
end

function __fish__get_bun_scripts
	set -lx SHELL bash
	set -lx MAX_DESCRIPTION_LEN 40
	string trim (string split '\n' (string split '\t' (bun getcompletes z)))
end

function __fish__get_bun_packages
	if test (commandline -ct) != ""
		set -lx SHELL fish
		string split ' ' (bun getcompletes a (commandline -ct))
	end
end

function __history_completions
	set -l tokens (commandline --current-process --tokenize)
	history --prefix (commandline) | string replace -r \^$tokens[1]\\s\* "" | string replace -r \^$tokens[2]\\s\* "" | string split ' '
end

function __fish__get_bun_bun_js_files
	string split ' ' (bun getcompletes j)
end

set -l bun_install_boolean_flags yarn production optional development no-save dry-run force no-cache silent verbose global
set -l bun_install_boolean_flags_descriptions "Write a yarn.lock file (yarn v1)" "Don't install devDependencies" "Add dependency to optionalDependencies" "Add dependency to devDependencies" "Don't update package.json or save a lockfile" "Don't install anything" "Always request the latest versions from the registry ﹠ reinstall all dependencies" "Ignore manifest cache entirely" "Don't output anything" "Excessively verbose logging" "Use global folder"

set -l bun_builtin_cmds_without_run dev create help bun upgrade discord install remove add init pm x
set -l bun_builtin_cmds_accepting_flags create help bun upgrade discord run init link unlink pm x

function __bun_complete_bins_scripts --inherit-variable bun_builtin_cmds_without_run -d "Emit bun completions for bins and scripts"
    # Do nothing if we already have a builtin subcommand,
    # or any subcommand other than "run".
    if __fish_seen_subcommand_from $bun_builtin_cmds_without_run
    or not __fish_use_subcommand && not __fish_seen_subcommand_from run
        return
    end
    # Do we already have a bin or script subcommand?
    set -l bins (__fish__get_bun_bins)
    if __fish_seen_subcommand_from $bins
        return
    end
    # Scripts have descriptions appended with a tab separator.
    # Strip off descriptions for the purposes of subcommand testing.
    set -l scripts (__fish__get_bun_scripts)
    if __fish_seen_subcommand_from (string split \t  1 -- $scripts) # -f 
        return
    end
    # Emit scripts.
    for script in $scripts
        echo $script
    end
    # Emit binaries and JS files (but only if we're doing 'bun run').
    if __fish_seen_subcommand_from run
        for bin in $bins
            echo "$bin"\t"package bin"
        end
        for file in (__fish__get_bun_bun_js_files)
            echo "$file"\t"Bun.js"
        end
    end
end


# Clear existing completions
complete -e -c bun

# Dynamically emit scripts and binaries
complete -c bun  -a "(__bun_complete_bins_scripts)"

# Complete flags if we have no subcommand or a flag-friendly one.
set -l flag_applies "__fish_use_subcommand; or __fish_seen_subcommand_from $bun_builtin_cmds_accepting_flags"
complete -c bun  -n $flag_applies  -s 'u' -l 'origin' -r -d 'Server URL. Rewrites import paths'
complete -c bun  -n $flag_applies   -s 'p' -l 'port' -r -d 'Port number to start server from'
complete -c bun  -n $flag_applies   -s 'd' -l 'define' -r -d 'Substitute K:V while parsing, e.g. --define process.env.NODE_ENV:\"development\"'
complete -c bun  -n $flag_applies   -s 'e' -l 'external' -r -d 'Exclude module from transpilation (can use * wildcards). ex: -e react'
complete -c bun  -n $flag_applies  -l 'use' -r -d 'Use a framework (ex: next)'
complete -c bun  -n $flag_applies  -l 'hot' -r -d 'Enable hot reloading in Bun‘s JavaScript runtime'

# Complete dev and create as first subcommand.
complete -c bun  -n "__fish_use_subcommand" -a 'dev' -d 'Start dev server'
complete -c bun  -n "__fish_use_subcommand" -a 'create'  -d 'Create a new project from a template'

# Complete "next" and "react" if we've seen "create".
complete -c bun  -n "__fish_seen_subcommand_from create" -a 'next' -d 'new Next.js project'

complete -c bun  -n "__fish_seen_subcommand_from create" -a 'react' -d 'new React project'

# Complete "upgrade" as first subcommand.
complete -c bun  -n "__fish_use_subcommand" -a 'upgrade' -d 'Upgrade bun to the latest version' -x
# Complete "-h/--help" unconditionally.
complete -c bun  -s "h" -l "help" -d 'See all commands and flags' -x

# Complete "-v/--version" if we have no subcommand.
complete -c bun  -n "not __fish_use_subcommand" -l "version" -s "v" -d 'Bun‘s version' -x

# Complete additional subcommands.
complete -c bun  -n "__fish_use_subcommand" -a 'discord' -d 'Open bun‘s Discord server' -x


complete -c bun  -n "__fish_use_subcommand" -a 'bun' -d 'Generate a new bundle'
# complete -c bun  -n "__fish_use_subcommand" -a 'run' --force-files


complete -c bun  -n "__fish_seen_subcommand_from bun" -d 'Bundle this' # -F 

complete -c bun  -n "__fish_seen_subcommand_from create; and __fish_seen_subcommand_from react next" -d "Create in directory" # -F 


complete -c bun  -n "__fish_use_subcommand" -a 'init' -d 'Start an empty Bun project' # -F 

complete -c bun  -n "__fish_use_subcommand" -a 'install'  -d 'Install packages from package.json'

complete -c bun  -n "__fish_use_subcommand" -a 'add' -d 'Add a package to package.json' # -F 

complete -c bun  -n "__fish_use_subcommand" -a 'remove' -d 'Remove a package from package.json' # -F 


for i in (seq (count $bun_install_boolean_flags))
	complete -c bun  	-n "__fish_seen_subcommand_from install add remove" -l "$bun_install_boolean_flags[$i]" -d "$bun_install_boolean_flags_descriptions[$i]"
end

complete -c bun  -n "__fish_seen_subcommand_from install add remove" -l 'cwd' -d 'Change working directory'

complete -c bun  -n "__fish_seen_subcommand_from install add remove" -l 'cache-dir' -d 'Choose a cache directory (default: $HOME/.bun/install/cache)'

complete -c bun  -n "__fish_seen_subcommand_from add" -d 'Popular' -a '(__fish__get_bun_packages)'

complete -c bun  -n "__fish_seen_subcommand_from add" -d 'History' -a '(__history_completions)'

complete -c bun  -n "__fish_seen_subcommand_from pm; and not __fish_seen_subcommand_from (__fish__get_bun_bins) (__fish__get_bun_scripts) cache;" -a 'bin ls cache hash hash-print hash-string' 

complete -c bun  -n "__fish_seen_subcommand_from pm; and __fish_seen_subcommand_from cache; and not __fish_seen_subcommand_from (__fish__get_bun_bins) (__fish__get_bun_scripts);" -a 'rm' 

# Add built-in subcommands with descriptions.
complete -c bun -n "__fish_use_subcommand" -a "create"  -d "Create a new project from a template"
complete -c bun -n "__fish_use_subcommand" -a "build bun" --require-parameter -d "Transpile and bundle one or more files" # -F 
complete -c bun -n "__fish_use_subcommand" -a "upgrade" -d "Upgrade Bun"
complete -c bun -n "__fish_use_subcommand" -a "run" -d "Run a script or package binary"
complete -c bun -n "__fish_use_subcommand" -a "install" -d "Install dependencies from package.json" 
complete -c bun -n "__fish_use_subcommand" -a "remove" -d "Remove a dependency from package.json" 
complete -c bun -n "__fish_use_subcommand" -a "add" -d "Add a dependency to package.json" 
complete -c bun -n "__fish_use_subcommand" -a "init" -d "Initialize a Bun project in this directory" 
complete -c bun -n "__fish_use_subcommand" -a "link" -d "Register or link a local npm package" 
complete -c bun -n "__fish_use_subcommand" -a "unlink" -d "Unregister a local npm package" 
complete -c bun -n "__fish_use_subcommand" -a "pm" -d "Additional package management utilities" 
complete -c bun -n "__fish_use_subcommand" -a "x" -d "Execute a package binary, installing if needed" 
complete -c bun -n "__fish_use_subcommand" -a "outdated" -d "Display the latest versions of outdated dependencies" 
complete -c bun -n "__fish_use_subcommand" -a "publish" -d "Publish your package from local to npm" 
complete  -c bun -n __fish_use_subcommand -a run -d './my-script.ts Execute a file with Bun'
complete  -c bun -n __fish_use_subcommand -a lint -d 'Run a package.json script'
complete  -c bun -n __fish_use_subcommand -a test -d 'Run unit tests with Bun'
complete  -c bun -n __fish_use_subcommand -a x -d 'prisma Execute a package binary ｟CLI｠, installing if needed ｟bunx｠'
complete  -c bun -n __fish_use_subcommand -a repl -d 'Start a REPL session with Bun'
complete  -c bun -n __fish_use_subcommand -a exec -d 'Run a shell script directly with Bun'
complete -c bun -l watch -d 'Automatically restart the process on file change'
complete -c bun -l hot -d 'Enable auto reload in the Bun runtime, test runner, or bundler'
complete -c bun -l no-clear-screen -d 'Disable clearing the terminal screen on reload when --hot or --watch is enabled'
complete -c bun -l smol -d 'Use less memory, but run garbage collection more often'
complete -c bun -s r -l preload -d 'Import a module before other modules are loaded'
complete -c bun -l require -d 'Alias of --preload, for Node.js compatibility'
complete -c bun -l inspect -d "Activate Bun's debugger"
complete -c bun -l inspect-wait -d "Activate Bun's debugger, wait for a connection before executing"
complete -c bun -l inspect-brk -d "Activate Bun's debugger, set breakpoint on first line of code and wait"
complete -c bun -l if-present -d 'Exit without an error if the entrypoint does not exist'
complete -c bun -l no-install -d 'Disable auto install in the Bun runtime'
complete -c bun -l install -d 'Configure auto-install behavior. One of "auto" ｟default, auto-installs when no node_modules｠, "fallback" ｟missing packages only｠, "force" ｟always｠.'
complete -c bun -s i -d 'Auto-install dependencies during execution. Equivalent to --install=fallback.'
complete -c bun -s e -l eval -d 'Evaluate argument as a script'
complete -c bun -s p -l print -d 'Evaluate argument as a script and print the result'
complete -c bun -l prefer-offline -d 'Skip staleness checks for packages in the Bun runtime and resolve from disk'
complete -c bun -l prefer-latest -d 'Use the latest matching versions of packages in the Bun runtime, always checking npm'
complete -c bun -l port -d 'Set the default port for Bun.serve'
complete -c bun -l conditions -d 'Pass custom conditions to resolve'
complete -c bun -l fetch-preconnect -d 'Preconnect to a URL while code is loading'
complete -c bun -l max-http-header-size -d 'Set the maximum size of HTTP headers in bytes. Default is 16KiB'
complete -c bun -l dns-result-order -d 'Set the default order of DNS lookup results. Valid orders: verbatim ｟default｠, ipv4first, ipv6first'
complete -c bun -l expose-gc -d 'Expose gc｟｠ on the global object. Has no effect on Bun.gc｟｠.'
complete -c bun -l no-deprecation -d 'Suppress all reporting of the custom deprecation.'
complete -c bun -l throw-deprecation -d 'Determine whether or not deprecation warnings result in errors.'
complete -c bun -l title -d 'Set the process title'
complete -c bun -l zero-fill-buffers -d 'Boolean to force Buffer.allocUnsafe｟size｠ to be zero-filled.'
complete -c bun -l redis-preconnect -d 'Preconnect to $REDIS_URL at startup'
complete -c bun -l silent -d "Don't print the script command"
complete -c bun -l elide-lines -d 'Number of lines of script output shown when using --filter ｟default: 10｠. Set to 0 to show all lines.'
complete -c bun -n __fish_no_arguments -s v -l version -d 'Print version and exit'
complete -c bun -l revision -d 'Print version with revision and exit'
complete -c bun -s F -l filter -d 'Run a script in all workspace packages matching the pattern'
complete -c bun -s b -l bun -d "Force a script or package to use Bun's runtime instead of Node.js ｟via symlinking node｠"
complete -c bun -l shell -d "Control the shell used for package.json scripts. Supports either 'bun' or 'system'"
complete -c bun -l env-file -d 'Load environment variables from the specified file｟s｠'
complete -c bun -l cwd -d "Absolute path to resolve files ﹠ entry points from. This just changes the process' cwd."
complete -c bun -s c -l config -d 'Specify path to Bun config file. Default $cwd/bunfig.toml'
complete -c bun -s h -l help -d 'Display this menu and exit'
complete -c bun -n '__fish_seen_subcommand_from run' -l silent -d "Don't print the script command"
complete -c bun -n '__fish_seen_subcommand_from run' -l elide-lines -d 'Number of lines of script output shown when using --filter ｟default: 10｠. Set to 0 to show all lines.'
complete -c bun -n '__fish_seen_subcommand_from run' -s F -l filter -d 'Run a script in all workspace packages matching the pattern'
complete -c bun -n '__fish_seen_subcommand_from run' -s b -l bun -d "Force a script or package to use Bun's runtime instead of Node.js ｟via symlinking node｠"
complete -c bun -n '__fish_seen_subcommand_from run' -l shell -d "Control the shell used for package.json scripts. Supports either 'bun' or 'system'"
complete -c bun -n '__fish_seen_subcommand_from run' -l watch -d 'Automatically restart the process on file change'
complete -c bun -n '__fish_seen_subcommand_from run' -l hot -d 'Enable auto reload in the Bun runtime, test runner, or bundler'
complete -c bun -n '__fish_seen_subcommand_from run' -l no-clear-screen -d 'Disable clearing the terminal screen on reload when --hot or --watch is enabled'
complete -c bun -n '__fish_seen_subcommand_from run' -l smol -d 'Use less memory, but run garbage collection more often'
complete -c bun -n '__fish_seen_subcommand_from run' -s r -l preload -d 'Import a module before other modules are loaded'
complete -c bun -n '__fish_seen_subcommand_from run' -l require -d 'Alias of --preload, for Node.js compatibility'
complete -c bun -n '__fish_seen_subcommand_from run' -l inspect -d "Activate Bun's debugger"
complete -c bun -n '__fish_seen_subcommand_from run' -l inspect-wait -d "Activate Bun's debugger, wait for a connection before executing"
complete -c bun -n '__fish_seen_subcommand_from run' -l inspect-brk -d "Activate Bun's debugger, set breakpoint on first line of code and wait"
complete -c bun -n '__fish_seen_subcommand_from run' -l if-present -d 'Exit without an error if the entrypoint does not exist'
complete -c bun -n '__fish_seen_subcommand_from run' -l no-install -d 'Disable auto install in the Bun runtime'
complete -c bun -n '__fish_seen_subcommand_from run' -l install -d 'Configure auto-install behavior. One of "auto" ｟default, auto-installs when no node_modules｠, "fallback" ｟missing packages only｠, "force" ｟always｠.'
complete -c bun -n '__fish_seen_subcommand_from run' -s i -d 'Auto-install dependencies during execution. Equivalent to --install=fallback.'
complete -c bun -n '__fish_seen_subcommand_from run' -s e -l eval -d 'Evaluate argument as a script'
complete -c bun -n '__fish_seen_subcommand_from run' -s p -l print -d 'Evaluate argument as a script and print the result'
complete -c bun -n '__fish_seen_subcommand_from run' -l prefer-offline -d 'Skip staleness checks for packages in the Bun runtime and resolve from disk'
complete -c bun -n '__fish_seen_subcommand_from run' -l prefer-latest -d 'Use the latest matching versions of packages in the Bun runtime, always checking npm'
complete -c bun -n '__fish_seen_subcommand_from run' -l port -d 'Set the default port for Bun.serve'
complete -c bun -n '__fish_seen_subcommand_from run' -l conditions -d 'Pass custom conditions to resolve'
complete -c bun -n '__fish_seen_subcommand_from run' -l fetch-preconnect -d 'Preconnect to a URL while code is loading'
complete -c bun -n '__fish_seen_subcommand_from run' -l max-http-header-size -d 'Set the maximum size of HTTP headers in bytes. Default is 16KiB'
complete -c bun -n '__fish_seen_subcommand_from run' -l dns-result-order -d 'Set the default order of DNS lookup results. Valid orders: verbatim ｟default｠, ipv4first, ipv6first'
complete -c bun -n '__fish_seen_subcommand_from run' -l expose-gc -d 'Expose gc｟｠ on the global object. Has no effect on Bun.gc｟｠.'
complete -c bun -n '__fish_seen_subcommand_from run' -l no-deprecation -d 'Suppress all reporting of the custom deprecation.'
complete -c bun -n '__fish_seen_subcommand_from run' -l throw-deprecation -d 'Determine whether or not deprecation warnings result in errors.'
complete -c bun -n '__fish_seen_subcommand_from run' -l title -d 'Set the process title'
complete -c bun -n '__fish_seen_subcommand_from run' -l zero-fill-buffers -d 'Boolean to force Buffer.allocUnsafe｟size｠ to be zero-filled.'
complete -c bun -n '__fish_seen_subcommand_from run' -l redis-preconnect -d 'Preconnect to $REDIS_URL at startup'
complete -c bun -n '__fish_seen_subcommand_from run' -l main-fields -d 'Main fields to lookup in package.json. Defaults to --target dependent'
complete -c bun -n '__fish_seen_subcommand_from run' -l preserve-symlinks -d 'Preserve symlinks when resolving files'
complete -c bun -n '__fish_seen_subcommand_from run' -l preserve-symlinks-main -d 'Preserve symlinks when resolving the main entry point'
complete -c bun -n '__fish_seen_subcommand_from run' -l extension-order -d 'Defaults to: .tsx,.ts,.jsx,.js,.json'
complete -c bun -n '__fish_seen_subcommand_from run' -l tsconfig-override -d 'Specify custom tsconfig.json. Default <d>$cwd<r>/tsconfig.json'
complete -c bun -n '__fish_seen_subcommand_from run' -s d -l define -d 'Substitute K:V while parsing, e.g. --define process.env.NODE_ENV:"development". Values are parsed as JSON.'
complete -c bun -n '__fish_seen_subcommand_from run' -l drop -d 'Remove function calls, e.g. --drop=console removes all console.* calls.'
complete -c bun -n '__fish_seen_subcommand_from run' -s l -l loader -d 'Parse files with .ext:loader, e.g. --loader .js:jsx. Valid loaders: js, jsx, ts, tsx, json, toml, text, file, wasm, napi'
complete -c bun -n '__fish_seen_subcommand_from run' -l no-macros -d 'Disable macros from being executed in the bundler, transpiler and runtime'
complete -c bun -n '__fish_seen_subcommand_from run' -l jsx-factory -d 'Changes the function called when compiling JSX elements using the classic JSX runtime'
complete -c bun -n '__fish_seen_subcommand_from run' -l jsx-fragment -d 'Changes the function called when compiling JSX fragments'
complete -c bun -n '__fish_seen_subcommand_from run' -l jsx-import-source -d 'Declares the module specifier to be used for importing the jsx and jsxs factory functions. Default: "react"'
complete -c bun -n '__fish_seen_subcommand_from run' -l jsx-runtime -d '"automatic" ｟default｠ or "classic"'
complete -c bun -n '__fish_seen_subcommand_from run' -l ignore-dce-annotations -d 'Ignore tree-shaking annotations such as @__PURE__'
complete -c bun -n '__fish_seen_subcommand_from run' -l env-file -d 'Load environment variables from the specified file｟s｠'
complete -c bun -n '__fish_seen_subcommand_from run' -l cwd -d "Absolute path to resolve files ﹠ entry points from. This just changes the process' cwd."
complete -c bun -n '__fish_seen_subcommand_from run' -s c -l config -d 'Specify path to Bun config file. Default <d>$cwd<r>/bunfig.toml'
complete -c bun -n '__fish_seen_subcommand_from run' -s h -l help -d 'Display this menu and exit'
complete -c bun -n '__fish_seen_subcommand_from test' -l timeout -d 'Set the per-test timeout in milliseconds, default is 5000.'
complete -c bun -n '__fish_seen_subcommand_from test' -s u -l update-snapshots -d 'Update snapshot files'
complete -c bun -n '__fish_seen_subcommand_from test' -l rerun-each -d 'Re-run each test file <NUMBER> times, helps catch certain bugs'
complete -c bun -n '__fish_seen_subcommand_from test' -l only -d 'Only run tests that are marked with "test.only｟｠"'
complete -c bun -n '__fish_seen_subcommand_from test' -l todo -d 'Include tests that are marked with "test.todo｟｠"'
complete -c bun -n '__fish_seen_subcommand_from test' -l coverage -d 'Generate a coverage profile'
complete -c bun -n '__fish_seen_subcommand_from test' -l coverage-reporter -d "Report coverage in 'text' and/or 'lcov'. Defaults to 'text'."
complete -c bun -n '__fish_seen_subcommand_from test' -l coverage-dir -d "Directory for coverage files. Defaults to 'coverage'."
complete -c bun -n '__fish_seen_subcommand_from test' -l bail -d 'Exit the test suite after <NUMBER> failures. If you do not specify a number, it defaults to 1.'
complete -c bun -n '__fish_seen_subcommand_from test' -s t -l test-name-pattern -d 'Run only tests with a name that matches the given regex.'
complete -c bun -n '__fish_seen_subcommand_from test' -l reporter -d 'Specify the test reporter. Currently --reporter=junit is the only supported format.'
complete -c bun -n '__fish_seen_subcommand_from test' -l reporter-outfile -d 'The output file used for the format from --reporter.'
complete -c bun -n '__fish_seen_subcommand_from x' -l bun -d 'Force the command to run with Bun instead of Node.js'
complete -c bun -n '__fish_seen_subcommand_from repl' -s h -l help -d 'Display this message.'
complete -c bun -n '__fish_seen_subcommand_from repl' -s p -l print -d '<...> Evaluates given code, prints result and exits.'
complete -c bun -n '__fish_seen_subcommand_from repl' -s e -l eval -d '<...> Evaluates given code and silently exits.'
complete -c bun -n '__fish_seen_subcommand_from repl' -l sloppy -d 'Runs the REPL in sloppy mode.'
complete -c bun -n '__fish_seen_subcommand_from install' -s c -l config -d 'Specify path to config file ｟bunfig.toml｠'
complete -c bun -n '__fish_seen_subcommand_from install' -s y -l yarn -d 'Write a yarn.lock file ｟yarn v1｠'
complete -c bun -n '__fish_seen_subcommand_from install' -s p -l production -d "Don't install devDependencies"
complete -c bun -n '__fish_seen_subcommand_from install' -l no-save -d "Don't update package.json or save a lockfile"
complete -c bun -n '__fish_seen_subcommand_from install' -l save -d 'Save to package.json ｟true by default｠'
complete -c bun -n '__fish_seen_subcommand_from install' -l ca -d 'Provide a Certificate Authority signing certificate'
complete -c bun -n '__fish_seen_subcommand_from install' -l cafile -d 'The same as '--ca', but is a file path to the certificate'
complete -c bun -n '__fish_seen_subcommand_from install' -l dry-run -d "Don't install anything"
complete -c bun -n '__fish_seen_subcommand_from install' -l frozen-lockfile -d 'Disallow changes to lockfile'
complete -c bun -n '__fish_seen_subcommand_from install' -s f -l force -d 'Always request the latest versions from the registry ﹠ reinstall all dependencies'
complete -c bun -n '__fish_seen_subcommand_from install' -l cache-dir -d 'Store ﹠ load cached data from a specific directory path'
complete -c bun -n '__fish_seen_subcommand_from install' -l no-cache -d 'Ignore manifest cache entirely'
complete -c bun -n '__fish_seen_subcommand_from install' -l silent -d "Don't log anything"
complete -c bun -n '__fish_seen_subcommand_from install' -l verbose -d 'Excessively verbose logging'
complete -c bun -n '__fish_seen_subcommand_from install' -l no-progress -d 'Disable the progress bar'
complete -c bun -n '__fish_seen_subcommand_from install' -l no-summary -d "Don't print a summary"
complete -c bun -n '__fish_seen_subcommand_from install' -l no-verify -d 'Skip verifying integrity of newly downloaded packages'
complete -c bun -n '__fish_seen_subcommand_from install' -l ignore-scripts -d "Skip lifecycle scripts in the project's package.json ｟dependency scripts are never run｠"
complete -c bun -n '__fish_seen_subcommand_from install' -l trust -d "Add to trustedDependencies in the project's package.json and install the package｟s｠"
complete -c bun -n '__fish_seen_subcommand_from install' -s g -l global -d 'Install globally'
complete -c bun -n '__fish_seen_subcommand_from install' -l cwd -d 'Set a specific cwd'
complete -c bun -n '__fish_seen_subcommand_from install' -l backend -d 'Platform-specific optimizations for installing dependencies. Possible values: "clonefile" ｟default｠, "hardlink", "symlink", "copyfile"'
complete -c bun -n '__fish_seen_subcommand_from install' -l registry -d 'Use a specific registry by default, overriding .npmrc, bunfig.toml and environment variables'
complete -c bun -n '__fish_seen_subcommand_from install' -l concurrent-scripts -d 'Maximum number of concurrent jobs for lifecycle scripts ｟default 5｠'
complete -c bun -n '__fish_seen_subcommand_from install' -l network-concurrency -d 'Maximum number of concurrent network requests ｟default 48｠'
complete -c bun -n '__fish_seen_subcommand_from install' -l save-text-lockfile -d 'Save a text-based lockfile'
complete -c bun -n '__fish_seen_subcommand_from install' -l omit -d "Exclude 'dev', 'optional', or 'peer' dependencies from install"
complete -c bun -n '__fish_seen_subcommand_from install' -l lockfile-only -d 'Generate a lockfile without installing dependencies'
complete -c bun -n '__fish_seen_subcommand_from install' -s h -l help -d 'Print this help menu'
complete -c bun -n '__fish_seen_subcommand_from install' -s d -l dev -d 'Add dependency to "devDependencies"'
complete -c bun -n '__fish_seen_subcommand_from install' -l optional -d 'Add dependency to "optionalDependencies"'
complete -c bun -n '__fish_seen_subcommand_from install' -l peer -d 'Add dependency to "peerDependencies"'
complete -c bun -n '__fish_seen_subcommand_from install' -s E -l exact -d 'Add the exact version instead of the ^range'
complete -c bun -n '__fish_seen_subcommand_from install' -l filter -d 'Install packages for the matching workspaces'
complete -c bun -n '__fish_seen_subcommand_from install' -s a -l analyze -d "Analyze ﹠ install all dependencies of files passed as arguments recursively ｟using Bun's bundler｠"
complete -c bun -n '__fish_seen_subcommand_from install' -l only-missing -d 'Only add dependencies to package.json if they are not already present'
complete -c bun -n '__fish_seen_subcommand_from add' -s c -l config -d 'Specify path to config file ｟bunfig.toml｠'
complete -c bun -n '__fish_seen_subcommand_from add' -s y -l yarn -d 'Write a yarn.lock file ｟yarn v1｠'
complete -c bun -n '__fish_seen_subcommand_from add' -s p -l production -d "Don't install devDependencies"
complete -c bun -n '__fish_seen_subcommand_from add' -l no-save -d "Don't update package.json or save a lockfile"
complete -c bun -n '__fish_seen_subcommand_from add' -l save -d 'Save to package.json ｟true by default｠'
complete -c bun -n '__fish_seen_subcommand_from add' -l ca -d 'Provide a Certificate Authority signing certificate'
complete -c bun -n '__fish_seen_subcommand_from add' -l cafile -d 'The same as '--ca', but is a file path to the certificate'
complete -c bun -n '__fish_seen_subcommand_from add' -l dry-run -d "Don't install anything"
complete -c bun -n '__fish_seen_subcommand_from add' -l frozen-lockfile -d 'Disallow changes to lockfile'
complete -c bun -n '__fish_seen_subcommand_from add' -s f -l force -d 'Always request the latest versions from the registry ﹠ reinstall all dependencies'
complete -c bun -n '__fish_seen_subcommand_from add' -l cache-dir -d 'Store ﹠ load cached data from a specific directory path'
complete -c bun -n '__fish_seen_subcommand_from add' -l no-cache -d 'Ignore manifest cache entirely'
complete -c bun -n '__fish_seen_subcommand_from add' -l silent -d "Don't log anything"
complete -c bun -n '__fish_seen_subcommand_from add' -l verbose -d 'Excessively verbose logging'
complete -c bun -n '__fish_seen_subcommand_from add' -l no-progress -d 'Disable the progress bar'
complete -c bun -n '__fish_seen_subcommand_from add' -l no-summary -d "Don't print a summary"
complete -c bun -n '__fish_seen_subcommand_from add' -l no-verify -d 'Skip verifying integrity of newly downloaded packages'
complete -c bun -n '__fish_seen_subcommand_from add' -l ignore-scripts -d "Skip lifecycle scripts in the project's package.json ｟dependency scripts are never run｠"
complete -c bun -n '__fish_seen_subcommand_from add' -l trust -d "Add to trustedDependencies in the project's package.json and install the package｟s｠"
complete -c bun -n '__fish_seen_subcommand_from add' -s g -l global -d 'Install globally'
complete -c bun -n '__fish_seen_subcommand_from add' -l cwd -d 'Set a specific cwd'
complete -c bun -n '__fish_seen_subcommand_from add' -l backend -d 'Platform-specific optimizations for installing dependencies. Possible values: "clonefile" ｟default｠, "hardlink", "symlink", "copyfile"'
complete -c bun -n '__fish_seen_subcommand_from add' -l registry -d 'Use a specific registry by default, overriding .npmrc, bunfig.toml and environment variables'
complete -c bun -n '__fish_seen_subcommand_from add' -l concurrent-scripts -d 'Maximum number of concurrent jobs for lifecycle scripts ｟default 5｠'
complete -c bun -n '__fish_seen_subcommand_from add' -l network-concurrency -d 'Maximum number of concurrent network requests ｟default 48｠'
complete -c bun -n '__fish_seen_subcommand_from add' -l save-text-lockfile -d 'Save a text-based lockfile'
complete -c bun -n '__fish_seen_subcommand_from add' -l omit -d "Exclude 'dev', 'optional', or 'peer' dependencies from install"
complete -c bun -n '__fish_seen_subcommand_from add' -l lockfile-only -d 'Generate a lockfile without installing dependencies'
complete -c bun -n '__fish_seen_subcommand_from add' -s h -l help -d 'Print this help menu'
complete -c bun -n '__fish_seen_subcommand_from add' -s d -l dev -d 'Add dependency to "devDependencies"'
complete -c bun -n '__fish_seen_subcommand_from add' -l optional -d 'Add dependency to "optionalDependencies"'
complete -c bun -n '__fish_seen_subcommand_from add' -l peer -d 'Add dependency to "peerDependencies"'
complete -c bun -n '__fish_seen_subcommand_from add' -s E -l exact -d 'Add the exact version instead of the ^range'
complete -c bun -n '__fish_seen_subcommand_from add' -s a -l analyze -d "Recursively analyze ﹠ install dependencies of files passed as arguments ｟using Bun's bundler｠"
complete -c bun -n '__fish_seen_subcommand_from add' -l only-missing -d 'Only add dependencies to package.json if they are not already present'
complete -c bun -n '__fish_seen_subcommand_from remove' -s c -l config -d 'Specify path to config file ｟bunfig.toml｠'
complete -c bun -n '__fish_seen_subcommand_from remove' -s y -l yarn -d 'Write a yarn.lock file ｟yarn v1｠'
complete -c bun -n '__fish_seen_subcommand_from remove' -s p -l production -d "Don't install devDependencies"
complete -c bun -n '__fish_seen_subcommand_from remove' -l no-save -d "Don't update package.json or save a lockfile"
complete -c bun -n '__fish_seen_subcommand_from remove' -l save -d 'Save to package.json ｟true by default｠'
complete -c bun -n '__fish_seen_subcommand_from remove' -l ca -d 'Provide a Certificate Authority signing certificate'
complete -c bun -n '__fish_seen_subcommand_from remove' -l cafile -d 'The same as '--ca', but is a file path to the certificate'
complete -c bun -n '__fish_seen_subcommand_from remove' -l dry-run -d "Don't install anything"
complete -c bun -n '__fish_seen_subcommand_from remove' -l frozen-lockfile -d 'Disallow changes to lockfile'
complete -c bun -n '__fish_seen_subcommand_from remove' -s f -l force -d 'Always request the latest versions from the registry ﹠ reinstall all dependencies'
complete -c bun -n '__fish_seen_subcommand_from remove' -l cache-dir -d 'Store ﹠ load cached data from a specific directory path'
complete -c bun -n '__fish_seen_subcommand_from remove' -l no-cache -d 'Ignore manifest cache entirely'
complete -c bun -n '__fish_seen_subcommand_from remove' -l silent -d "Don't log anything"
complete -c bun -n '__fish_seen_subcommand_from remove' -l verbose -d 'Excessively verbose logging'
complete -c bun -n '__fish_seen_subcommand_from remove' -l no-progress -d 'Disable the progress bar'
complete -c bun -n '__fish_seen_subcommand_from remove' -l no-summary -d "Don't print a summary"
complete -c bun -n '__fish_seen_subcommand_from remove' -l no-verify -d 'Skip verifying integrity of newly downloaded packages'
complete -c bun -n '__fish_seen_subcommand_from remove' -l ignore-scripts -d "Skip lifecycle scripts in the project's package.json ｟dependency scripts are never run｠"
complete -c bun -n '__fish_seen_subcommand_from remove' -l trust -d "Add to trustedDependencies in the project's package.json and install the package｟s｠"
complete -c bun -n '__fish_seen_subcommand_from remove' -s g -l global -d 'Install globally'
complete -c bun -n '__fish_seen_subcommand_from remove' -l cwd -d 'Set a specific cwd'
complete -c bun -n '__fish_seen_subcommand_from remove' -l backend -d 'Platform-specific optimizations for installing dependencies. Possible values: "clonefile" ｟default｠, "hardlink", "symlink", "copyfile"'
complete -c bun -n '__fish_seen_subcommand_from remove' -l registry -d 'Use a specific registry by default, overriding .npmrc, bunfig.toml and environment variables'
complete -c bun -n '__fish_seen_subcommand_from remove' -l concurrent-scripts -d 'Maximum number of concurrent jobs for lifecycle scripts ｟default 5｠'
complete -c bun -n '__fish_seen_subcommand_from remove' -l network-concurrency -d 'Maximum number of concurrent network requests ｟default 48｠'
complete -c bun -n '__fish_seen_subcommand_from remove' -l save-text-lockfile -d 'Save a text-based lockfile'
complete -c bun -n '__fish_seen_subcommand_from remove' -l omit -d "Exclude 'dev', 'optional', or 'peer' dependencies from install"
complete -c bun -n '__fish_seen_subcommand_from remove' -l lockfile-only -d 'Generate a lockfile without installing dependencies'
complete -c bun -n '__fish_seen_subcommand_from remove' -s h -l help -d 'Print this help menu'
complete -c bun -n '__fish_seen_subcommand_from update' -s c -l config -d 'Specify path to config file ｟bunfig.toml｠'
complete -c bun -n '__fish_seen_subcommand_from update' -s y -l yarn -d 'Write a yarn.lock file ｟yarn v1｠'
complete -c bun -n '__fish_seen_subcommand_from update' -s p -l production -d "Don't install devDependencies"
complete -c bun -n '__fish_seen_subcommand_from update' -l no-save -d "Don't update package.json or save a lockfile"
complete -c bun -n '__fish_seen_subcommand_from update' -l save -d 'Save to package.json ｟true by default｠'
complete -c bun -n '__fish_seen_subcommand_from update' -l ca -d 'Provide a Certificate Authority signing certificate'
complete -c bun -n '__fish_seen_subcommand_from update' -l cafile -d 'The same as '--ca', but is a file path to the certificate'
complete -c bun -n '__fish_seen_subcommand_from update' -l dry-run -d "Don't install anything"
complete -c bun -n '__fish_seen_subcommand_from update' -l frozen-lockfile -d 'Disallow changes to lockfile'
complete -c bun -n '__fish_seen_subcommand_from update' -s f -l force -d 'Always request the latest versions from the registry ﹠ reinstall all dependencies'
complete -c bun -n '__fish_seen_subcommand_from update' -l cache-dir -d 'Store ﹠ load cached data from a specific directory path'
complete -c bun -n '__fish_seen_subcommand_from update' -l no-cache -d 'Ignore manifest cache entirely'
complete -c bun -n '__fish_seen_subcommand_from update' -l silent -d "Don't log anything"
complete -c bun -n '__fish_seen_subcommand_from update' -l verbose -d 'Excessively verbose logging'
complete -c bun -n '__fish_seen_subcommand_from update' -l no-progress -d 'Disable the progress bar'
complete -c bun -n '__fish_seen_subcommand_from update' -l no-summary -d "Don't print a summary"
complete -c bun -n '__fish_seen_subcommand_from update' -l no-verify -d 'Skip verifying integrity of newly downloaded packages'
complete -c bun -n '__fish_seen_subcommand_from update' -l ignore-scripts -d "Skip lifecycle scripts in the project's package.json ｟dependency scripts are never run｠"
complete -c bun -n '__fish_seen_subcommand_from update' -l trust -d "Add to trustedDependencies in the project's package.json and install the package｟s｠"
complete -c bun -n '__fish_seen_subcommand_from update' -s g -l global -d 'Install globally'
complete -c bun -n '__fish_seen_subcommand_from update' -l cwd -d 'Set a specific cwd'
complete -c bun -n '__fish_seen_subcommand_from update' -l backend -d 'Platform-specific optimizations for installing dependencies. Possible values: "clonefile" ｟default｠, "hardlink", "symlink", "copyfile"'
complete -c bun -n '__fish_seen_subcommand_from update' -l registry -d 'Use a specific registry by default, overriding .npmrc, bunfig.toml and environment variables'
complete -c bun -n '__fish_seen_subcommand_from update' -l concurrent-scripts -d 'Maximum number of concurrent jobs for lifecycle scripts ｟default 5｠'
complete -c bun -n '__fish_seen_subcommand_from update' -l network-concurrency -d 'Maximum number of concurrent network requests ｟default 48｠'
complete -c bun -n '__fish_seen_subcommand_from update' -l save-text-lockfile -d 'Save a text-based lockfile'
complete -c bun -n '__fish_seen_subcommand_from update' -l omit -d "Exclude 'dev', 'optional', or 'peer' dependencies from install"
complete -c bun -n '__fish_seen_subcommand_from update' -l lockfile-only -d 'Generate a lockfile without installing dependencies'
complete -c bun -n '__fish_seen_subcommand_from update' -s h -l help -d 'Print this help menu'
complete -c bun -n '__fish_seen_subcommand_from update' -l latest -d 'Update packages to their latest versions'
complete -c bun -n '__fish_seen_subcommand_from outdated' -s c -l config -d 'Specify path to config file ｟bunfig.toml｠'
complete -c bun -n '__fish_seen_subcommand_from outdated' -s y -l yarn -d 'Write a yarn.lock file ｟yarn v1｠'
complete -c bun -n '__fish_seen_subcommand_from outdated' -s p -l production -d "Don't install devDependencies"
complete -c bun -n '__fish_seen_subcommand_from outdated' -l no-save -d "Don't update package.json or save a lockfile"
complete -c bun -n '__fish_seen_subcommand_from outdated' -l save -d 'Save to package.json ｟true by default｠'
complete -c bun -n '__fish_seen_subcommand_from outdated' -l ca -d 'Provide a Certificate Authority signing certificate'
complete -c bun -n '__fish_seen_subcommand_from outdated' -l cafile -d 'The same as '--ca', but is a file path to the certificate'
complete -c bun -n '__fish_seen_subcommand_from outdated' -l dry-run -d "Don't install anything"
complete -c bun -n '__fish_seen_subcommand_from outdated' -l frozen-lockfile -d 'Disallow changes to lockfile'
complete -c bun -n '__fish_seen_subcommand_from outdated' -s f -l force -d 'Always request the latest versions from the registry ﹠ reinstall all dependencies'
complete -c bun -n '__fish_seen_subcommand_from outdated' -l cache-dir -d 'Store ﹠ load cached data from a specific directory path'
complete -c bun -n '__fish_seen_subcommand_from outdated' -l no-cache -d 'Ignore manifest cache entirely'
complete -c bun -n '__fish_seen_subcommand_from outdated' -l silent -d "Don't log anything"
complete -c bun -n '__fish_seen_subcommand_from outdated' -l verbose -d 'Excessively verbose logging'
complete -c bun -n '__fish_seen_subcommand_from outdated' -l no-progress -d 'Disable the progress bar'
complete -c bun -n '__fish_seen_subcommand_from outdated' -l no-summary -d "Don't print a summary"
complete -c bun -n '__fish_seen_subcommand_from outdated' -l no-verify -d 'Skip verifying integrity of newly downloaded packages'
complete -c bun -n '__fish_seen_subcommand_from outdated' -l ignore-scripts -d "Skip lifecycle scripts in the project's package.json ｟dependency scripts are never run｠"
complete -c bun -n '__fish_seen_subcommand_from outdated' -l trust -d "Add to trustedDependencies in the project's package.json and install the package｟s｠"
complete -c bun -n '__fish_seen_subcommand_from outdated' -s g -l global -d 'Install globally'
complete -c bun -n '__fish_seen_subcommand_from outdated' -l cwd -d 'Set a specific cwd'
complete -c bun -n '__fish_seen_subcommand_from outdated' -l backend -d 'Platform-specific optimizations for installing dependencies. Possible values: "clonefile" ｟default｠, "hardlink", "symlink", "copyfile"'
complete -c bun -n '__fish_seen_subcommand_from outdated' -l registry -d 'Use a specific registry by default, overriding .npmrc, bunfig.toml and environment variables'
complete -c bun -n '__fish_seen_subcommand_from outdated' -l concurrent-scripts -d 'Maximum number of concurrent jobs for lifecycle scripts ｟default 5｠'
complete -c bun -n '__fish_seen_subcommand_from outdated' -l network-concurrency -d 'Maximum number of concurrent network requests ｟default 48｠'
complete -c bun -n '__fish_seen_subcommand_from outdated' -l save-text-lockfile -d 'Save a text-based lockfile'
complete -c bun -n '__fish_seen_subcommand_from outdated' -l omit -d "Exclude 'dev', 'optional', or 'peer' dependencies from install"
complete -c bun -n '__fish_seen_subcommand_from outdated' -l lockfile-only -d 'Generate a lockfile without installing dependencies'
complete -c bun -n '__fish_seen_subcommand_from outdated' -s h -l help -d 'Print this help menu'
complete -c bun -n '__fish_seen_subcommand_from outdated' -s F -l filter -d 'Display outdated dependencies for each matching workspace'
complete -c bun -n '__fish_seen_subcommand_from link' -s c -l config -d 'Specify path to config file ｟bunfig.toml｠'
complete -c bun -n '__fish_seen_subcommand_from link' -s y -l yarn -d 'Write a yarn.lock file ｟yarn v1｠'
complete -c bun -n '__fish_seen_subcommand_from link' -s p -l production -d "Don't install devDependencies"
complete -c bun -n '__fish_seen_subcommand_from link' -l no-save -d "Don't update package.json or save a lockfile"
complete -c bun -n '__fish_seen_subcommand_from link' -l save -d 'Save to package.json ｟true by default｠'
complete -c bun -n '__fish_seen_subcommand_from link' -l ca -d 'Provide a Certificate Authority signing certificate'
complete -c bun -n '__fish_seen_subcommand_from link' -l cafile -d 'The same as '--ca', but is a file path to the certificate'
complete -c bun -n '__fish_seen_subcommand_from link' -l dry-run -d "Don't install anything"
complete -c bun -n '__fish_seen_subcommand_from link' -l frozen-lockfile -d 'Disallow changes to lockfile'
complete -c bun -n '__fish_seen_subcommand_from link' -s f -l force -d 'Always request the latest versions from the registry ﹠ reinstall all dependencies'
complete -c bun -n '__fish_seen_subcommand_from link' -l cache-dir -d 'Store ﹠ load cached data from a specific directory path'
complete -c bun -n '__fish_seen_subcommand_from link' -l no-cache -d 'Ignore manifest cache entirely'
complete -c bun -n '__fish_seen_subcommand_from link' -l silent -d "Don't log anything"
complete -c bun -n '__fish_seen_subcommand_from link' -l verbose -d 'Excessively verbose logging'
complete -c bun -n '__fish_seen_subcommand_from link' -l no-progress -d 'Disable the progress bar'
complete -c bun -n '__fish_seen_subcommand_from link' -l no-summary -d "Don't print a summary"
complete -c bun -n '__fish_seen_subcommand_from link' -l no-verify -d 'Skip verifying integrity of newly downloaded packages'
complete -c bun -n '__fish_seen_subcommand_from link' -l ignore-scripts -d "Skip lifecycle scripts in the project's package.json ｟dependency scripts are never run｠"
complete -c bun -n '__fish_seen_subcommand_from link' -l trust -d "Add to trustedDependencies in the project's package.json and install the package｟s｠"
complete -c bun -n '__fish_seen_subcommand_from link' -s g -l global -d 'Install globally'
complete -c bun -n '__fish_seen_subcommand_from link' -l cwd -d 'Set a specific cwd'
complete -c bun -n '__fish_seen_subcommand_from link' -l backend -d 'Platform-specific optimizations for installing dependencies. Possible values: "clonefile" ｟default｠, "hardlink", "symlink", "copyfile"'
complete -c bun -n '__fish_seen_subcommand_from link' -l registry -d 'Use a specific registry by default, overriding .npmrc, bunfig.toml and environment variables'
complete -c bun -n '__fish_seen_subcommand_from link' -l concurrent-scripts -d 'Maximum number of concurrent jobs for lifecycle scripts ｟default 5｠'
complete -c bun -n '__fish_seen_subcommand_from link' -l network-concurrency -d 'Maximum number of concurrent network requests ｟default 48｠'
complete -c bun -n '__fish_seen_subcommand_from link' -l save-text-lockfile -d 'Save a text-based lockfile'
complete -c bun -n '__fish_seen_subcommand_from link' -l omit -d "Exclude 'dev', 'optional', or 'peer' dependencies from install"
complete -c bun -n '__fish_seen_subcommand_from link' -l lockfile-only -d 'Generate a lockfile without installing dependencies'
complete -c bun -n '__fish_seen_subcommand_from link' -s h -l help -d 'Print this help menu'
complete -c bun -n '__fish_seen_subcommand_from unlink' -s c -l config -d 'Specify path to config file ｟bunfig.toml｠'
complete -c bun -n '__fish_seen_subcommand_from unlink' -s y -l yarn -d 'Write a yarn.lock file ｟yarn v1｠'
complete -c bun -n '__fish_seen_subcommand_from unlink' -s p -l production -d "Don't install devDependencies"
complete -c bun -n '__fish_seen_subcommand_from unlink' -l no-save -d "Don't update package.json or save a lockfile"
complete -c bun -n '__fish_seen_subcommand_from unlink' -l save -d 'Save to package.json ｟true by default｠'
complete -c bun -n '__fish_seen_subcommand_from unlink' -l ca -d 'Provide a Certificate Authority signing certificate'
complete -c bun -n '__fish_seen_subcommand_from unlink' -l cafile -d 'The same as '--ca', but is a file path to the certificate'
complete -c bun -n '__fish_seen_subcommand_from unlink' -l dry-run -d "Don't install anything"
complete -c bun -n '__fish_seen_subcommand_from unlink' -l frozen-lockfile -d 'Disallow changes to lockfile'
complete -c bun -n '__fish_seen_subcommand_from unlink' -s f -l force -d 'Always request the latest versions from the registry ﹠ reinstall all dependencies'
complete -c bun -n '__fish_seen_subcommand_from unlink' -l cache-dir -d 'Store ﹠ load cached data from a specific directory path'
complete -c bun -n '__fish_seen_subcommand_from unlink' -l no-cache -d 'Ignore manifest cache entirely'
complete -c bun -n '__fish_seen_subcommand_from unlink' -l silent -d "Don't log anything"
complete -c bun -n '__fish_seen_subcommand_from unlink' -l verbose -d 'Excessively verbose logging'
complete -c bun -n '__fish_seen_subcommand_from unlink' -l no-progress -d 'Disable the progress bar'
complete -c bun -n '__fish_seen_subcommand_from unlink' -l no-summary -d "Don't print a summary"
complete -c bun -n '__fish_seen_subcommand_from unlink' -l no-verify -d 'Skip verifying integrity of newly downloaded packages'
complete -c bun -n '__fish_seen_subcommand_from unlink' -l ignore-scripts -d "Skip lifecycle scripts in the project's package.json ｟dependency scripts are never run｠"
complete -c bun -n '__fish_seen_subcommand_from unlink' -l trust -d "Add to trustedDependencies in the project's package.json and install the package｟s｠"
complete -c bun -n '__fish_seen_subcommand_from unlink' -s g -l global -d 'Install globally'
complete -c bun -n '__fish_seen_subcommand_from unlink' -l cwd -d 'Set a specific cwd'
complete -c bun -n '__fish_seen_subcommand_from unlink' -l backend -d 'Platform-specific optimizations for installing dependencies. Possible values: "clonefile" ｟default｠, "hardlink", "symlink", "copyfile"'
complete -c bun -n '__fish_seen_subcommand_from unlink' -l registry -d 'Use a specific registry by default, overriding .npmrc, bunfig.toml and environment variables'
complete -c bun -n '__fish_seen_subcommand_from unlink' -l concurrent-scripts -d 'Maximum number of concurrent jobs for lifecycle scripts ｟default 5｠'
complete -c bun -n '__fish_seen_subcommand_from unlink' -l network-concurrency -d 'Maximum number of concurrent network requests ｟default 48｠'
complete -c bun -n '__fish_seen_subcommand_from unlink' -l save-text-lockfile -d 'Save a text-based lockfile'
complete -c bun -n '__fish_seen_subcommand_from unlink' -l omit -d "Exclude 'dev', 'optional', or 'peer' dependencies from install"
complete -c bun -n '__fish_seen_subcommand_from unlink' -l lockfile-only -d 'Generate a lockfile without installing dependencies'
complete -c bun -n '__fish_seen_subcommand_from unlink' -s h -l help -d 'Print this help menu'
complete -c bun -n '__fish_seen_subcommand_from publish' -s c -l config -d 'Specify path to config file ｟bunfig.toml｠'
complete -c bun -n '__fish_seen_subcommand_from publish' -s y -l yarn -d 'Write a yarn.lock file ｟yarn v1｠'
complete -c bun -n '__fish_seen_subcommand_from publish' -s p -l production -d "Don't install devDependencies"
complete -c bun -n '__fish_seen_subcommand_from publish' -l no-save -d "Don't update package.json or save a lockfile"
complete -c bun -n '__fish_seen_subcommand_from publish' -l save -d 'Save to package.json ｟true by default｠'
complete -c bun -n '__fish_seen_subcommand_from publish' -l ca -d 'Provide a Certificate Authority signing certificate'
complete -c bun -n '__fish_seen_subcommand_from publish' -l cafile -d 'The same as '--ca', but is a file path to the certificate'
complete -c bun -n '__fish_seen_subcommand_from publish' -l dry-run -d "Don't install anything"
complete -c bun -n '__fish_seen_subcommand_from publish' -l frozen-lockfile -d 'Disallow changes to lockfile'
complete -c bun -n '__fish_seen_subcommand_from publish' -s f -l force -d 'Always request the latest versions from the registry ﹠ reinstall all dependencies'
complete -c bun -n '__fish_seen_subcommand_from publish' -l cache-dir -d 'Store ﹠ load cached data from a specific directory path'
complete -c bun -n '__fish_seen_subcommand_from publish' -l no-cache -d 'Ignore manifest cache entirely'
complete -c bun -n '__fish_seen_subcommand_from publish' -l silent -d "Don't log anything"
complete -c bun -n '__fish_seen_subcommand_from publish' -l verbose -d 'Excessively verbose logging'
complete -c bun -n '__fish_seen_subcommand_from publish' -l no-progress -d 'Disable the progress bar'
complete -c bun -n '__fish_seen_subcommand_from publish' -l no-summary -d "Don't print a summary"
complete -c bun -n '__fish_seen_subcommand_from publish' -l no-verify -d 'Skip verifying integrity of newly downloaded packages'
complete -c bun -n '__fish_seen_subcommand_from publish' -l ignore-scripts -d "Skip lifecycle scripts in the project's package.json ｟dependency scripts are never run｠"
complete -c bun -n '__fish_seen_subcommand_from publish' -l trust -d "Add to trustedDependencies in the project's package.json and install the package｟s｠"
complete -c bun -n '__fish_seen_subcommand_from publish' -s g -l global -d 'Install globally'
complete -c bun -n '__fish_seen_subcommand_from publish' -l cwd -d 'Set a specific cwd'
complete -c bun -n '__fish_seen_subcommand_from publish' -l backend -d 'Platform-specific optimizations for installing dependencies. Possible values: "clonefile" ｟default｠, "hardlink", "symlink", "copyfile"'
complete -c bun -n '__fish_seen_subcommand_from publish' -l registry -d 'Use a specific registry by default, overriding .npmrc, bunfig.toml and environment variables'
complete -c bun -n '__fish_seen_subcommand_from publish' -l concurrent-scripts -d 'Maximum number of concurrent jobs for lifecycle scripts ｟default 5｠'
complete -c bun -n '__fish_seen_subcommand_from publish' -l network-concurrency -d 'Maximum number of concurrent network requests ｟default 48｠'
complete -c bun -n '__fish_seen_subcommand_from publish' -l save-text-lockfile -d 'Save a text-based lockfile'
complete -c bun -n '__fish_seen_subcommand_from publish' -l omit -d "Exclude 'dev', 'optional', or 'peer' dependencies from install"
complete -c bun -n '__fish_seen_subcommand_from publish' -l lockfile-only -d 'Generate a lockfile without installing dependencies'
complete -c bun -n '__fish_seen_subcommand_from publish' -s h -l help -d 'Print this help menu'
complete -c bun -n '__fish_seen_subcommand_from publish' -l access -d 'Set access level for scoped packages'
complete -c bun -n '__fish_seen_subcommand_from publish' -l tag -d 'Tag the release. Default is "latest"'
complete -c bun -n '__fish_seen_subcommand_from publish' -l otp -d 'Provide a one-time password for authentication'
complete -c bun -n '__fish_seen_subcommand_from publish' -l auth-type -d "Specify the type of one-time password authentication ｟default is 'web'｠"
complete -c bun -n '__fish_seen_subcommand_from publish' -l gzip-level -d 'Specify a custom compression level for gzip. Default is 9.'
complete -c bun -n '__fish_seen_subcommand_from patch' -s c -l config -d 'Specify path to config file ｟bunfig.toml｠'
complete -c bun -n '__fish_seen_subcommand_from patch' -s y -l yarn -d 'Write a yarn.lock file ｟yarn v1｠'
complete -c bun -n '__fish_seen_subcommand_from patch' -s p -l production -d "Don't install devDependencies"
complete -c bun -n '__fish_seen_subcommand_from patch' -l no-save -d "Don't update package.json or save a lockfile"
complete -c bun -n '__fish_seen_subcommand_from patch' -l save -d 'Save to package.json ｟true by default｠'
complete -c bun -n '__fish_seen_subcommand_from patch' -l ca -d 'Provide a Certificate Authority signing certificate'
complete -c bun -n '__fish_seen_subcommand_from patch' -l cafile -d 'The same as '--ca', but is a file path to the certificate'
complete -c bun -n '__fish_seen_subcommand_from patch' -l dry-run -d "Don't install anything"
complete -c bun -n '__fish_seen_subcommand_from patch' -l frozen-lockfile -d 'Disallow changes to lockfile'
complete -c bun -n '__fish_seen_subcommand_from patch' -s f -l force -d 'Always request the latest versions from the registry ﹠ reinstall all dependencies'
complete -c bun -n '__fish_seen_subcommand_from patch' -l cache-dir -d 'Store ﹠ load cached data from a specific directory path'
complete -c bun -n '__fish_seen_subcommand_from patch' -l no-cache -d 'Ignore manifest cache entirely'
complete -c bun -n '__fish_seen_subcommand_from patch' -l silent -d "Don't log anything"
complete -c bun -n '__fish_seen_subcommand_from patch' -l verbose -d 'Excessively verbose logging'
complete -c bun -n '__fish_seen_subcommand_from patch' -l no-progress -d 'Disable the progress bar'
complete -c bun -n '__fish_seen_subcommand_from patch' -l no-summary -d "Don't print a summary"
complete -c bun -n '__fish_seen_subcommand_from patch' -l no-verify -d 'Skip verifying integrity of newly downloaded packages'
complete -c bun -n '__fish_seen_subcommand_from patch' -l ignore-scripts -d "Skip lifecycle scripts in the project's package.json ｟dependency scripts are never run｠"
complete -c bun -n '__fish_seen_subcommand_from patch' -l trust -d "Add to trustedDependencies in the project's package.json and install the package｟s｠"
complete -c bun -n '__fish_seen_subcommand_from patch' -s g -l global -d 'Install globally'
complete -c bun -n '__fish_seen_subcommand_from patch' -l cwd -d 'Set a specific cwd'
complete -c bun -n '__fish_seen_subcommand_from patch' -l backend -d 'Platform-specific optimizations for installing dependencies. Possible values: "clonefile" ｟default｠, "hardlink", "symlink", "copyfile"'
complete -c bun -n '__fish_seen_subcommand_from patch' -l registry -d 'Use a specific registry by default, overriding .npmrc, bunfig.toml and environment variables'
complete -c bun -n '__fish_seen_subcommand_from patch' -l concurrent-scripts -d 'Maximum number of concurrent jobs for lifecycle scripts ｟default 5｠'
complete -c bun -n '__fish_seen_subcommand_from patch' -l network-concurrency -d 'Maximum number of concurrent network requests ｟default 48｠'
complete -c bun -n '__fish_seen_subcommand_from patch' -l save-text-lockfile -d 'Save a text-based lockfile'
complete -c bun -n '__fish_seen_subcommand_from patch' -l omit -d "Exclude 'dev', 'optional', or 'peer' dependencies from install"
complete -c bun -n '__fish_seen_subcommand_from patch' -l lockfile-only -d 'Generate a lockfile without installing dependencies'
complete -c bun -n '__fish_seen_subcommand_from patch' -s h -l help -d 'Print this help menu'
complete -c bun -n '__fish_seen_subcommand_from patch' -l commit -d 'Install a package containing modifications in 'dir''
complete -c bun -n '__fish_seen_subcommand_from patch' -l patches-dir -d 'The directory to put the patch file in ｟only if --commit is used｠'
complete -c bun -n '__fish_seen_subcommand_from build' -l production -d 'Set NODE_ENV=production and enable minification'
complete -c bun -n '__fish_seen_subcommand_from build' -l compile -d 'Generate a standalone Bun executable containing your bundled code. Implies --production'
complete -c bun -n '__fish_seen_subcommand_from build' -l bytecode -d 'Use a bytecode cache'
complete -c bun -n '__fish_seen_subcommand_from build' -l watch -d 'Automatically restart the process on file change'
complete -c bun -n '__fish_seen_subcommand_from build' -l no-clear-screen -d 'Disable clearing the terminal screen on reload when --watch is enabled'
complete -c bun -n '__fish_seen_subcommand_from build' -l target -d 'The intended execution environment for the bundle. "browser", "bun" or "node"'
complete -c bun -n '__fish_seen_subcommand_from build' -l outdir -d 'Default to "dist" if multiple files'
complete -c bun -n '__fish_seen_subcommand_from build' -l outfile -d 'Write to a file'
complete -c bun -n '__fish_seen_subcommand_from build' -l sourcemap -d "Build with sourcemaps - 'linked', 'inline', 'external', or 'none'"
complete -c bun -n '__fish_seen_subcommand_from build' -l banner -d 'Add a banner to the bundled output such as "use client"; for a bundle being used with RSCs'
complete -c bun -n '__fish_seen_subcommand_from build' -l footer -d 'Add a footer to the bundled output such as // built with bun!'
complete -c bun -n '__fish_seen_subcommand_from build' -l format -d 'Specifies the module format to build to. "esm", "cjs" and "iife" are supported. Defaults to "esm".'
complete -c bun -n '__fish_seen_subcommand_from build' -l root -d 'Root directory used for multiple entry points'
complete -c bun -n '__fish_seen_subcommand_from build' -l splitting -d 'Enable code splitting'
complete -c bun -n '__fish_seen_subcommand_from build' -l public-path -d 'A prefix to be appended to any import paths in bundled code'
complete -c bun -n '__fish_seen_subcommand_from build' -s e -l external -d 'Exclude module from transpilation ｟can use * wildcards｠. ex: -e react'
complete -c bun -n '__fish_seen_subcommand_from build' -l packages -d 'Add dependencies to bundle or keep them external. "external", "bundle" is supported. Defaults to "bundle".'
complete -c bun -n '__fish_seen_subcommand_from build' -l entry-naming -d 'Customize entry point filenames. Defaults to "[dir]/[name].[ext]"'
complete -c bun -n '__fish_seen_subcommand_from build' -l chunk-naming -d 'Customize chunk filenames. Defaults to "[name]-[hash].[ext]"'
complete -c bun -n '__fish_seen_subcommand_from build' -l asset-naming -d 'Customize asset filenames. Defaults to "[name]-[hash].[ext]"'
complete -c bun -n '__fish_seen_subcommand_from build' -l react-fast-refresh -d 'Enable React Fast Refresh transform ｟does not emit hot-module code, use this for testing｠'
complete -c bun -n '__fish_seen_subcommand_from build' -l no-bundle -d 'Transpile file only, do not bundle'
complete -c bun -n '__fish_seen_subcommand_from build' -l emit-dce-annotations -d 'Re-emit DCE annotations in bundles. Enabled by default unless --minify-whitespace is passed.'
complete -c bun -n '__fish_seen_subcommand_from build' -l minify -d 'Enable all minification flags'
complete -c bun -n '__fish_seen_subcommand_from build' -l minify-syntax -d 'Minify syntax and inline data'
complete -c bun -n '__fish_seen_subcommand_from build' -l minify-whitespace -d 'Minify whitespace'
complete -c bun -n '__fish_seen_subcommand_from build' -l minify-identifiers -d 'Minify identifiers'
complete -c bun -n '__fish_seen_subcommand_from build' -l css-chunking -d 'Chunk CSS files together to reduce duplicated CSS loaded in a browser. Only has an effect when multiple entrypoints import CSS'
complete -c bun -n '__fish_seen_subcommand_from build' -l conditions -d 'Pass custom conditions to resolve'
complete -c bun -n '__fish_seen_subcommand_from build' -l app -d '(EXPERIMENTAL｠ Build a web app for production using Bun Bake.'
complete -c bun -n '__fish_seen_subcommand_from build' -l server-components -d '(EXPERIMENTAL｠ Enable server components'
complete -c bun -n '__fish_seen_subcommand_from build' -l env -d "Inline environment variables into the bundle as process.env.\${name}. Defaults to 'disable'. To inline environment variables matching a prefix, use my prefix like 'FOO_PUBLIC_*'."
complete -c bun -n '__fish_seen_subcommand_from build' -l windows-hide-console -d 'When using --compile targeting Windows, prevent a Command prompt from opening alongside the executable'
complete -c bun -n '__fish_seen_subcommand_from build' -l windows-icon -d 'When using --compile targeting Windows, assign an executable icon'
complete -c bun -n '__fish_seen_subcommand_from init' -l help -d 'Print this menu'
complete -c bun -n '__fish_seen_subcommand_from init' -s y -l yes -d 'Accept all default options'
complete -c bun -n '__fish_seen_subcommand_from init' -s m -l minimal -d 'Only initialize type definitions'


    complete -c bun -n "__fish_seen_subcommand_from pm" -xa "pack" -d "Create a tarball of the current workspace"
    complete -c bun -n "__fish_seen_subcommand_from pm pack" -l dry-run -d "Do everything except writing the tarball to disk"
    complete -c bun -n "__fish_seen_subcommand_from pm pack" -l destination -d "Directory to save the tarball"
    complete -c bun -n "__fish_seen_subcommand_from pm pack" -l filename -d "Name of the tarball"
    complete -c bun -n "__fish_seen_subcommand_from pm pack" -l ignore-scripts -d "Don't run pre/postpack and prepare scripts"
    complete -c bun -n "__fish_seen_subcommand_from pm pack" -l gzip-level -d "Custom compression level for gzip (0-9)"

    complete -c bun -n "__fish_seen_subcommand_from pm" -xa "bin" -d "Print the path to bin folder"
    complete -c bun -n "__fish_seen_subcommand_from pm bin" -s g -d "Print the global path to bin folder"

    complete -c bun -n "__fish_seen_subcommand_from pm" -xa "ls" -d "List the dependency tree"
    complete -c bun -n "__fish_seen_subcommand_from pm ls" -l all -d "List the entire dependency tree"

    complete -c bun -n "__fish_seen_subcommand_from pm" -xa "whoami" -d "Print the current npm username"

    complete -c bun -n "__fish_seen_subcommand_from pm" -xa "view" -d "View package metadata from the registry"

    complete -c bun -n "__fish_seen_subcommand_from pm" -xa "hash" -d "Generate & print the hash of the current lockfile"
    complete -c bun -n "__fish_seen_subcommand_from pm" -xa "hash-string" -d "Print the string used to hash the lockfile"
    complete -c bun -n "__fish_seen_subcommand_from pm" -xa "hash-print" -d "Print the hash stored in the current lockfile"

    complete -c bun -n "__fish_seen_subcommand_from pm" -xa "audit" -d "Check installed packages for vulnerabilities"

    complete -c bun -n "__fish_seen_subcommand_from pm" -xa "cache" -d "Print the path to the cache folder"
    complete -c bun -n "__fish_seen_subcommand_from pm" -xa "cache rm" -d "Clear the cache"

    complete -c bun -n "__fish_seen_subcommand_from pm" -xa "migrate" -d "Migrate another package manager's lockfile"

    complete -c bun -n "__fish_seen_subcommand_from pm" -xa "untrusted" -d "Print current untrusted dependencies with scripts"

    complete -c bun -n "__fish_seen_subcommand_from pm" -xa "trust" -d "Run scripts for untrusted dependencies"
    complete -c bun -n "__fish_seen_subcommand_from pm trust" -l all -d "Trust all untrusted dependencies"

    complete -c bun -n "__fish_seen_subcommand_from pm" -xa "default-trusted" -d "Print the default trusted dependencies list"