complete -c "bun" -l "watch" -d "Automatically restart the process on file change" # global
complete -c "bun" -l "hot" -d "Enable auto reload in the Bun runtime, test runner, or bundler" # global
complete -c "bun" -l "no-clear-screen" -d "Disable clearing the terminal screen on reload when --hot or --watch is enabled" # global
complete -c "bun" -l "smol" -d "Use less memory, but run garbage collection more often" # global
complete -c "bun" -s "r" -l "preload" -d "Import a module before other modules are loaded" # global
complete -c "bun" -l "require" -d "Alias of --preload, for Node.js compatibility" # global
complete -c "bun" -l "import" -d "Alias of --preload, for Node.js compatibility" # global
complete -c "bun" -l "inspect" -d "Activate Bun's debugger" # global
complete -c "bun" -l "inspect-wait" -d "Activate Bun's debugger, wait for a connection before executing" # global
complete -c "bun" -l "inspect-brk" -d "Activate Bun's debugger, set breakpoint on first line of code and wait" # global
complete -c "bun" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # global
complete -c "bun" -l "no-install" -d "Disable auto install in the Bun runtime" # global
complete -c "bun" -l "install" -d "Configure auto-install behavior" -xa "auto fallback force" # global
complete -c "bun" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # global
complete -c "bun" -s "e" -l "eval" -d "Evaluate argument as a script" # global
complete -c "bun" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # global
complete -c "bun" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # global
complete -c "bun" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # global
complete -c "bun" -l "port" -d "Set the default port for Bun.serve" # global
complete -c "bun" -l "conditions" -d "Pass custom conditions to resolve" # global
complete -c "bun" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # global
complete -c "bun" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # global
complete -c "bun" -l "dns-result-order" -d "Set the default order of DNS lookup results" -xa "verbatim ipv4first ipv6first" # global
complete -c "bun" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # global
complete -c "bun" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # global
complete -c "bun" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # global
complete -c "bun" -l "title" -d "Set the process title" # global
complete -c "bun" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # global
complete -c "bun" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # global
complete -c "bun" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # global
complete -c "bun" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # global
complete -c "bun" -l "unhandled-rejections" -d "One of \"strict\", \"throw\", \"warn\", \"none\", or \"warn-with-error-code\"" -xa "strict throw warn none warn-with-error-code" # global
complete -c "bun" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # global
complete -c "bun" -l "silent" -d "Don't print the script command" # global
complete -c "bun" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # global
complete -c "bun" -s "v" -l "version" -d "Print version and exit" # global
complete -c "bun" -l "revision" -d "Print version with revision and exit" # global
complete -c "bun" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # global
complete -c "bun" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # global
complete -c "bun" -l "shell" -d "Control the shell used for package.json scripts. Supports either 'bun' or 'system'" -xa "bun system" # global
complete -c "bun" -l "env-file" -d "Load environment variables from the specified file(s)" # global
complete -c "bun" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # global
complete -c "bun" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # global
complete -c "bun" -s "h" -l "help" -d "Display this menu and exit" # global
complete -f -c "bun" -n "__fish_use_subcommand" -a "run" -d "Execute a file with Bun" # sub
complete -f -c "bun" -n "__fish_use_subcommand" -a "lint" -d "Run a package.json script" # sub
complete -f -c "bun" -n "__fish_use_subcommand" -a "test" -d "Run unit tests with Bun" # sub
complete -f -c "bun" -n "__fish_use_subcommand" -a "xnext" -d "Execute a package binary (CLI), installing if needed (bunx)" # sub
complete -f -c "bun" -n "__fish_use_subcommand" -a "repl" -d "Start a REPL session with Bun" # sub
complete -f -c "bun" -n "__fish_use_subcommand" -a "exec" -d "Run a shell script directly with Bun" # sub
complete -f -c "bun" -n "__fish_use_subcommand" -a "install" -d "Install dependencies for a package.json (bun i)" # sub
complete -f -c "bun" -n "__fish_use_subcommand" -a "add" -d "Add a dependency to package.json (bun a)" # sub
complete -f -c "bun" -n "__fish_use_subcommand" -a "remove" -d "Remove a dependency from package.json (bun rm)" # sub
complete -f -c "bun" -n "__fish_use_subcommand" -a "update" -d "Update outdated dependencies" # sub
complete -f -c "bun" -n "__fish_use_subcommand" -a "audit" -d "Check installed packages for vulnerabilities" # sub
complete -f -c "bun" -n "__fish_use_subcommand" -a "outdated" -d "Display latest versions of outdated dependencies" # sub
complete -f -c "bun" -n "__fish_use_subcommand" -a "link" -d "Register or link a local npm package" # sub
complete -f -c "bun" -n "__fish_use_subcommand" -a "unlink" -d "Unregister a local npm package" # sub
complete -f -c "bun" -n "__fish_use_subcommand" -a "publish" -d "Publish a package to the npm registry" # sub
complete -f -c "bun" -n "__fish_use_subcommand" -a "patch" -d "Prepare a package for patching" # sub
complete -f -c "bun" -n "__fish_use_subcommand" -a "pm" -d "Additional package management utilities" # sub
complete -f -c "bun" -n "__fish_use_subcommand" -a "info" -d "Display package metadata from the registry" # sub
complete -f -c "bun" -n "__fish_use_subcommand" -a "build" -d "Bundle TypeScript & JavaScript into a single file" # sub
complete -f -c "bun" -n "__fish_use_subcommand" -a "init" -d "Start an empty Bun project from a built-in template" # sub
complete -f -c "bun" -n "__fish_use_subcommand" -a "create" -d "Create a new project from a template (bun c)" # sub
complete -f -c "bun" -n "__fish_use_subcommand" -a "upgrade" -d "Upgrade to latest version of Bun." # sub
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "watch" -d "Automatically restart the process on file change" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "hot" -d "Enable auto reload in the Bun runtime, test runner, or bundler" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "no-clear-screen" -d "Disable clearing the terminal screen on reload when --hot or --watch is enabled" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "smol" -d "Use less memory, but run garbage collection more often" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -s "r" -l "preload" -d "Import a module before other modules are loaded" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "require" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "import" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "inspect" -d "Activate Bun's debugger" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "inspect-wait" -d "Activate Bun's debugger, wait for a connection before executing" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "inspect-brk" -d "Activate Bun's debugger, set breakpoint on first line of code and wait" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "install" -d "Configure auto-install behavior" -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "dns-result-order" -d "Set the default order of DNS lookup results" -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "unhandled-rejections" -d "One of \"strict\", \"throw\", \"warn\", \"none\", or \"warn-with-error-code\"" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -s "v" -l "version" -d "Print version and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "shell" -d "Control the shell used for package.json scripts. Supports either 'bun' or 'system'" -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -s "h" -l "help" -d "Display this menu and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -l "watch" -d "Automatically restart the process on file change" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -l "hot" -d "Enable auto reload in the Bun runtime, test runner, or bundler" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -l "no-clear-screen" -d "Disable clearing the terminal screen on reload when --hot or --watch is enabled" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -l "smol" -d "Use less memory, but run garbage collection more often" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -s "r" -l "preload" -d "Import a module before other modules are loaded" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -l "require" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -l "import" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -l "inspect" -d "Activate Bun's debugger" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -l "inspect-wait" -d "Activate Bun's debugger, wait for a connection before executing" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -l "inspect-brk" -d "Activate Bun's debugger, set breakpoint on first line of code and wait" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -l "install" -d "Configure auto-install behavior" -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -l "dns-result-order" -d "Set the default order of DNS lookup results" -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -l "unhandled-rejections" -d "One of \"strict\", \"throw\", \"warn\", \"none\", or \"warn-with-error-code\"" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -s "v" -l "version" -d "Print version and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -l "shell" -d "Control the shell used for package.json scripts. Supports either 'bun' or 'system'" -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'lint'" -s "h" -l "help" -d "Display this menu and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "watch" -d "Automatically restart the process on file change" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "hot" -d "Enable auto reload in the Bun runtime, test runner, or bundler" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "no-clear-screen" -d "Disable clearing the terminal screen on reload when --hot or --watch is enabled" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "smol" -d "Use less memory, but run garbage collection more often" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -s "r" -l "preload" -d "Import a module before other modules are loaded" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "require" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "import" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "inspect" -d "Activate Bun's debugger" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "inspect-wait" -d "Activate Bun's debugger, wait for a connection before executing" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "inspect-brk" -d "Activate Bun's debugger, set breakpoint on first line of code and wait" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "install" -d "Configure auto-install behavior" -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "dns-result-order" -d "Set the default order of DNS lookup results" -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "unhandled-rejections" -d "One of \"strict\", \"throw\", \"warn\", \"none\", or \"warn-with-error-code\"" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -s "v" -l "version" -d "Print version and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "shell" -d "Control the shell used for package.json scripts. Supports either 'bun' or 'system'" -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -s "h" -l "help" -d "Display this menu and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -l "watch" -d "Automatically restart the process on file change" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -l "hot" -d "Enable auto reload in the Bun runtime, test runner, or bundler" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -l "no-clear-screen" -d "Disable clearing the terminal screen on reload when --hot or --watch is enabled" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -l "smol" -d "Use less memory, but run garbage collection more often" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -s "r" -l "preload" -d "Import a module before other modules are loaded" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -l "require" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -l "import" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -l "inspect" -d "Activate Bun's debugger" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -l "inspect-wait" -d "Activate Bun's debugger, wait for a connection before executing" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -l "inspect-brk" -d "Activate Bun's debugger, set breakpoint on first line of code and wait" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -l "install" -d "Configure auto-install behavior" -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -l "dns-result-order" -d "Set the default order of DNS lookup results" -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -l "unhandled-rejections" -d "One of \"strict\", \"throw\", \"warn\", \"none\", or \"warn-with-error-code\"" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -s "v" -l "version" -d "Print version and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -l "shell" -d "Control the shell used for package.json scripts. Supports either 'bun' or 'system'" -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'xnext'" -s "h" -l "help" -d "Display this menu and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "watch" -d "Automatically restart the process on file change" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "hot" -d "Enable auto reload in the Bun runtime, test runner, or bundler" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "no-clear-screen" -d "Disable clearing the terminal screen on reload when --hot or --watch is enabled" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "smol" -d "Use less memory, but run garbage collection more often" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -s "r" -l "preload" -d "Import a module before other modules are loaded" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "require" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "import" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "inspect" -d "Activate Bun's debugger" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "inspect-wait" -d "Activate Bun's debugger, wait for a connection before executing" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "inspect-brk" -d "Activate Bun's debugger, set breakpoint on first line of code and wait" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "install" -d "Configure auto-install behavior" -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "dns-result-order" -d "Set the default order of DNS lookup results" -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "unhandled-rejections" -d "One of \"strict\", \"throw\", \"warn\", \"none\", or \"warn-with-error-code\"" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -s "v" -l "version" -d "Print version and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "shell" -d "Control the shell used for package.json scripts. Supports either 'bun' or 'system'" -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -s "h" -l "help" -d "Display this menu and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "watch" -d "Automatically restart the process on file change" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "hot" -d "Enable auto reload in the Bun runtime, test runner, or bundler" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "no-clear-screen" -d "Disable clearing the terminal screen on reload when --hot or --watch is enabled" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "smol" -d "Use less memory, but run garbage collection more often" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -s "r" -l "preload" -d "Import a module before other modules are loaded" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "require" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "import" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "inspect" -d "Activate Bun's debugger" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "inspect-wait" -d "Activate Bun's debugger, wait for a connection before executing" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "inspect-brk" -d "Activate Bun's debugger, set breakpoint on first line of code and wait" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "install" -d "Configure auto-install behavior" -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "dns-result-order" -d "Set the default order of DNS lookup results" -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "unhandled-rejections" -d "One of \"strict\", \"throw\", \"warn\", \"none\", or \"warn-with-error-code\"" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -s "v" -l "version" -d "Print version and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "shell" -d "Control the shell used for package.json scripts. Supports either 'bun' or 'system'" -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -s "h" -l "help" -d "Display this menu and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "watch" -d "Automatically restart the process on file change" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "hot" -d "Enable auto reload in the Bun runtime, test runner, or bundler" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "no-clear-screen" -d "Disable clearing the terminal screen on reload when --hot or --watch is enabled" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "smol" -d "Use less memory, but run garbage collection more often" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -s "r" -l "preload" -d "Import a module before other modules are loaded" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "require" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "import" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "inspect" -d "Activate Bun's debugger" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "inspect-wait" -d "Activate Bun's debugger, wait for a connection before executing" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "inspect-brk" -d "Activate Bun's debugger, set breakpoint on first line of code and wait" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "install" -d "Configure auto-install behavior" -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "dns-result-order" -d "Set the default order of DNS lookup results" -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "unhandled-rejections" -d "One of \"strict\", \"throw\", \"warn\", \"none\", or \"warn-with-error-code\"" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -s "v" -l "version" -d "Print version and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "shell" -d "Control the shell used for package.json scripts. Supports either 'bun' or 'system'" -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -s "h" -l "help" -d "Display this menu and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "watch" -d "Automatically restart the process on file change" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "hot" -d "Enable auto reload in the Bun runtime, test runner, or bundler" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "no-clear-screen" -d "Disable clearing the terminal screen on reload when --hot or --watch is enabled" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "smol" -d "Use less memory, but run garbage collection more often" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -s "r" -l "preload" -d "Import a module before other modules are loaded" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "require" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "import" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "inspect" -d "Activate Bun's debugger" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "inspect-wait" -d "Activate Bun's debugger, wait for a connection before executing" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "inspect-brk" -d "Activate Bun's debugger, set breakpoint on first line of code and wait" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "install" -d "Configure auto-install behavior" -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "dns-result-order" -d "Set the default order of DNS lookup results" -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "unhandled-rejections" -d "One of \"strict\", \"throw\", \"warn\", \"none\", or \"warn-with-error-code\"" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -s "v" -l "version" -d "Print version and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "shell" -d "Control the shell used for package.json scripts. Supports either 'bun' or 'system'" -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -s "h" -l "help" -d "Display this menu and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "watch" -d "Automatically restart the process on file change" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "hot" -d "Enable auto reload in the Bun runtime, test runner, or bundler" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "no-clear-screen" -d "Disable clearing the terminal screen on reload when --hot or --watch is enabled" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "smol" -d "Use less memory, but run garbage collection more often" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -s "r" -l "preload" -d "Import a module before other modules are loaded" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "require" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "import" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "inspect" -d "Activate Bun's debugger" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "inspect-wait" -d "Activate Bun's debugger, wait for a connection before executing" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "inspect-brk" -d "Activate Bun's debugger, set breakpoint on first line of code and wait" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "install" -d "Configure auto-install behavior" -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "dns-result-order" -d "Set the default order of DNS lookup results" -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "unhandled-rejections" -d "One of \"strict\", \"throw\", \"warn\", \"none\", or \"warn-with-error-code\"" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -s "v" -l "version" -d "Print version and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "shell" -d "Control the shell used for package.json scripts. Supports either 'bun' or 'system'" -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -s "h" -l "help" -d "Display this menu and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "watch" -d "Automatically restart the process on file change" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "hot" -d "Enable auto reload in the Bun runtime, test runner, or bundler" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "no-clear-screen" -d "Disable clearing the terminal screen on reload when --hot or --watch is enabled" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "smol" -d "Use less memory, but run garbage collection more often" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -s "r" -l "preload" -d "Import a module before other modules are loaded" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "require" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "import" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "inspect" -d "Activate Bun's debugger" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "inspect-wait" -d "Activate Bun's debugger, wait for a connection before executing" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "inspect-brk" -d "Activate Bun's debugger, set breakpoint on first line of code and wait" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "install" -d "Configure auto-install behavior" -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "dns-result-order" -d "Set the default order of DNS lookup results" -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "unhandled-rejections" -d "One of \"strict\", \"throw\", \"warn\", \"none\", or \"warn-with-error-code\"" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -s "v" -l "version" -d "Print version and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "shell" -d "Control the shell used for package.json scripts. Supports either 'bun' or 'system'" -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -s "h" -l "help" -d "Display this menu and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "watch" -d "Automatically restart the process on file change" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "hot" -d "Enable auto reload in the Bun runtime, test runner, or bundler" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "no-clear-screen" -d "Disable clearing the terminal screen on reload when --hot or --watch is enabled" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "smol" -d "Use less memory, but run garbage collection more often" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -s "r" -l "preload" -d "Import a module before other modules are loaded" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "require" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "import" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "inspect" -d "Activate Bun's debugger" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "inspect-wait" -d "Activate Bun's debugger, wait for a connection before executing" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "inspect-brk" -d "Activate Bun's debugger, set breakpoint on first line of code and wait" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "install" -d "Configure auto-install behavior" -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "dns-result-order" -d "Set the default order of DNS lookup results" -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "unhandled-rejections" -d "One of \"strict\", \"throw\", \"warn\", \"none\", or \"warn-with-error-code\"" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -s "v" -l "version" -d "Print version and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "shell" -d "Control the shell used for package.json scripts. Supports either 'bun' or 'system'" -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -s "h" -l "help" -d "Display this menu and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "watch" -d "Automatically restart the process on file change" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "hot" -d "Enable auto reload in the Bun runtime, test runner, or bundler" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "no-clear-screen" -d "Disable clearing the terminal screen on reload when --hot or --watch is enabled" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "smol" -d "Use less memory, but run garbage collection more often" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -s "r" -l "preload" -d "Import a module before other modules are loaded" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "require" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "import" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "inspect" -d "Activate Bun's debugger" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "inspect-wait" -d "Activate Bun's debugger, wait for a connection before executing" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "inspect-brk" -d "Activate Bun's debugger, set breakpoint on first line of code and wait" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "install" -d "Configure auto-install behavior" -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "dns-result-order" -d "Set the default order of DNS lookup results" -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "unhandled-rejections" -d "One of \"strict\", \"throw\", \"warn\", \"none\", or \"warn-with-error-code\"" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -s "v" -l "version" -d "Print version and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "shell" -d "Control the shell used for package.json scripts. Supports either 'bun' or 'system'" -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -s "h" -l "help" -d "Display this menu and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "watch" -d "Automatically restart the process on file change" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "hot" -d "Enable auto reload in the Bun runtime, test runner, or bundler" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "no-clear-screen" -d "Disable clearing the terminal screen on reload when --hot or --watch is enabled" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "smol" -d "Use less memory, but run garbage collection more often" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -s "r" -l "preload" -d "Import a module before other modules are loaded" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "require" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "import" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "inspect" -d "Activate Bun's debugger" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "inspect-wait" -d "Activate Bun's debugger, wait for a connection before executing" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "inspect-brk" -d "Activate Bun's debugger, set breakpoint on first line of code and wait" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "install" -d "Configure auto-install behavior" -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "dns-result-order" -d "Set the default order of DNS lookup results" -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "unhandled-rejections" -d "One of \"strict\", \"throw\", \"warn\", \"none\", or \"warn-with-error-code\"" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -s "v" -l "version" -d "Print version and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "shell" -d "Control the shell used for package.json scripts. Supports either 'bun' or 'system'" -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -s "h" -l "help" -d "Display this menu and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "watch" -d "Automatically restart the process on file change" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "hot" -d "Enable auto reload in the Bun runtime, test runner, or bundler" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "no-clear-screen" -d "Disable clearing the terminal screen on reload when --hot or --watch is enabled" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "smol" -d "Use less memory, but run garbage collection more often" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -s "r" -l "preload" -d "Import a module before other modules are loaded" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "require" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "import" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "inspect" -d "Activate Bun's debugger" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "inspect-wait" -d "Activate Bun's debugger, wait for a connection before executing" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "inspect-brk" -d "Activate Bun's debugger, set breakpoint on first line of code and wait" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "install" -d "Configure auto-install behavior" -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "dns-result-order" -d "Set the default order of DNS lookup results" -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "unhandled-rejections" -d "One of \"strict\", \"throw\", \"warn\", \"none\", or \"warn-with-error-code\"" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -s "v" -l "version" -d "Print version and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "shell" -d "Control the shell used for package.json scripts. Supports either 'bun' or 'system'" -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -s "h" -l "help" -d "Display this menu and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "watch" -d "Automatically restart the process on file change" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "hot" -d "Enable auto reload in the Bun runtime, test runner, or bundler" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "no-clear-screen" -d "Disable clearing the terminal screen on reload when --hot or --watch is enabled" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "smol" -d "Use less memory, but run garbage collection more often" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -s "r" -l "preload" -d "Import a module before other modules are loaded" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "require" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "import" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "inspect" -d "Activate Bun's debugger" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "inspect-wait" -d "Activate Bun's debugger, wait for a connection before executing" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "inspect-brk" -d "Activate Bun's debugger, set breakpoint on first line of code and wait" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "install" -d "Configure auto-install behavior" -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "dns-result-order" -d "Set the default order of DNS lookup results" -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "unhandled-rejections" -d "One of \"strict\", \"throw\", \"warn\", \"none\", or \"warn-with-error-code\"" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -s "v" -l "version" -d "Print version and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "shell" -d "Control the shell used for package.json scripts. Supports either 'bun' or 'system'" -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -s "h" -l "help" -d "Display this menu and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "watch" -d "Automatically restart the process on file change" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "hot" -d "Enable auto reload in the Bun runtime, test runner, or bundler" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "no-clear-screen" -d "Disable clearing the terminal screen on reload when --hot or --watch is enabled" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "smol" -d "Use less memory, but run garbage collection more often" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -s "r" -l "preload" -d "Import a module before other modules are loaded" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "require" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "import" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "inspect" -d "Activate Bun's debugger" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "inspect-wait" -d "Activate Bun's debugger, wait for a connection before executing" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "inspect-brk" -d "Activate Bun's debugger, set breakpoint on first line of code and wait" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "install" -d "Configure auto-install behavior" -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "dns-result-order" -d "Set the default order of DNS lookup results" -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "unhandled-rejections" -d "One of \"strict\", \"throw\", \"warn\", \"none\", or \"warn-with-error-code\"" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -s "v" -l "version" -d "Print version and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "shell" -d "Control the shell used for package.json scripts. Supports either 'bun' or 'system'" -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -s "h" -l "help" -d "Display this menu and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "watch" -d "Automatically restart the process on file change" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "hot" -d "Enable auto reload in the Bun runtime, test runner, or bundler" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "no-clear-screen" -d "Disable clearing the terminal screen on reload when --hot or --watch is enabled" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "smol" -d "Use less memory, but run garbage collection more often" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -s "r" -l "preload" -d "Import a module before other modules are loaded" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "require" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "import" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "inspect" -d "Activate Bun's debugger" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "inspect-wait" -d "Activate Bun's debugger, wait for a connection before executing" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "inspect-brk" -d "Activate Bun's debugger, set breakpoint on first line of code and wait" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "install" -d "Configure auto-install behavior" -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "dns-result-order" -d "Set the default order of DNS lookup results" -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "unhandled-rejections" -d "One of \"strict\", \"throw\", \"warn\", \"none\", or \"warn-with-error-code\"" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -s "v" -l "version" -d "Print version and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "shell" -d "Control the shell used for package.json scripts. Supports either 'bun' or 'system'" -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -s "h" -l "help" -d "Display this menu and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "watch" -d "Automatically restart the process on file change" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "hot" -d "Enable auto reload in the Bun runtime, test runner, or bundler" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "no-clear-screen" -d "Disable clearing the terminal screen on reload when --hot or --watch is enabled" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "smol" -d "Use less memory, but run garbage collection more often" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -s "r" -l "preload" -d "Import a module before other modules are loaded" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "require" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "import" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "inspect" -d "Activate Bun's debugger" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "inspect-wait" -d "Activate Bun's debugger, wait for a connection before executing" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "inspect-brk" -d "Activate Bun's debugger, set breakpoint on first line of code and wait" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "install" -d "Configure auto-install behavior" -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "dns-result-order" -d "Set the default order of DNS lookup results" -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "unhandled-rejections" -d "One of \"strict\", \"throw\", \"warn\", \"none\", or \"warn-with-error-code\"" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -s "v" -l "version" -d "Print version and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "shell" -d "Control the shell used for package.json scripts. Supports either 'bun' or 'system'" -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -s "h" -l "help" -d "Display this menu and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "watch" -d "Automatically restart the process on file change" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "hot" -d "Enable auto reload in the Bun runtime, test runner, or bundler" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "no-clear-screen" -d "Disable clearing the terminal screen on reload when --hot or --watch is enabled" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "smol" -d "Use less memory, but run garbage collection more often" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -s "r" -l "preload" -d "Import a module before other modules are loaded" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "require" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "import" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "inspect" -d "Activate Bun's debugger" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "inspect-wait" -d "Activate Bun's debugger, wait for a connection before executing" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "inspect-brk" -d "Activate Bun's debugger, set breakpoint on first line of code and wait" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "install" -d "Configure auto-install behavior" -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "dns-result-order" -d "Set the default order of DNS lookup results" -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "unhandled-rejections" -d "One of \"strict\", \"throw\", \"warn\", \"none\", or \"warn-with-error-code\"" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -s "v" -l "version" -d "Print version and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "shell" -d "Control the shell used for package.json scripts. Supports either 'bun' or 'system'" -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -s "h" -l "help" -d "Display this menu and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "watch" -d "Automatically restart the process on file change" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "hot" -d "Enable auto reload in the Bun runtime, test runner, or bundler" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "no-clear-screen" -d "Disable clearing the terminal screen on reload when --hot or --watch is enabled" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "smol" -d "Use less memory, but run garbage collection more often" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -s "r" -l "preload" -d "Import a module before other modules are loaded" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "require" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "import" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "inspect" -d "Activate Bun's debugger" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "inspect-wait" -d "Activate Bun's debugger, wait for a connection before executing" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "inspect-brk" -d "Activate Bun's debugger, set breakpoint on first line of code and wait" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "install" -d "Configure auto-install behavior" -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "dns-result-order" -d "Set the default order of DNS lookup results" -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "unhandled-rejections" -d "One of \"strict\", \"throw\", \"warn\", \"none\", or \"warn-with-error-code\"" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -s "v" -l "version" -d "Print version and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "shell" -d "Control the shell used for package.json scripts. Supports either 'bun' or 'system'" -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -s "h" -l "help" -d "Display this menu and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "watch" -d "Automatically restart the process on file change" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "hot" -d "Enable auto reload in the Bun runtime, test runner, or bundler" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "no-clear-screen" -d "Disable clearing the terminal screen on reload when --hot or --watch is enabled" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "smol" -d "Use less memory, but run garbage collection more often" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -s "r" -l "preload" -d "Import a module before other modules are loaded" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "require" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "import" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "inspect" -d "Activate Bun's debugger" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "inspect-wait" -d "Activate Bun's debugger, wait for a connection before executing" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "inspect-brk" -d "Activate Bun's debugger, set breakpoint on first line of code and wait" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "install" -d "Configure auto-install behavior" -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "dns-result-order" -d "Set the default order of DNS lookup results" -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "unhandled-rejections" -d "One of \"strict\", \"throw\", \"warn\", \"none\", or \"warn-with-error-code\"" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -s "v" -l "version" -d "Print version and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "shell" -d "Control the shell used for package.json scripts. Supports either 'bun' or 'system'" -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -s "h" -l "help" -d "Display this menu and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "watch" -d "Automatically restart the process on file change" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "hot" -d "Enable auto reload in the Bun runtime, test runner, or bundler" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "no-clear-screen" -d "Disable clearing the terminal screen on reload when --hot or --watch is enabled" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "smol" -d "Use less memory, but run garbage collection more often" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -s "r" -l "preload" -d "Import a module before other modules are loaded" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "require" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "import" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "inspect" -d "Activate Bun's debugger" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "inspect-wait" -d "Activate Bun's debugger, wait for a connection before executing" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "inspect-brk" -d "Activate Bun's debugger, set breakpoint on first line of code and wait" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "install" -d "Configure auto-install behavior" -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "dns-result-order" -d "Set the default order of DNS lookup results" -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "unhandled-rejections" -d "One of \"strict\", \"throw\", \"warn\", \"none\", or \"warn-with-error-code\"" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -s "v" -l "version" -d "Print version and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "shell" -d "Control the shell used for package.json scripts. Supports either 'bun' or 'system'" -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -s "h" -l "help" -d "Display this menu and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "silent" -d "Don't print the script command" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "elide-lines" -d "Number of lines of script output shown when using --filter" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "shell" -d "Control the shell used for package.json scripts. Supports either 'bun' or 'system'" -xa "bun system" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "watch" -d "Automatically restart the process on file change" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "hot" -d "Enable auto reload in the Bun runtime, test runner, or bundler" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "no-clear-screen" -d "Disable clearing the terminal screen on reload when --hot or --watch is enabled" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "smol" -d "Use less memory, but run garbage collection more often" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -s "r" -l "preload" -d "Import a module before other modules are loaded" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "require" -d "Alias of --preload, for Node.js compatibility" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "import" -d "Alias of --preload, for Node.js compatibility" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "inspect" -d "Activate Bun's debugger" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "inspect-wait" -d "Activate Bun's debugger, wait for a connection before executing" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "inspect-brk" -d "Activate Bun's debugger, set breakpoint on first line of code and wait" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "no-install" -d "Disable auto install in the Bun runtime" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "install" -d "Configure auto-install behavior" -xa "auto fallback force" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -s "e" -l "eval" -d "Evaluate argument as a script" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "port" -d "Set the default port for Bun.serve" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "conditions" -d "Pass custom conditions to resolve" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "dns-result-order" -d "Set the default order of DNS lookup results" -xa "verbatim ipv4first ipv6first" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "title" -d "Set the process title" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "unhandled-rejections" -d "One of \"strict\", \"throw\", \"warn\", \"none\", or \"warn-with-error-code\"" -xa "strict throw warn none warn-with-error-code" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "console-depth" -d "Set the default depth for console.log object inspection" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "main-fields" -d "Main fields to lookup in package.json. Defaults to --target dependent" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "preserve-symlinks" -d "Preserve symlinks when resolving files" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "preserve-symlinks-main" -d "Preserve symlinks when resolving the main entry point" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "extension-order" -d "Defaults to: .tsx,.ts,.jsx,.js,.json" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "tsconfig-override" -d "Specify custom tsconfig.json. Default <d>＄cwd<r>/tsconfig.json" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -s "d" -l "define" -d "Substitute K:V while parsing, e.g. --define process.env.NODE_ENV:\"development\". Values are parsed as JSON." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "drop" -d "Remove function calls, e.g. --drop=console removes all console.* calls." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -s "l" -l "loader" -d "Parse files with .ext:loader, e.g. --loader .js:jsx. Valid loaders: js, jsx, ts, tsx, json, toml, text, file, wasm, napi" -xa "js jsx ts tsx json toml text file wasm napi" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "no-macros" -d "Disable macros from being executed in the bundler, transpiler and runtime" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "jsx-factory" -d "Changes the function called when compiling JSX elements using the classic JSX runtime" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "jsx-fragment" -d "Changes the function called when compiling JSX fragments" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "jsx-import-source" -d "Declares the module specifier to be used for importing the jsx and jsxs factory functions. Default: \"react\"" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "jsx-runtime" -d "\"automatic\" (default) or \"classic\"" -xa "automatic classic" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "ignore-dce-annotations" -d "Ignore tree-shaking annotations such as @__PURE__" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "env-file" -d "Load environment variables from the specified file(s)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -s "c" -l "config" -d "Specify path to Bun config file. Default <d>＄cwd<r>/bunfig.toml" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -s "h" -l "help" -d "Display this menu and exit" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "timeout" -d "Set the per-test timeout in milliseconds, default is 5000." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -s "u" -l "update-snapshots" -d "Update snapshot files" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "rerun-each" -d "Re-run each test file <NUMBER> times, helps catch certain bugs" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "only" -d "Only run tests that are marked with \"test.only()\"" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "todo" -d "Include tests that are marked with \"test.todo()\"" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "coverage" -d "Generate a coverage profile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "coverage-reporter" -d "Report coverage in 'text' and/or 'lcov'. Defaults to 'text'." -xa "text lcov" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "coverage-dir" -d "Directory for coverage files. Defaults to 'coverage'." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "bail" -d "Exit the test suite after <NUMBER> failures. If you do not specify a number, it defaults to 1." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -s "t" -l "test-name-pattern" -d "Run only tests with a name that matches the given regex." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "reporter" -d "Specify the test reporter. Currently --reporter=junit is the only supported format." -xa "junit" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "reporter-outfile" -d "The output file used for the format from --reporter." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -s "h" -l "help" -d "Display this message." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -s "p" -l "print" -d "Evaluates given code, prints result and exits." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -s "e" -l "eval" -d "Evaluates given code and silently exits." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "sloppy" -d "Runs the REPL in sloppy mode." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -s "c" -l "config" -d "Specify path to config file (bunfig.toml)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -s "y" -l "yarn" -d "Write a yarn.lock file (yarn v1)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -s "p" -l "production" -d "Don't install devDependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "no-save" -d "Don't update package.json or save a lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "save" -d "Save to package.json (true by default)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "ca" -d "Provide a Certificate Authority signing certificate" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "cafile" -d "The same as `--ca`, but is a file path to the certificate" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "dry-run" -d "Don't install anything" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "frozen-lockfile" -d "Disallow changes to lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -s "f" -l "force" -d "Always request the latest versions from the registry & reinstall all dependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "cache-dir" -d "Store & load cached data from a specific directory path" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "no-cache" -d "Ignore manifest cache entirely" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "silent" -d "Don't log anything" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "quiet" -d "Only show tarball name when packing" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "verbose" -d "Excessively verbose logging" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "no-progress" -d "Disable the progress bar" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "no-summary" -d "Don't print a summary" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "no-verify" -d "Skip verifying integrity of newly downloaded packages" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "ignore-scripts" -d "Skip lifecycle scripts in the project's package.json (dependency scripts are never run)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "trust" -d "Add to trustedDependencies in the project's package.json and install the package(s)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -s "g" -l "global" -d "Install globally" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "cwd" -d "Set a specific cwd" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "backend" -d "Platform-specific optimizations for installing dependencies. Possible values: \"clonefile\" (default), \"hardlink\", \"symlink\", \"copyfile\"" -xa "clonefile hardlink symlink copyfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "registry" -d "Use a specific registry by default, overriding .npmrc, bunfig.toml and environment variables" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "concurrent-scripts" -d "Maximum number of concurrent jobs for lifecycle scripts (default 5)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "network-concurrency" -d "Maximum number of concurrent network requests (default 48)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "save-text-lockfile" -d "Save a text-based lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "omit" -d "Exclude 'dev', 'optional', or 'peer' dependencies from install" -xa "dev optional peer" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "lockfile-only" -d "Generate a lockfile without installing dependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "linker" -d "Linker strategy (one of \"isolated\" or \"hoisted\")" -xa "isolated hoisted" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -s "h" -l "help" -d "Print this help menu" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -s "d" -l "dev" -d "Add dependency to \"devDependencies\"" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "optional" -d "Add dependency to \"optionalDependencies\"" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "peer" -d "Add dependency to \"peerDependencies\"" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -s "E" -l "exact" -d "Add the exact version instead of the ^range" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "filter" -d "Install packages for the matching workspaces" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -s "a" -l "analyze" -d "Analyze & install all dependencies of files passed as arguments recursively (using Bun's bundler)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "only-missing" -d "Only add dependencies to package.json if they are not already present" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -s "c" -l "config" -d "Specify path to config file (bunfig.toml)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -s "y" -l "yarn" -d "Write a yarn.lock file (yarn v1)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -s "p" -l "production" -d "Don't install devDependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "no-save" -d "Don't update package.json or save a lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "save" -d "Save to package.json (true by default)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "ca" -d "Provide a Certificate Authority signing certificate" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "cafile" -d "The same as `--ca`, but is a file path to the certificate" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "dry-run" -d "Don't install anything" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "frozen-lockfile" -d "Disallow changes to lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -s "f" -l "force" -d "Always request the latest versions from the registry & reinstall all dependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "cache-dir" -d "Store & load cached data from a specific directory path" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "no-cache" -d "Ignore manifest cache entirely" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "silent" -d "Don't log anything" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "quiet" -d "Only show tarball name when packing" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "verbose" -d "Excessively verbose logging" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "no-progress" -d "Disable the progress bar" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "no-summary" -d "Don't print a summary" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "no-verify" -d "Skip verifying integrity of newly downloaded packages" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "ignore-scripts" -d "Skip lifecycle scripts in the project's package.json (dependency scripts are never run)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "trust" -d "Add to trustedDependencies in the project's package.json and install the package(s)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -s "g" -l "global" -d "Install globally" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "cwd" -d "Set a specific cwd" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "backend" -d "Platform-specific optimizations for installing dependencies" -xa "clonefile hardlink symlink copyfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "registry" -d "Use a specific registry by default, overriding .npmrc, bunfig.toml and environment variables" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "concurrent-scripts" -d "Maximum number of concurrent jobs for lifecycle scripts (default 5)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "network-concurrency" -d "Maximum number of concurrent network requests (default 48)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "save-text-lockfile" -d "Save a text-based lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "omit" -d "Exclude 'dev', 'optional', or 'peer' dependencies from install" -xa "dev optional peer" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "lockfile-only" -d "Generate a lockfile without installing dependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "linker" -d "Linker strategy" -xa "isolated hoisted" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -s "h" -l "help" -d "Print this help menu" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -s "d" -l "dev" -d "Add dependency to \"devDependencies\"" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "optional" -d "Add dependency to \"optionalDependencies\"" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "peer" -d "Add dependency to \"peerDependencies\"" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -s "E" -l "exact" -d "Add the exact version instead of the ^range" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -s "a" -l "analyze" -d "Recursively analyze & install dependencies of files passed as arguments (using Bun's bundler)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "only-missing" -d "Only add dependencies to package.json if they are not already present" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -s "c" -l "config" -d "Specify path to config file (bunfig.toml)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -s "y" -l "yarn" -d "Write a yarn.lock file (yarn v1)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -s "p" -l "production" -d "Don't install devDependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "no-save" -d "Don't update package.json or save a lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "save" -d "Save to package.json (true by default)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "ca" -d "Provide a Certificate Authority signing certificate" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "cafile" -d "The same as `--ca`, but is a file path to the certificate" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "dry-run" -d "Don't install anything" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "frozen-lockfile" -d "Disallow changes to lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -s "f" -l "force" -d "Always request the latest versions from the registry & reinstall all dependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "cache-dir" -d "Store & load cached data from a specific directory path" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "no-cache" -d "Ignore manifest cache entirely" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "silent" -d "Don't log anything" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "quiet" -d "Only show tarball name when packing" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "verbose" -d "Excessively verbose logging" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "no-progress" -d "Disable the progress bar" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "no-summary" -d "Don't print a summary" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "no-verify" -d "Skip verifying integrity of newly downloaded packages" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "ignore-scripts" -d "Skip lifecycle scripts in the project's package.json (dependency scripts are never run)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "trust" -d "Add to trustedDependencies in the project's package.json and install the package(s)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -s "g" -l "global" -d "Install globally" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "cwd" -d "Set a specific cwd" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "backend" -d "Platform-specific optimizations for installing dependencies. Possible values: \"clonefile\" (default), \"hardlink\", \"symlink\", \"copyfile\"" -xa "clonefile hardlink symlink copyfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "registry" -d "Use a specific registry by default, overriding .npmrc, bunfig.toml and environment variables" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "concurrent-scripts" -d "Maximum number of concurrent jobs for lifecycle scripts (default 5)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "network-concurrency" -d "Maximum number of concurrent network requests (default 48)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "save-text-lockfile" -d "Save a text-based lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "omit" -d "Exclude 'dev', 'optional', or 'peer' dependencies from install" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "lockfile-only" -d "Generate a lockfile without installing dependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "linker" -d "Linker strategy (one of \"isolated\" or \"hoisted\")" -xa "isolated hoisted" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -s "h" -l "help" -d "Print this help menu" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -s "c" -l "config" -d "Specify path to config file (bunfig.toml)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -s "y" -l "yarn" -d "Write a yarn.lock file (yarn v1)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -s "p" -l "production" -d "Don't install devDependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "no-save" -d "Don't update package.json or save a lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "save" -d "Save to package.json (true by default)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "ca" -d "Provide a Certificate Authority signing certificate" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "cafile" -d "The same as `--ca`, but is a file path to the certificate" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "dry-run" -d "Don't install anything" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "frozen-lockfile" -d "Disallow changes to lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -s "f" -l "force" -d "Always request the latest versions from the registry & reinstall all dependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "cache-dir" -d "Store & load cached data from a specific directory path" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "no-cache" -d "Ignore manifest cache entirely" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "silent" -d "Don't log anything" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "quiet" -d "Only show tarball name when packing" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "verbose" -d "Excessively verbose logging" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "no-progress" -d "Disable the progress bar" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "no-summary" -d "Don't print a summary" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "no-verify" -d "Skip verifying integrity of newly downloaded packages" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "ignore-scripts" -d "Skip lifecycle scripts in the project's package.json (dependency scripts are never run)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "trust" -d "Add to trustedDependencies in the project's package.json and install the package(s)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -s "g" -l "global" -d "Install globally" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "cwd" -d "Set a specific cwd" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "backend" -d "Platform-specific optimizations for installing dependencies. Possible values: \"clonefile\" (default), \"hardlink\", \"symlink\", \"copyfile\"" -xa "clonefile hardlink symlink copyfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "registry" -d "Use a specific registry by default, overriding .npmrc, bunfig.toml and environment variables" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "concurrent-scripts" -d "Maximum number of concurrent jobs for lifecycle scripts (default 5)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "network-concurrency" -d "Maximum number of concurrent network requests (default 48)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "save-text-lockfile" -d "Save a text-based lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "omit" -d "Exclude 'dev', 'optional', or 'peer' dependencies from install" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "lockfile-only" -d "Generate a lockfile without installing dependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "linker" -d "Linker strategy (one of \"isolated\" or \"hoisted\")" -xa "isolated hoisted" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -s "h" -l "help" -d "Print this help menu" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "latest" -d "Update packages to their latest versions" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -s "i" -l "interactive" -d "Show an interactive list of outdated packages to select for update" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "json" -d "Output in JSON format" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -s "c" -l "config" -d "Specify path to config file (bunfig.toml)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -s "y" -l "yarn" -d "Write a yarn.lock file (yarn v1)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -s "p" -l "production" -d "Don't install devDependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "no-save" -d "Don't update package.json or save a lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "save" -d "Save to package.json (true by default)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "ca" -d "Provide a Certificate Authority signing certificate" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "cafile" -d "The same as `--ca`, but is a file path to the certificate" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "dry-run" -d "Don't install anything" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "frozen-lockfile" -d "Disallow changes to lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -s "f" -l "force" -d "Always request the latest versions from the registry & reinstall all dependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "cache-dir" -d "Store & load cached data from a specific directory path" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "no-cache" -d "Ignore manifest cache entirely" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "silent" -d "Don't log anything" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "quiet" -d "Only show tarball name when packing" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "verbose" -d "Excessively verbose logging" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "no-progress" -d "Disable the progress bar" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "no-summary" -d "Don't print a summary" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "no-verify" -d "Skip verifying integrity of newly downloaded packages" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "ignore-scripts" -d "Skip lifecycle scripts in the project's package.json (dependency scripts are never run)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "trust" -d "Add to trustedDependencies in the project's package.json and install the package(s)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -s "g" -l "global" -d "Install globally" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "cwd" -d "Set a specific cwd" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "backend" -d "Platform-specific optimizations for installing dependencies. Possible values: \"clonefile\" (default), \"hardlink\", \"symlink\", \"copyfile\"" -xa "clonefile hardlink symlink copyfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "registry" -d "Use a specific registry by default, overriding .npmrc, bunfig.toml and environment variables" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "concurrent-scripts" -d "Maximum number of concurrent jobs for lifecycle scripts (default 5)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "network-concurrency" -d "Maximum number of concurrent network requests (default 48)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "save-text-lockfile" -d "Save a text-based lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "omit" -d "Exclude 'dev', 'optional', or 'peer' dependencies from install" -xa "dev optional peer" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "lockfile-only" -d "Generate a lockfile without installing dependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "linker" -d "Linker strategy (one of \"isolated\" or \"hoisted\")" -xa "isolated hoisted" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -s "h" -l "help" -d "Print this help menu" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -s "F" -l "filter" -d "Display outdated dependencies for each matching workspace" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -s "c" -l "config" -d "Specify path to config file (bunfig.toml)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -s "y" -l "yarn" -d "Write a yarn.lock file (yarn v1)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -s "p" -l "production" -d "Don't install devDependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "no-save" -d "Don't update package.json or save a lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "save" -d "Save to package.json (true by default)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "ca" -d "Provide a Certificate Authority signing certificate" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "cafile" -d "The same as `--ca`, but is a file path to the certificate" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "dry-run" -d "Don't install anything" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "frozen-lockfile" -d "Disallow changes to lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -s "f" -l "force" -d "Always request the latest versions from the registry & reinstall all dependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "cache-dir" -d "Store & load cached data from a specific directory path" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "no-cache" -d "Ignore manifest cache entirely" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "silent" -d "Don't log anything" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "quiet" -d "Only show tarball name when packing" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "verbose" -d "Excessively verbose logging" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "no-progress" -d "Disable the progress bar" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "no-summary" -d "Don't print a summary" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "no-verify" -d "Skip verifying integrity of newly downloaded packages" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "ignore-scripts" -d "Skip lifecycle scripts in the project's package.json (dependency scripts are never run)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "trust" -d "Add to trustedDependencies in the project's package.json and install the package(s)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -s "g" -l "global" -d "Install globally" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "cwd" -d "Set a specific cwd" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "backend" -d "Platform-specific optimizations for installing dependencies. Possible values: \"clonefile\" (default), \"hardlink\", \"symlink\", \"copyfile\"" -xa "clonefile hardlink symlink copyfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "registry" -d "Use a specific registry by default, overriding .npmrc, bunfig.toml and environment variables" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "concurrent-scripts" -d "Maximum number of concurrent jobs for lifecycle scripts (default 5)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "network-concurrency" -d "Maximum number of concurrent network requests (default 48)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "save-text-lockfile" -d "Save a text-based lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "omit" -d "Exclude 'dev', 'optional', or 'peer' dependencies from install" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "lockfile-only" -d "Generate a lockfile without installing dependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "linker" -d "Linker strategy (one of \"isolated\" or \"hoisted\")" -xa "isolated hoisted" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -s "h" -l "help" -d "Print this help menu" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -s "c" -l "config" -d "Specify path to config file (bunfig.toml)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -s "y" -l "yarn" -d "Write a yarn.lock file (yarn v1)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -s "p" -l "production" -d "Don't install devDependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "no-save" -d "Don't update package.json or save a lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "save" -d "Save to package.json (true by default)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "ca" -d "Provide a Certificate Authority signing certificate" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "cafile" -d "The same as `--ca`, but is a file path to the certificate" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "dry-run" -d "Don't install anything" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "frozen-lockfile" -d "Disallow changes to lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -s "f" -l "force" -d "Always request the latest versions from the registry & reinstall all dependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "cache-dir" -d "Store & load cached data from a specific directory path" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "no-cache" -d "Ignore manifest cache entirely" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "silent" -d "Don't log anything" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "quiet" -d "Only show tarball name when packing" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "verbose" -d "Excessively verbose logging" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "no-progress" -d "Disable the progress bar" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "no-summary" -d "Don't print a summary" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "no-verify" -d "Skip verifying integrity of newly downloaded packages" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "ignore-scripts" -d "Skip lifecycle scripts in the project's package.json (dependency scripts are never run)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "trust" -d "Add to trustedDependencies in the project's package.json and install the package(s)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -s "g" -l "global" -d "Install globally" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "cwd" -d "Set a specific cwd" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "backend" -d "Platform-specific optimizations for installing dependencies" -xa "clonefile hardlink symlink copyfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "registry" -d "Use a specific registry by default, overriding .npmrc, bunfig.toml and environment variables" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "concurrent-scripts" -d "Maximum number of concurrent jobs for lifecycle scripts (default 5)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "network-concurrency" -d "Maximum number of concurrent network requests (default 48)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "save-text-lockfile" -d "Save a text-based lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "omit" -d "Exclude 'dev', 'optional', or 'peer' dependencies from install" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "lockfile-only" -d "Generate a lockfile without installing dependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "linker" -d "Linker strategy" -xa "isolated hoisted" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -s "h" -l "help" -d "Print this help menu" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -s "c" -l "config" -d "Specify path to config file (bunfig.toml)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -s "y" -l "yarn" -d "Write a yarn.lock file (yarn v1)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -s "p" -l "production" -d "Don't install devDependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "no-save" -d "Don't update package.json or save a lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "save" -d "Save to package.json (true by default)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "ca" -d "Provide a Certificate Authority signing certificate" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "cafile" -d "The same as `--ca`, but is a file path to the certificate" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "dry-run" -d "Don't install anything" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "frozen-lockfile" -d "Disallow changes to lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -s "f" -l "force" -d "Always request the latest versions from the registry & reinstall all dependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "cache-dir" -d "Store & load cached data from a specific directory path" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "no-cache" -d "Ignore manifest cache entirely" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "silent" -d "Don't log anything" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "quiet" -d "Only show tarball name when packing" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "verbose" -d "Excessively verbose logging" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "no-progress" -d "Disable the progress bar" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "no-summary" -d "Don't print a summary" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "no-verify" -d "Skip verifying integrity of newly downloaded packages" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "ignore-scripts" -d "Skip lifecycle scripts in the project's package.json (dependency scripts are never run)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "trust" -d "Add to trustedDependencies in the project's package.json and install the package(s)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -s "g" -l "global" -d "Install globally" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "cwd" -d "Set a specific cwd" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "backend" -d "Platform-specific optimizations for installing dependencies." -xa "clonefile hardlink symlink copyfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "registry" -d "Use a specific registry by default, overriding .npmrc, bunfig.toml and environment variables" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "concurrent-scripts" -d "Maximum number of concurrent jobs for lifecycle scripts (default 5)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "network-concurrency" -d "Maximum number of concurrent network requests (default 48)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "save-text-lockfile" -d "Save a text-based lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "omit" -d "Exclude 'dev', 'optional', or 'peer' dependencies from install" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "lockfile-only" -d "Generate a lockfile without installing dependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "linker" -d "Linker strategy" -xa "isolated hoisted" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -s "h" -l "help" -d "Print this help menu" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "access" -d "Set access level for scoped packages" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "tag" -d "Tag the release. Default is \"latest\"" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "otp" -d "Provide a one-time password for authentication" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "auth-type" -d "Specify the type of one-time password authentication (default is 'web')" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "gzip-level" -d "Specify a custom compression level for gzip. Default is 9." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -s "c" -l "config" -d "Specify path to config file (bunfig.toml)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -s "y" -l "yarn" -d "Write a yarn.lock file (yarn v1)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -s "p" -l "production" -d "Don't install devDependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "no-save" -d "Don't update package.json or save a lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "save" -d "Save to package.json (true by default)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "ca" -d "Provide a Certificate Authority signing certificate" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "cafile" -d "The same as `--ca`, but is a file path to the certificate" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "dry-run" -d "Don't install anything" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "frozen-lockfile" -d "Disallow changes to lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -s "f" -l "force" -d "Always request the latest versions from the registry & reinstall all dependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "cache-dir" -d "Store & load cached data from a specific directory path" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "no-cache" -d "Ignore manifest cache entirely" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "silent" -d "Don't log anything" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "quiet" -d "Only show tarball name when packing" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "verbose" -d "Excessively verbose logging" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "no-progress" -d "Disable the progress bar" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "no-summary" -d "Don't print a summary" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "no-verify" -d "Skip verifying integrity of newly downloaded packages" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "ignore-scripts" -d "Skip lifecycle scripts in the project's package.json (dependency scripts are never run)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "trust" -d "Add to trustedDependencies in the project's package.json and install the package(s)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -s "g" -l "global" -d "Install globally" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "cwd" -d "Set a specific cwd" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "backend" -d "Platform-specific optimizations for installing dependencies" -xa "clonefile hardlink symlink copyfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "registry" -d "Use a specific registry by default, overriding .npmrc, bunfig.toml and environment variables" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "concurrent-scripts" -d "Maximum number of concurrent jobs for lifecycle scripts (default 5)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "network-concurrency" -d "Maximum number of concurrent network requests (default 48)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "save-text-lockfile" -d "Save a text-based lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "omit" -d "Exclude 'dev', 'optional', or 'peer' dependencies from install" -xa "dev optional peer" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "lockfile-only" -d "Generate a lockfile without installing dependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "linker" -d "Linker strategy" -xa "isolated hoisted" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -s "h" -l "help" -d "Print this help menu" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "commit" -d "Install a package containing modifications in `dir`" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "patches-dir" -d "The directory to put the patch file in (only if --commit is used)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "dry-run" -d "do everything except for writing the tarball to disk" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "destination" -d "the directory the tarball will be saved in" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "filename" -d "the name of the tarball" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "quiet" -d "only output the tarball filename" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -s "g" -d "print the global path to bin folder" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "all" -d "list the entire dependency tree according to the current lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "all" -d "trust all untrusted dependencies" # global
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm'" -a "pack" -d "create a tarball of the current workspace" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm'" -a "bin" -d "print the path to bin folder" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm'" -a "ls" -d "list the dependency tree according to the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm'" -a "why" -d "show dependency tree explaining why a package is installed" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm'" -a "whoami" -d "print the current npm username" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm'" -a "view" -d "view package metadata from the registry (use `bun info` instead)" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm'" -a "version" -d "bump the version in package.json and create a git tag" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm'" -a "pkg" -d "manage data in package.json" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm'" -a "hash" -d "generate & print the hash of the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm'" -a "hash-string" -d "print the string used to hash the lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm'" -a "hash-print" -d "print the hash stored in the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm'" -a "cache" -d "print the path to the cache folder" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm'" -a "migrate" -d "migrate another package manager's lockfile without installing anything" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm'" -a "untrusted" -d "print current untrusted dependencies with scripts" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm'" -a "trust" -d "run scripts for untrusted dependencies and add to `trustedDependencies`" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm'" -a "default-trusted" -d "print the default trusted dependencies list" # sub
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm ls'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm ls'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm ls'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm ls'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm ls'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm ls'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm ls'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm ls'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm ls'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm default-trusted'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm default-trusted'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm default-trusted'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm default-trusted'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm default-trusted'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm default-trusted'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm default-trusted'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm default-trusted'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm default-trusted'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -l "dry-run" -d "do everything except for writing the tarball to disk" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -l "destination" -d "the directory the tarball will be saved in" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -l "filename" -d "the name of the tarball" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -l "quiet" -d "only output the tarball filename" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -s "g" -d "print the global path to bin folder" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -l "all" -d "list the entire dependency tree according to the current lockfile / trust all untrusted dependencies" # global
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -a "pack" -d "create a tarball of the current workspace" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -a "bin" -d "print the path to bin folder" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -a "ls" -d "list the dependency tree according to the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -a "why" -d "show dependency tree explaining why a package is installed" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -a "whoami" -d "print the current npm username" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -a "view" -d "view package metadata from the registry (use `bun info` instead)" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -a "version" -d "bump the version in package.json and create a git tag" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -a "pkg" -d "manage data in package.json" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -a "hash" -d "generate & print the hash of the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -a "hash-string" -d "print the string used to hash the lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -a "hash-print" -d "print the hash stored in the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -a "cache" -d "print the path to the cache folder" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -a "migrate" -d "migrate another package manager's lockfile without installing anything" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -a "untrusted" -d "print current untrusted dependencies with scripts" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -a "trust" -d "run scripts for untrusted dependencies and add to `trustedDependencies`" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -a "default-trusted" -d "print the default trusted dependencies list" # sub
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack pack'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack pack'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack pack'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack pack'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack pack'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack pack'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack pack'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack pack'" -l "all" -d "list the entire dependency tree according to the current lockfile / trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack bin'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack bin'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack bin'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack bin'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack bin'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack bin'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack bin'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack bin'" -l "all" -d "list the entire dependency tree according to the current lockfile / trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack ls'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack ls'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack ls'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack ls'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack ls'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack ls'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack ls'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack ls'" -l "all" -d "list the entire dependency tree according to the current lockfile / trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack why'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack why'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack why'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack why'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack why'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack why'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack why'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack why'" -l "all" -d "list the entire dependency tree according to the current lockfile / trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack whoami'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack whoami'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack whoami'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack whoami'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack whoami'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack whoami'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack whoami'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack whoami'" -l "all" -d "list the entire dependency tree according to the current lockfile / trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack view'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack view'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack view'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack view'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack view'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack view'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack view'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack view'" -l "all" -d "list the entire dependency tree according to the current lockfile / trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack version'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack version'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack version'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack version'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack version'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack version'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack version'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack version'" -l "all" -d "list the entire dependency tree according to the current lockfile / trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack pkg'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack pkg'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack pkg'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack pkg'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack pkg'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack pkg'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack pkg'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack pkg'" -l "all" -d "list the entire dependency tree according to the current lockfile / trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack hash'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack hash'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack hash'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack hash'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack hash'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack hash'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack hash'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack hash'" -l "all" -d "list the entire dependency tree according to the current lockfile / trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack hash-string'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack hash-string'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack hash-string'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack hash-string'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack hash-string'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack hash-string'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack hash-string'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack hash-string'" -l "all" -d "list the entire dependency tree according to the current lockfile / trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack hash-print'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack hash-print'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack hash-print'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack hash-print'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack hash-print'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack hash-print'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack hash-print'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack hash-print'" -l "all" -d "list the entire dependency tree according to the current lockfile / trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack cache'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack cache'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack cache'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack cache'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack cache'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack cache'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack cache'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack cache'" -l "all" -d "list the entire dependency tree according to the current lockfile / trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack migrate'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack migrate'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack migrate'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack migrate'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack migrate'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack migrate'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack migrate'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack migrate'" -l "all" -d "list the entire dependency tree according to the current lockfile / trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack untrusted'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack untrusted'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack untrusted'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack untrusted'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack untrusted'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack untrusted'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack untrusted'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack untrusted'" -l "all" -d "list the entire dependency tree according to the current lockfile / trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack trust'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack trust'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack trust'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack trust'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack trust'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack trust'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack trust'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack trust'" -l "all" -d "list the entire dependency tree according to the current lockfile / trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack default-trusted'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack default-trusted'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack default-trusted'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack default-trusted'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack default-trusted'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack default-trusted'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack default-trusted'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack default-trusted'" -l "all" -d "list the entire dependency tree according to the current lockfile / trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -l "dry-run" -d "do everything except for writing the tarball to disk" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -l "destination" -d "the directory the tarball will be saved in" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -l "filename" -d "the name of the tarball" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -l "quiet" -d "only output the tarball filename" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -s "g" -d "print the global path to bin folder" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -l "all" -d "list the entire dependency tree according to the current lockfile or trust all untrusted dependencies" # global
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -a "pack" -d "create a tarball of the current workspace" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -a "bin" -d "print the path to bin folder" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -a "ls" -d "list the dependency tree according to the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -a "why" -d "show dependency tree explaining why a package is installed" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -a "whoami" -d "print the current npm username" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -a "view" -d "view package metadata from the registry (use `bun info` instead)" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -a "version" -d "bump the version in package.json and create a git tag" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -a "pkg" -d "manage data in package.json" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -a "hash" -d "generate & print the hash of the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -a "hash-string" -d "print the string used to hash the lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -a "hash-print" -d "print the hash stored in the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -a "cache" -d "print the path to the cache folder" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -a "migrate" -d "migrate another package manager's lockfile without installing anything" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -a "untrusted" -d "print current untrusted dependencies with scripts" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -a "trust" -d "run scripts for untrusted dependencies and add to `trustedDependencies`" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -a "default-trusted" -d "print the default trusted dependencies list" # sub
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin pack'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin pack'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin pack'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin pack'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin pack'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin pack'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin pack'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin pack'" -l "all" -d "list the entire dependency tree according to the current lockfile or trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin bin'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin bin'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin bin'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin bin'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin bin'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin bin'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin bin'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin bin'" -l "all" -d "list the entire dependency tree according to the current lockfile or trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin ls'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin ls'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin ls'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin ls'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin ls'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin ls'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin ls'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin ls'" -l "all" -d "list the entire dependency tree according to the current lockfile or trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin why'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin why'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin why'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin why'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin why'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin why'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin why'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin why'" -l "all" -d "list the entire dependency tree according to the current lockfile or trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin whoami'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin whoami'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin whoami'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin whoami'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin whoami'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin whoami'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin whoami'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin whoami'" -l "all" -d "list the entire dependency tree according to the current lockfile or trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin view'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin view'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin view'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin view'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin view'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin view'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin view'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin view'" -l "all" -d "list the entire dependency tree according to the current lockfile or trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin version'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin version'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin version'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin version'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin version'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin version'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin version'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin version'" -l "all" -d "list the entire dependency tree according to the current lockfile or trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin pkg'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin pkg'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin pkg'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin pkg'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin pkg'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin pkg'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin pkg'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin pkg'" -l "all" -d "list the entire dependency tree according to the current lockfile or trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin hash'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin hash'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin hash'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin hash'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin hash'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin hash'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin hash'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin hash'" -l "all" -d "list the entire dependency tree according to the current lockfile or trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin hash-string'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin hash-string'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin hash-string'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin hash-string'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin hash-string'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin hash-string'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin hash-string'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin hash-string'" -l "all" -d "list the entire dependency tree according to the current lockfile or trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin hash-print'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin hash-print'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin hash-print'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin hash-print'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin hash-print'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin hash-print'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin hash-print'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin hash-print'" -l "all" -d "list the entire dependency tree according to the current lockfile or trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin cache'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin cache'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin cache'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin cache'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin cache'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin cache'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin cache'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin cache'" -l "all" -d "list the entire dependency tree according to the current lockfile or trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin migrate'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin migrate'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin migrate'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin migrate'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin migrate'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin migrate'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin migrate'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin migrate'" -l "all" -d "list the entire dependency tree according to the current lockfile or trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin untrusted'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin untrusted'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin untrusted'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin untrusted'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin untrusted'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin untrusted'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin untrusted'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin untrusted'" -l "all" -d "list the entire dependency tree according to the current lockfile or trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin trust'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin trust'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin trust'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin trust'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin trust'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin trust'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin trust'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin trust'" -l "all" -d "list the entire dependency tree according to the current lockfile or trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin default-trusted'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin default-trusted'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin default-trusted'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin default-trusted'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin default-trusted'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin default-trusted'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin default-trusted'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin default-trusted'" -l "all" -d "list the entire dependency tree according to the current lockfile or trust all untrusted dependencies" # subcommands flags
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm ls'" -a "pack" -d "create a tarball of the current workspace" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm ls'" -a "bin" -d "print the path to bin folder" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm ls'" -a "ls" -d "list the dependency tree according to the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm ls'" -a "why" -d "show dependency tree explaining why a package is installed" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm ls'" -a "whoami" -d "print the current npm username" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm ls'" -a "view" -d "view package metadata from the registry (use `bun info` instead)" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm ls'" -a "version" -d "bump the version in package.json and create a git tag" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm ls'" -a "pkg" -d "manage data in package.json" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm ls'" -a "hash" -d "generate & print the hash of the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm ls'" -a "hash-string" -d "print the string used to hash the lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm ls'" -a "hash-print" -d "print the hash stored in the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm ls'" -a "cache" -d "print the path to the cache folder" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm ls'" -a "migrate" -d "migrate another package manager's lockfile without installing anything" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm ls'" -a "untrusted" -d "print current untrusted dependencies with scripts" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm ls'" -a "trust" -d "run scripts for untrusted dependencies and add to `trustedDependencies`" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm ls'" -a "default-trusted" -d "print the default trusted dependencies list" # sub
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -l "dry-run" -d "do everything except for writing the tarball to disk" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -l "destination" -d "the directory the tarball will be saved in" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -l "filename" -d "the name of the tarball" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -l "quiet" -d "only output the tarball filename" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -s "g" -d "print the global path to bin folder" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -l "all" -d "list the entire dependency tree according to the current lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -l "all" -d "trust all untrusted dependencies" # global
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -a "pack" -d "create a tarball of the current workspace" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -a "bin" -d "print the path to bin folder" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -a "ls" -d "list the dependency tree according to the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -a "why" -d "show dependency tree explaining why a package is installed" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -a "whoami" -d "print the current npm username" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -a "view" -d "view package metadata from the registry (use `bun info` instead)" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -a "version" -d "bump the version in package.json and create a git tag" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -a "pkg" -d "manage data in package.json" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -a "hash" -d "generate & print the hash of the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -a "hash-string" -d "print the string used to hash the lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -a "hash-print" -d "print the hash stored in the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -a "cache" -d "print the path to the cache folder" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -a "migrate" -d "migrate another package manager's lockfile without installing anything" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -a "untrusted" -d "print current untrusted dependencies with scripts" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -a "trust" -d "run scripts for untrusted dependencies and add to `trustedDependencies`" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -a "default-trusted" -d "print the default trusted dependencies list" # sub
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why pack'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why pack'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why pack'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why pack'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why pack'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why pack'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why pack'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why pack'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why pack'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why bin'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why bin'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why bin'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why bin'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why bin'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why bin'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why bin'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why bin'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why bin'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why ls'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why ls'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why ls'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why ls'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why ls'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why ls'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why ls'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why ls'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why ls'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why why'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why why'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why why'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why why'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why why'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why why'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why why'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why why'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why why'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why whoami'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why whoami'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why whoami'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why whoami'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why whoami'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why whoami'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why whoami'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why whoami'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why whoami'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why view'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why view'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why view'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why view'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why view'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why view'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why view'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why view'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why view'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why version'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why version'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why version'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why version'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why version'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why version'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why version'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why version'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why version'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why pkg'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why pkg'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why pkg'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why pkg'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why pkg'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why pkg'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why pkg'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why pkg'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why pkg'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why hash'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why hash'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why hash'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why hash'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why hash'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why hash'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why hash'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why hash'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why hash'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why hash-string'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why hash-string'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why hash-string'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why hash-string'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why hash-string'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why hash-string'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why hash-string'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why hash-string'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why hash-string'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why hash-print'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why hash-print'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why hash-print'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why hash-print'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why hash-print'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why hash-print'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why hash-print'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why hash-print'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why hash-print'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why cache'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why cache'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why cache'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why cache'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why cache'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why cache'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why cache'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why cache'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why cache'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why migrate'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why migrate'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why migrate'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why migrate'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why migrate'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why migrate'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why migrate'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why migrate'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why migrate'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why untrusted'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why untrusted'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why untrusted'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why untrusted'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why untrusted'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why untrusted'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why untrusted'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why untrusted'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why untrusted'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why trust'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why trust'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why trust'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why trust'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why trust'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why trust'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why trust'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why trust'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why trust'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why default-trusted'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why default-trusted'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why default-trusted'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why default-trusted'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why default-trusted'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why default-trusted'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why default-trusted'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why default-trusted'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why default-trusted'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -l "dry-run" -d "do everything except for writing the tarball to disk" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -l "destination" -d "the directory the tarball will be saved in" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -l "filename" -d "the name of the tarball" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -l "quiet" -d "only output the tarball filename" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -s "g" -d "print the global path to bin folder" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -l "all" -d "list the entire dependency tree according to the current lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -l "all" -d "trust all untrusted dependencies" # global
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -a "pack" -d "create a tarball of the current workspace" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -a "bin" -d "print the path to bin folder" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -a "ls" -d "list the dependency tree according to the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -a "why" -d "show dependency tree explaining why a package is installed" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -a "whoami" -d "print the current npm username" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -a "view" -d "view package metadata from the registry (use `bun info` instead)" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -a "version" -d "bump the version in package.json and create a git tag" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -a "pkg" -d "manage data in package.json" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -a "hash" -d "generate & print the hash of the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -a "hash-string" -d "print the string used to hash the lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -a "hash-print" -d "print the hash stored in the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -a "cache" -d "print the path to the cache folder" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -a "migrate" -d "migrate another package manager's lockfile without installing anything" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -a "untrusted" -d "print current untrusted dependencies with scripts" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -a "trust" -d "run scripts for untrusted dependencies and add to `trustedDependencies`" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -a "default-trusted" -d "print the default trusted dependencies list" # sub
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami pack'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami pack'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami pack'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami pack'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami pack'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami pack'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami pack'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami pack'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami pack'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami bin'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami bin'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami bin'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami bin'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami bin'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami bin'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami bin'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami bin'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami bin'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami ls'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami ls'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami ls'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami ls'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami ls'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami ls'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami ls'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami ls'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami ls'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami why'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami why'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami why'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami why'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami why'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami why'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami why'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami why'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami why'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami whoami'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami whoami'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami whoami'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami whoami'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami whoami'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami whoami'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami whoami'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami whoami'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami whoami'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami view'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami view'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami view'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami view'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami view'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami view'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami view'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami view'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami view'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami version'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami version'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami version'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami version'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami version'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami version'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami version'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami version'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami version'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami pkg'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami pkg'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami pkg'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami pkg'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami pkg'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami pkg'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami pkg'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami pkg'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami pkg'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami hash'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami hash'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami hash'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami hash'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami hash'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami hash'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami hash'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami hash'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami hash'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami hash-string'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami hash-string'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami hash-string'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami hash-string'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami hash-string'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami hash-string'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami hash-string'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami hash-string'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami hash-string'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami hash-print'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami hash-print'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami hash-print'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami hash-print'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami hash-print'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami hash-print'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami hash-print'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami hash-print'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami hash-print'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami cache'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami cache'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami cache'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami cache'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami cache'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami cache'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami cache'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami cache'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami cache'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami migrate'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami migrate'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami migrate'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami migrate'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami migrate'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami migrate'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami migrate'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami migrate'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami migrate'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami untrusted'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami untrusted'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami untrusted'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami untrusted'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami untrusted'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami untrusted'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami untrusted'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami untrusted'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami untrusted'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami trust'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami trust'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami trust'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami trust'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami trust'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami trust'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami trust'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami trust'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami trust'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami default-trusted'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami default-trusted'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami default-trusted'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami default-trusted'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami default-trusted'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami default-trusted'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami default-trusted'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami default-trusted'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami default-trusted'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -l "dry-run" -d "do everything except for writing the tarball to disk" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -l "destination" -d "the directory the tarball will be saved in" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -l "filename" -d "the name of the tarball" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -l "quiet" -d "only output the tarball filename" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -s "g" -d "print the global path to bin folder" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -l "all" -d "list the entire dependency tree according to the current lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -l "all" -d "trust all untrusted dependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -l "increment" -d "patch, minor, major, prepatch, preminor, premajor, prerelease, from-git, or a specific version" -xa "patch minor major prepatch preminor premajor prerelease from-git" # global
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -a "pack" -d "create a tarball of the current workspace" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -a "bin" -d "print the path to bin folder" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -a "ls" -d "list the dependency tree according to the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -a "whypkg" -d "show dependency tree explaining why a package is installed" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -a "whoami" -d "print the current npm username" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -a "viewnameversion" -d "view package metadata from the registry (use `bun info` instead)" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -a "versionincrement" -d "bump the version in package.json and create a git tag" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -a "pkg" -d "manage data in package.json" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -a "hash" -d "generate & print the hash of the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -a "hash-string" -d "print the string used to hash the lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -a "hash-print" -d "print the hash stored in the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -a "cache" -d "print the path to the cache folder" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -a "cacherm" -d "clear the cache" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -a "migrate" -d "migrate another package manager's lockfile without installing anything" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -a "untrusted" -d "print current untrusted dependencies with scripts" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -a "trustnames" -d "run scripts for untrusted dependencies and add to `trustedDependencies`" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -a "default-trusted" -d "print the default trusted dependencies list" # sub
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view pack'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view pack'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view pack'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view pack'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view pack'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view pack'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view pack'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view pack'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view pack'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view pack'" -l "increment" -d "patch, minor, major, prepatch, preminor, premajor, prerelease, from-git, or a specific version" -xa "patch minor major prepatch preminor premajor prerelease from-git" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view bin'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view bin'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view bin'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view bin'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view bin'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view bin'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view bin'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view bin'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view bin'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view bin'" -l "increment" -d "patch, minor, major, prepatch, preminor, premajor, prerelease, from-git, or a specific version" -xa "patch minor major prepatch preminor premajor prerelease from-git" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view ls'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view ls'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view ls'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view ls'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view ls'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view ls'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view ls'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view ls'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view ls'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view ls'" -l "increment" -d "patch, minor, major, prepatch, preminor, premajor, prerelease, from-git, or a specific version" -xa "patch minor major prepatch preminor premajor prerelease from-git" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view whypkg'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view whypkg'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view whypkg'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view whypkg'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view whypkg'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view whypkg'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view whypkg'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view whypkg'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view whypkg'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view whypkg'" -l "increment" -d "patch, minor, major, prepatch, preminor, premajor, prerelease, from-git, or a specific version" -xa "patch minor major prepatch preminor premajor prerelease from-git" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view whoami'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view whoami'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view whoami'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view whoami'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view whoami'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view whoami'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view whoami'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view whoami'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view whoami'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view whoami'" -l "increment" -d "patch, minor, major, prepatch, preminor, premajor, prerelease, from-git, or a specific version" -xa "patch minor major prepatch preminor premajor prerelease from-git" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view viewnameversion'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view viewnameversion'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view viewnameversion'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view viewnameversion'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view viewnameversion'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view viewnameversion'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view viewnameversion'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view viewnameversion'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view viewnameversion'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view viewnameversion'" -l "increment" -d "patch, minor, major, prepatch, preminor, premajor, prerelease, from-git, or a specific version" -xa "patch minor major prepatch preminor premajor prerelease from-git" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view versionincrement'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view versionincrement'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view versionincrement'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view versionincrement'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view versionincrement'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view versionincrement'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view versionincrement'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view versionincrement'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view versionincrement'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view versionincrement'" -l "increment" -d "patch, minor, major, prepatch, preminor, premajor, prerelease, from-git, or a specific version" -xa "patch minor major prepatch preminor premajor prerelease from-git" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view pkg'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view pkg'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view pkg'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view pkg'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view pkg'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view pkg'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view pkg'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view pkg'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view pkg'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view pkg'" -l "increment" -d "patch, minor, major, prepatch, preminor, premajor, prerelease, from-git, or a specific version" -xa "patch minor major prepatch preminor premajor prerelease from-git" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view hash'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view hash'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view hash'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view hash'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view hash'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view hash'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view hash'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view hash'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view hash'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view hash'" -l "increment" -d "patch, minor, major, prepatch, preminor, premajor, prerelease, from-git, or a specific version" -xa "patch minor major prepatch preminor premajor prerelease from-git" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view hash-string'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view hash-string'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view hash-string'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view hash-string'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view hash-string'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view hash-string'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view hash-string'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view hash-string'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view hash-string'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view hash-string'" -l "increment" -d "patch, minor, major, prepatch, preminor, premajor, prerelease, from-git, or a specific version" -xa "patch minor major prepatch preminor premajor prerelease from-git" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view hash-print'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view hash-print'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view hash-print'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view hash-print'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view hash-print'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view hash-print'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view hash-print'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view hash-print'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view hash-print'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view hash-print'" -l "increment" -d "patch, minor, major, prepatch, preminor, premajor, prerelease, from-git, or a specific version" -xa "patch minor major prepatch preminor premajor prerelease from-git" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view cache'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view cache'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view cache'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view cache'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view cache'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view cache'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view cache'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view cache'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view cache'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view cache'" -l "increment" -d "patch, minor, major, prepatch, preminor, premajor, prerelease, from-git, or a specific version" -xa "patch minor major prepatch preminor premajor prerelease from-git" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view cacherm'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view cacherm'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view cacherm'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view cacherm'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view cacherm'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view cacherm'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view cacherm'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view cacherm'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view cacherm'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view cacherm'" -l "increment" -d "patch, minor, major, prepatch, preminor, premajor, prerelease, from-git, or a specific version" -xa "patch minor major prepatch preminor premajor prerelease from-git" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view migrate'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view migrate'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view migrate'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view migrate'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view migrate'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view migrate'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view migrate'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view migrate'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view migrate'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view migrate'" -l "increment" -d "patch, minor, major, prepatch, preminor, premajor, prerelease, from-git, or a specific version" -xa "patch minor major prepatch preminor premajor prerelease from-git" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view untrusted'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view untrusted'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view untrusted'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view untrusted'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view untrusted'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view untrusted'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view untrusted'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view untrusted'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view untrusted'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view untrusted'" -l "increment" -d "patch, minor, major, prepatch, preminor, premajor, prerelease, from-git, or a specific version" -xa "patch minor major prepatch preminor premajor prerelease from-git" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view trustnames'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view trustnames'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view trustnames'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view trustnames'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view trustnames'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view trustnames'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view trustnames'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view trustnames'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view trustnames'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view trustnames'" -l "increment" -d "patch, minor, major, prepatch, preminor, premajor, prerelease, from-git, or a specific version" -xa "patch minor major prepatch preminor premajor prerelease from-git" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view default-trusted'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view default-trusted'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view default-trusted'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view default-trusted'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view default-trusted'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view default-trusted'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view default-trusted'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view default-trusted'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view default-trusted'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view default-trusted'" -l "increment" -d "patch, minor, major, prepatch, preminor, premajor, prerelease, from-git, or a specific version" -xa "patch minor major prepatch preminor premajor prerelease from-git" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -l "dry-run" -d "do everything except for writing the tarball to disk" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -l "destination" -d "the directory the tarball will be saved in" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -l "filename" -d "the name of the tarball" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -l "quiet" -d "only output the tarball filename" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -s "g" -d "print the global path to bin folder" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -l "all" -d "list the entire dependency tree according to the current lockfile / trust all untrusted dependencies (context dependent)" # global
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -a "pack" -d "create a tarball of the current workspace" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -a "bin" -d "print the path to bin folder" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -a "ls" -d "list the dependency tree according to the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -a "why" -d "show dependency tree explaining why a package is installed" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -a "whoami" -d "print the current npm username" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -a "view" -d "view package metadata from the registry (use `bun info` instead)" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -a "version" -d "bump the version in package.json and create a git tag" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -a "pkg" -d "manage data in package.json" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -a "hash" -d "generate & print the hash of the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -a "hash-string" -d "print the string used to hash the lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -a "hash-print" -d "print the hash stored in the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -a "cache" -d "print the path to the cache folder" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -a "migrate" -d "migrate another package manager's lockfile without installing anything" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -a "untrusted" -d "print current untrusted dependencies with scripts" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -a "trust" -d "run scripts for untrusted dependencies and add to `trustedDependencies`" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -a "default-trusted" -d "print the default trusted dependencies list" # sub
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version pack'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version pack'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version pack'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version pack'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version pack'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version pack'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version pack'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version pack'" -l "all" -d "list the entire dependency tree according to the current lockfile / trust all untrusted dependencies (context dependent)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version bin'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version bin'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version bin'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version bin'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version bin'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version bin'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version bin'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version bin'" -l "all" -d "list the entire dependency tree according to the current lockfile / trust all untrusted dependencies (context dependent)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version ls'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version ls'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version ls'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version ls'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version ls'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version ls'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version ls'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version ls'" -l "all" -d "list the entire dependency tree according to the current lockfile / trust all untrusted dependencies (context dependent)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version why'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version why'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version why'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version why'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version why'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version why'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version why'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version why'" -l "all" -d "list the entire dependency tree according to the current lockfile / trust all untrusted dependencies (context dependent)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version whoami'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version whoami'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version whoami'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version whoami'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version whoami'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version whoami'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version whoami'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version whoami'" -l "all" -d "list the entire dependency tree according to the current lockfile / trust all untrusted dependencies (context dependent)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version view'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version view'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version view'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version view'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version view'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version view'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version view'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version view'" -l "all" -d "list the entire dependency tree according to the current lockfile / trust all untrusted dependencies (context dependent)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version version'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version version'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version version'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version version'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version version'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version version'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version version'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version version'" -l "all" -d "list the entire dependency tree according to the current lockfile / trust all untrusted dependencies (context dependent)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version pkg'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version pkg'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version pkg'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version pkg'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version pkg'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version pkg'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version pkg'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version pkg'" -l "all" -d "list the entire dependency tree according to the current lockfile / trust all untrusted dependencies (context dependent)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version hash'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version hash'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version hash'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version hash'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version hash'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version hash'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version hash'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version hash'" -l "all" -d "list the entire dependency tree according to the current lockfile / trust all untrusted dependencies (context dependent)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version hash-string'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version hash-string'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version hash-string'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version hash-string'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version hash-string'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version hash-string'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version hash-string'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version hash-string'" -l "all" -d "list the entire dependency tree according to the current lockfile / trust all untrusted dependencies (context dependent)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version hash-print'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version hash-print'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version hash-print'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version hash-print'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version hash-print'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version hash-print'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version hash-print'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version hash-print'" -l "all" -d "list the entire dependency tree according to the current lockfile / trust all untrusted dependencies (context dependent)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version cache'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version cache'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version cache'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version cache'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version cache'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version cache'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version cache'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version cache'" -l "all" -d "list the entire dependency tree according to the current lockfile / trust all untrusted dependencies (context dependent)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version migrate'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version migrate'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version migrate'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version migrate'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version migrate'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version migrate'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version migrate'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version migrate'" -l "all" -d "list the entire dependency tree according to the current lockfile / trust all untrusted dependencies (context dependent)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version untrusted'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version untrusted'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version untrusted'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version untrusted'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version untrusted'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version untrusted'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version untrusted'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version untrusted'" -l "all" -d "list the entire dependency tree according to the current lockfile / trust all untrusted dependencies (context dependent)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version trust'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version trust'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version trust'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version trust'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version trust'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version trust'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version trust'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version trust'" -l "all" -d "list the entire dependency tree according to the current lockfile / trust all untrusted dependencies (context dependent)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version default-trusted'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version default-trusted'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version default-trusted'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version default-trusted'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version default-trusted'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version default-trusted'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version default-trusted'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version default-trusted'" -l "all" -d "list the entire dependency tree according to the current lockfile / trust all untrusted dependencies (context dependent)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -l "dry-run" -d "do everything except for writing the tarball to disk" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -l "destination" -d "the directory the tarball will be saved in" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -l "filename" -d "the name of the tarball" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -l "gzip-level" -d "specify a custom compression level for gzip" -xa "0 1 2 3 4 5 6 7 8 9" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -l "quiet" -d "only output the tarball filename" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -s "g" -d "print the global path to bin folder" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -l "all" -d "list the entire dependency tree according to the current lockfile" # global
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -a "pack" -d "create a tarball of the current workspace" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -a "bin" -d "print the path to bin folder" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -a "ls" -d "list the dependency tree according to the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -a "why" -d "show dependency tree explaining why a package is installed" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -a "whoami" -d "print the current npm username" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -a "view" -d "view package metadata from the registry (use `bun info` instead)" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -a "version" -d "bump the version in package.json and create a git tag" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -a "pkg" -d "manage data in package.json" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -a "hash" -d "generate & print the hash of the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -a "hash-string" -d "print the string used to hash the lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -a "hash-print" -d "print the hash stored in the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -a "cache" -d "print the path to the cache folder" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -a "migrate" -d "migrate another package manager's lockfile without installing anything" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -a "untrusted" -d "print current untrusted dependencies with scripts" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -a "trustall" -d "trust all untrusted dependencies" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -a "trustnames" -d "run scripts for untrusted dependencies and add to `trustedDependencies`" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -a "default-trusted" -d "print the default trusted dependencies list" # sub
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg pack'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg pack'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg pack'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg pack'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg pack'" -l "gzip-level" -d "specify a custom compression level for gzip" -xa "0 1 2 3 4 5 6 7 8 9" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg pack'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg pack'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg pack'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg bin'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg bin'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg bin'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg bin'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg bin'" -l "gzip-level" -d "specify a custom compression level for gzip" -xa "0 1 2 3 4 5 6 7 8 9" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg bin'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg bin'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg bin'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg ls'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg ls'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg ls'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg ls'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg ls'" -l "gzip-level" -d "specify a custom compression level for gzip" -xa "0 1 2 3 4 5 6 7 8 9" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg ls'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg ls'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg ls'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg why'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg why'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg why'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg why'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg why'" -l "gzip-level" -d "specify a custom compression level for gzip" -xa "0 1 2 3 4 5 6 7 8 9" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg why'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg why'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg why'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg whoami'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg whoami'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg whoami'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg whoami'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg whoami'" -l "gzip-level" -d "specify a custom compression level for gzip" -xa "0 1 2 3 4 5 6 7 8 9" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg whoami'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg whoami'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg whoami'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg view'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg view'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg view'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg view'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg view'" -l "gzip-level" -d "specify a custom compression level for gzip" -xa "0 1 2 3 4 5 6 7 8 9" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg view'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg view'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg view'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg version'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg version'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg version'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg version'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg version'" -l "gzip-level" -d "specify a custom compression level for gzip" -xa "0 1 2 3 4 5 6 7 8 9" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg version'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg version'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg version'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg pkg'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg pkg'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg pkg'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg pkg'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg pkg'" -l "gzip-level" -d "specify a custom compression level for gzip" -xa "0 1 2 3 4 5 6 7 8 9" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg pkg'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg pkg'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg pkg'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg hash'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg hash'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg hash'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg hash'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg hash'" -l "gzip-level" -d "specify a custom compression level for gzip" -xa "0 1 2 3 4 5 6 7 8 9" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg hash'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg hash'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg hash'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg hash-string'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg hash-string'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg hash-string'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg hash-string'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg hash-string'" -l "gzip-level" -d "specify a custom compression level for gzip" -xa "0 1 2 3 4 5 6 7 8 9" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg hash-string'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg hash-string'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg hash-string'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg hash-print'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg hash-print'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg hash-print'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg hash-print'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg hash-print'" -l "gzip-level" -d "specify a custom compression level for gzip" -xa "0 1 2 3 4 5 6 7 8 9" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg hash-print'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg hash-print'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg hash-print'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg cache'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg cache'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg cache'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg cache'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg cache'" -l "gzip-level" -d "specify a custom compression level for gzip" -xa "0 1 2 3 4 5 6 7 8 9" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg cache'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg cache'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg cache'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg migrate'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg migrate'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg migrate'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg migrate'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg migrate'" -l "gzip-level" -d "specify a custom compression level for gzip" -xa "0 1 2 3 4 5 6 7 8 9" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg migrate'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg migrate'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg migrate'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg untrusted'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg untrusted'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg untrusted'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg untrusted'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg untrusted'" -l "gzip-level" -d "specify a custom compression level for gzip" -xa "0 1 2 3 4 5 6 7 8 9" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg untrusted'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg untrusted'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg untrusted'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg trustall'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg trustall'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg trustall'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg trustall'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg trustall'" -l "gzip-level" -d "specify a custom compression level for gzip" -xa "0 1 2 3 4 5 6 7 8 9" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg trustall'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg trustall'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg trustall'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg trustnames'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg trustnames'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg trustnames'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg trustnames'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg trustnames'" -l "gzip-level" -d "specify a custom compression level for gzip" -xa "0 1 2 3 4 5 6 7 8 9" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg trustnames'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg trustnames'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg trustnames'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg default-trusted'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg default-trusted'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg default-trusted'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg default-trusted'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg default-trusted'" -l "gzip-level" -d "specify a custom compression level for gzip" -xa "0 1 2 3 4 5 6 7 8 9" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg default-trusted'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg default-trusted'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg default-trusted'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -l "dry-run" -d "do everything except for writing the tarball to disk" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -l "destination" -d "the directory the tarball will be saved in" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -l "filename" -d "the name of the tarball" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -l "quiet" -d "only output the tarball filename" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -s "g" -d "print the global path to bin folder" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -l "all" -d "list the entire dependency tree according to the current lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -l "all" -d "trust all untrusted dependencies" # global
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -a "pack" -d "create a tarball of the current workspace" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -a "bin" -d "print the path to bin folder" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -a "ls" -d "list the dependency tree according to the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -a "why" -d "show dependency tree explaining why a package is installed" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -a "whoami" -d "print the current npm username" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -a "view" -d "view package metadata from the registry (use `bun info` instead)" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -a "version" -d "bump the version in package.json and create a git tag" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -a "pkg" -d "manage data in package.json" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -a "hash" -d "generate & print the hash of the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -a "hash-string" -d "print the string used to hash the lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -a "hash-print" -d "print the hash stored in the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -a "cache" -d "print the path to the cache folder" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -a "migrate" -d "migrate another package manager's lockfile without installing anything" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -a "untrusted" -d "print current untrusted dependencies with scripts" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -a "trust" -d "run scripts for untrusted dependencies and add to `trustedDependencies`" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -a "default-trusted" -d "print the default trusted dependencies list" # sub
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash pack'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash pack'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash pack'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash pack'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash pack'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash pack'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash pack'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash pack'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash pack'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash bin'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash bin'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash bin'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash bin'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash bin'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash bin'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash bin'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash bin'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash bin'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash ls'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash ls'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash ls'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash ls'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash ls'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash ls'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash ls'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash ls'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash ls'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash why'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash why'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash why'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash why'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash why'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash why'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash why'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash why'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash why'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash whoami'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash whoami'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash whoami'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash whoami'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash whoami'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash whoami'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash whoami'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash whoami'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash whoami'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash view'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash view'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash view'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash view'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash view'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash view'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash view'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash view'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash view'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash version'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash version'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash version'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash version'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash version'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash version'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash version'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash version'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash version'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash pkg'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash pkg'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash pkg'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash pkg'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash pkg'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash pkg'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash pkg'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash pkg'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash pkg'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash hash'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash hash'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash hash'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash hash'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash hash'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash hash'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash hash'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash hash'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash hash'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash hash-string'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash hash-string'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash hash-string'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash hash-string'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash hash-string'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash hash-string'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash hash-string'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash hash-string'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash hash-string'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash hash-print'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash hash-print'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash hash-print'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash hash-print'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash hash-print'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash hash-print'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash hash-print'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash hash-print'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash hash-print'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash cache'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash cache'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash cache'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash cache'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash cache'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash cache'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash cache'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash cache'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash cache'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash migrate'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash migrate'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash migrate'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash migrate'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash migrate'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash migrate'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash migrate'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash migrate'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash migrate'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash untrusted'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash untrusted'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash untrusted'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash untrusted'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash untrusted'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash untrusted'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash untrusted'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash untrusted'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash untrusted'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash trust'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash trust'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash trust'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash trust'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash trust'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash trust'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash trust'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash trust'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash trust'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash default-trusted'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash default-trusted'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash default-trusted'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash default-trusted'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash default-trusted'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash default-trusted'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash default-trusted'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash default-trusted'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash default-trusted'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -l "dry-run" -d "do everything except for writing the tarball to disk" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -l "destination" -d "the directory the tarball will be saved in" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -l "filename" -d "the name of the tarball" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -l "quiet" -d "only output the tarball filename" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -s "g" -d "print the global path to bin folder" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -l "all" -d "list the entire dependency tree according to the current lockfile" # global
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -a "pack" -d "create a tarball of the current workspace" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -a "bin" -d "print the path to bin folder" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -a "ls" -d "list the dependency tree according to the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -a "why" -d "show dependency tree explaining why a package is installed" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -a "whoami" -d "print the current npm username" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -a "view" -d "view package metadata from the registry (use `bun info` instead)" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -a "version" -d "bump the version in package.json and create a git tag" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -a "pkg" -d "manage data in package.json" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -a "hash" -d "generate & print the hash of the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -a "hash-string" -d "print the string used to hash the lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -a "hash-print" -d "print the hash stored in the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -a "cache" -d "print the path to the cache folder" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -a "migrate" -d "migrate another package manager's lockfile without installing anything" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -a "untrusted" -d "print current untrusted dependencies with scripts" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -a "trust" -d "run scripts for untrusted dependencies and add to `trustedDependencies`" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -a "default-trusted" -d "print the default trusted dependencies list" # sub
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string pack'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string pack'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string pack'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string pack'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string pack'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string pack'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string pack'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string pack'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string bin'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string bin'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string bin'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string bin'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string bin'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string bin'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string bin'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string bin'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string ls'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string ls'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string ls'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string ls'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string ls'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string ls'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string ls'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string ls'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string why'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string why'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string why'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string why'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string why'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string why'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string why'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string why'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string whoami'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string whoami'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string whoami'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string whoami'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string whoami'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string whoami'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string whoami'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string whoami'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string view'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string view'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string view'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string view'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string view'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string view'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string view'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string view'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string version'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string version'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string version'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string version'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string version'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string version'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string version'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string version'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string pkg'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string pkg'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string pkg'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string pkg'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string pkg'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string pkg'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string pkg'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string pkg'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string hash'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string hash'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string hash'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string hash'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string hash'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string hash'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string hash'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string hash'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string hash-string'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string hash-string'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string hash-string'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string hash-string'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string hash-string'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string hash-string'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string hash-string'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string hash-string'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string hash-print'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string hash-print'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string hash-print'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string hash-print'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string hash-print'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string hash-print'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string hash-print'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string hash-print'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string cache'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string cache'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string cache'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string cache'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string cache'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string cache'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string cache'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string cache'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string migrate'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string migrate'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string migrate'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string migrate'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string migrate'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string migrate'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string migrate'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string migrate'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string untrusted'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string untrusted'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string untrusted'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string untrusted'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string untrusted'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string untrusted'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string untrusted'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string untrusted'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string trust'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string trust'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string trust'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string trust'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string trust'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string trust'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string trust'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string trust'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string default-trusted'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string default-trusted'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string default-trusted'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string default-trusted'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string default-trusted'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string default-trusted'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string default-trusted'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string default-trusted'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -l "dry-run" -d "do everything except for writing the tarball to disk" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -l "destination" -d "the directory the tarball will be saved in" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -l "filename" -d "the name of the tarball" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -l "quiet" -d "only output the tarball filename" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -s "g" -d "print the global path to bin folder" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -l "all" -d "list the entire dependency tree according to the current lockfile" # global
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -a "pack" -d "create a tarball of the current workspace" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -a "bin" -d "print the path to bin folder" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -a "ls" -d "list the dependency tree according to the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -a "whypkg" -d "show dependency tree explaining why a package is installed" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -a "whoami" -d "print the current npm username" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -a "viewnameversion" -d "view package metadata from the registry (use `bun info` instead)" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -a "versionincrement" -d "bump the version in package.json and create a git tag" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -a "pkg" -d "manage data in package.json" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -a "hash" -d "generate & print the hash of the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -a "hash-string" -d "print the string used to hash the lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -a "hash-print" -d "print the hash stored in the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -a "cache" -d "print the path to the cache folder" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -a "cacherm" -d "clear the cache" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -a "migrate" -d "migrate another package manager's lockfile without installing anything" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -a "untrusted" -d "print current untrusted dependencies with scripts" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -a "trustnames" -d "run scripts for untrusted dependencies and add to `trustedDependencies`" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -a "default-trusted" -d "print the default trusted dependencies list" # sub
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print pack'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print pack'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print pack'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print pack'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print pack'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print pack'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print pack'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print pack'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print bin'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print bin'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print bin'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print bin'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print bin'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print bin'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print bin'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print bin'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print ls'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print ls'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print ls'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print ls'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print ls'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print ls'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print ls'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print ls'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print whypkg'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print whypkg'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print whypkg'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print whypkg'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print whypkg'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print whypkg'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print whypkg'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print whypkg'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print whoami'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print whoami'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print whoami'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print whoami'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print whoami'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print whoami'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print whoami'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print whoami'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print viewnameversion'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print viewnameversion'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print viewnameversion'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print viewnameversion'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print viewnameversion'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print viewnameversion'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print viewnameversion'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print viewnameversion'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print versionincrement'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print versionincrement'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print versionincrement'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print versionincrement'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print versionincrement'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print versionincrement'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print versionincrement'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print versionincrement'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print pkg'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print pkg'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print pkg'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print pkg'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print pkg'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print pkg'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print pkg'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print pkg'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print hash'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print hash'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print hash'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print hash'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print hash'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print hash'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print hash'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print hash'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print hash-string'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print hash-string'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print hash-string'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print hash-string'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print hash-string'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print hash-string'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print hash-string'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print hash-string'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print hash-print'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print hash-print'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print hash-print'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print hash-print'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print hash-print'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print hash-print'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print hash-print'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print hash-print'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print cache'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print cache'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print cache'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print cache'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print cache'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print cache'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print cache'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print cache'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print cacherm'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print cacherm'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print cacherm'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print cacherm'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print cacherm'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print cacherm'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print cacherm'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print cacherm'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print migrate'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print migrate'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print migrate'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print migrate'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print migrate'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print migrate'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print migrate'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print migrate'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print untrusted'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print untrusted'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print untrusted'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print untrusted'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print untrusted'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print untrusted'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print untrusted'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print untrusted'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print trustnames'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print trustnames'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print trustnames'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print trustnames'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print trustnames'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print trustnames'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print trustnames'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print trustnames'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print default-trusted'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print default-trusted'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print default-trusted'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print default-trusted'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print default-trusted'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print default-trusted'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print default-trusted'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print default-trusted'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -l "dry-run" -d "do everything except for writing the tarball to disk" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -l "destination" -d "the directory the tarball will be saved in" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -l "filename" -d "the name of the tarball" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -l "quiet" -d "only output the tarball filename" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -s "g" -d "print the global path to bin folder" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -l "all" -d "list the entire dependency tree according to the current lockfile" # global
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -a "pack" -d "create a tarball of the current workspace" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -a "bin" -d "print the path to bin folder" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -a "ls" -d "list the dependency tree according to the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -a "why" -d "show dependency tree explaining why a package is installed" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -a "whoami" -d "print the current npm username" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -a "view" -d "view package metadata from the registry (use `bun info` instead)" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -a "version" -d "bump the version in package.json and create a git tag" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -a "pkg" -d "manage data in package.json" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -a "hash" -d "generate & print the hash of the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -a "hash-string" -d "print the string used to hash the lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -a "hash-print" -d "print the hash stored in the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -a "cache" -d "print the path to the cache folder" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -a "migrate" -d "migrate another package manager's lockfile without installing anything" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -a "untrusted" -d "print current untrusted dependencies with scripts" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -a "trust" -d "run scripts for untrusted dependencies and add to `trustedDependencies`" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -a "default-trusted" -d "print the default trusted dependencies list" # sub
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache pack'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache pack'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache pack'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache pack'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache pack'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache pack'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache pack'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache pack'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache bin'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache bin'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache bin'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache bin'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache bin'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache bin'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache bin'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache bin'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache ls'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache ls'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache ls'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache ls'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache ls'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache ls'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache ls'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache ls'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache why'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache why'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache why'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache why'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache why'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache why'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache why'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache why'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache whoami'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache whoami'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache whoami'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache whoami'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache whoami'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache whoami'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache whoami'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache whoami'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache view'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache view'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache view'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache view'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache view'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache view'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache view'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache view'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache version'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache version'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache version'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache version'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache version'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache version'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache version'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache version'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache pkg'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache pkg'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache pkg'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache pkg'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache pkg'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache pkg'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache pkg'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache pkg'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache hash'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache hash'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache hash'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache hash'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache hash'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache hash'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache hash'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache hash'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache hash-string'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache hash-string'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache hash-string'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache hash-string'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache hash-string'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache hash-string'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache hash-string'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache hash-string'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache hash-print'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache hash-print'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache hash-print'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache hash-print'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache hash-print'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache hash-print'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache hash-print'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache hash-print'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache cache'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache cache'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache cache'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache cache'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache cache'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache cache'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache cache'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache cache'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache migrate'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache migrate'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache migrate'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache migrate'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache migrate'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache migrate'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache migrate'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache migrate'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache untrusted'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache untrusted'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache untrusted'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache untrusted'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache untrusted'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache untrusted'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache untrusted'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache untrusted'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache trust'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache trust'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache trust'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache trust'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache trust'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache trust'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache trust'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache trust'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache default-trusted'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache default-trusted'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache default-trusted'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache default-trusted'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache default-trusted'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache default-trusted'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache default-trusted'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache default-trusted'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -l "dry-run" -d "do everything except for writing the tarball to disk" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -l "destination" -d "the directory the tarball will be saved in" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -l "filename" -d "the name of the tarball" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -l "quiet" -d "only output the tarball filename" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -s "g" -d "print the global path to bin folder" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -l "all" -d "list the entire dependency tree according to the current lockfile" # global
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -a "pack" -d "create a tarball of the current workspace" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -a "bin" -d "print the path to bin folder" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -a "ls" -d "list the dependency tree according to the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -a "why" -d "show dependency tree explaining why a package is installed" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -a "whoami" -d "print the current npm username" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -a "view" -d "view package metadata from the registry (use `bun info` instead)" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -a "version" -d "bump the version in package.json and create a git tag" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -a "pkg" -d "manage data in package.json" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -a "hash" -d "generate & print the hash of the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -a "hash-string" -d "print the string used to hash the lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -a "hash-print" -d "print the hash stored in the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -a "cache" -d "print the path to the cache folder" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -a "migrate" -d "migrate another package manager's lockfile without installing anything" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -a "untrusted" -d "print current untrusted dependencies with scripts" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -a "trust" -d "run scripts for untrusted dependencies and add to `trustedDependencies`" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -a "default-trusted" -d "print the default trusted dependencies list" # sub
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate pack'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate pack'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate pack'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate pack'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate pack'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate pack'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate pack'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate pack'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate bin'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate bin'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate bin'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate bin'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate bin'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate bin'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate bin'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate bin'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate ls'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate ls'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate ls'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate ls'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate ls'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate ls'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate ls'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate ls'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate why'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate why'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate why'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate why'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate why'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate why'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate why'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate why'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate whoami'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate whoami'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate whoami'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate whoami'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate whoami'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate whoami'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate whoami'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate whoami'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate view'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate view'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate view'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate view'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate view'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate view'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate view'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate view'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate version'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate version'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate version'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate version'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate version'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate version'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate version'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate version'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate pkg'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate pkg'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate pkg'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate pkg'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate pkg'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate pkg'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate pkg'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate pkg'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate hash'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate hash'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate hash'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate hash'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate hash'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate hash'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate hash'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate hash'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate hash-string'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate hash-string'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate hash-string'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate hash-string'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate hash-string'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate hash-string'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate hash-string'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate hash-string'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate hash-print'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate hash-print'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate hash-print'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate hash-print'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate hash-print'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate hash-print'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate hash-print'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate hash-print'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate cache'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate cache'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate cache'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate cache'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate cache'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate cache'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate cache'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate cache'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate migrate'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate migrate'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate migrate'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate migrate'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate migrate'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate migrate'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate migrate'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate migrate'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate untrusted'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate untrusted'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate untrusted'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate untrusted'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate untrusted'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate untrusted'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate untrusted'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate untrusted'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate trust'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate trust'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate trust'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate trust'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate trust'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate trust'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate trust'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate trust'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate default-trusted'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate default-trusted'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate default-trusted'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate default-trusted'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate default-trusted'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate default-trusted'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate default-trusted'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate default-trusted'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -l "dry-run" -d "do everything except for writing the tarball to disk" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -l "destination" -d "the directory the tarball will be saved in" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -l "filename" -d "the name of the tarball" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -l "quiet" -d "only output the tarball filename" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -s "g" -d "print the global path to bin folder" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -l "all" -d "list the entire dependency tree according to the current lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -l "all" -d "trust all untrusted dependencies" # global
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -a "pack" -d "create a tarball of the current workspace" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -a "bin" -d "print the path to bin folder" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -a "ls" -d "list the dependency tree according to the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -a "why" -d "show dependency tree explaining why a package is installed" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -a "whoami" -d "print the current npm username" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -a "view" -d "view package metadata from the registry (use `bun info` instead)" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -a "version" -d "bump the version in package.json and create a git tag" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -a "pkg" -d "manage data in package.json" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -a "hash" -d "generate & print the hash of the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -a "hash-string" -d "print the string used to hash the lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -a "hash-print" -d "print the hash stored in the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -a "cache" -d "print the path to the cache folder" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -a "migrate" -d "migrate another package manager's lockfile without installing anything" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -a "untrusted" -d "print current untrusted dependencies with scripts" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -a "trust" -d "run scripts for untrusted dependencies and add to `trustedDependencies`" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -a "default-trusted" -d "print the default trusted dependencies list" # sub
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted pack'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted pack'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted pack'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted pack'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted pack'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted pack'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted pack'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted pack'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted pack'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted bin'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted bin'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted bin'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted bin'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted bin'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted bin'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted bin'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted bin'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted bin'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted ls'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted ls'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted ls'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted ls'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted ls'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted ls'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted ls'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted ls'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted ls'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted why'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted why'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted why'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted why'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted why'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted why'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted why'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted why'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted why'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted whoami'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted whoami'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted whoami'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted whoami'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted whoami'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted whoami'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted whoami'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted whoami'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted whoami'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted view'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted view'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted view'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted view'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted view'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted view'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted view'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted view'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted view'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted version'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted version'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted version'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted version'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted version'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted version'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted version'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted version'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted version'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted pkg'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted pkg'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted pkg'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted pkg'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted pkg'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted pkg'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted pkg'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted pkg'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted pkg'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted hash'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted hash'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted hash'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted hash'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted hash'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted hash'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted hash'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted hash'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted hash'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted hash-string'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted hash-string'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted hash-string'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted hash-string'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted hash-string'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted hash-string'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted hash-string'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted hash-string'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted hash-string'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted hash-print'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted hash-print'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted hash-print'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted hash-print'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted hash-print'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted hash-print'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted hash-print'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted hash-print'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted hash-print'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted cache'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted cache'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted cache'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted cache'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted cache'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted cache'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted cache'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted cache'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted cache'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted migrate'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted migrate'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted migrate'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted migrate'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted migrate'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted migrate'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted migrate'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted migrate'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted migrate'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted untrusted'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted untrusted'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted untrusted'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted untrusted'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted untrusted'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted untrusted'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted untrusted'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted untrusted'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted untrusted'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted trust'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted trust'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted trust'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted trust'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted trust'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted trust'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted trust'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted trust'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted trust'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted default-trusted'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted default-trusted'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted default-trusted'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted default-trusted'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted default-trusted'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted default-trusted'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted default-trusted'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted default-trusted'" -l "all" -d "list the entire dependency tree according to the current lockfile" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted default-trusted'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -l "dry-run" -d "do everything except for writing the tarball to disk" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -l "destination" -d "the directory the tarball will be saved in" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -l "filename" -d "the name of the tarball" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -l "quiet" -d "only output the tarball filename" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -s "g" -d "print the global path to bin folder" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -l "all" -d "trust all untrusted dependencies" # global
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -a "pack" -d "create a tarball of the current workspace" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -a "bin" -d "print the path to bin folder" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -a "ls" -d "list the dependency tree according to the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -a "why" -d "show dependency tree explaining why a package is installed" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -a "whoami" -d "print the current npm username" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -a "view" -d "view package metadata from the registry (use `bun info` instead)" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -a "version" -d "bump the version in package.json and create a git tag" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -a "pkg" -d "manage data in package.json" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -a "hash" -d "generate & print the hash of the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -a "hash-string" -d "print the string used to hash the lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -a "hash-print" -d "print the hash stored in the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -a "cache" -d "print the path to the cache folder" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -a "migrate" -d "migrate another package manager's lockfile without installing anything" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -a "untrusted" -d "print current untrusted dependencies with scripts" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -a "trust" -d "run scripts for untrusted dependencies and add to `trustedDependencies`" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -a "default-trusted" -d "print the default trusted dependencies list" # sub
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust pack'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust pack'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust pack'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust pack'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust pack'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust pack'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust pack'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust pack'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust bin'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust bin'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust bin'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust bin'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust bin'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust bin'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust bin'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust bin'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust ls'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust ls'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust ls'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust ls'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust ls'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust ls'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust ls'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust ls'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust why'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust why'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust why'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust why'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust why'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust why'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust why'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust why'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust whoami'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust whoami'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust whoami'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust whoami'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust whoami'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust whoami'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust whoami'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust whoami'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust view'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust view'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust view'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust view'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust view'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust view'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust view'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust view'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust version'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust version'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust version'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust version'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust version'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust version'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust version'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust version'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust pkg'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust pkg'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust pkg'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust pkg'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust pkg'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust pkg'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust pkg'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust pkg'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust hash'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust hash'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust hash'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust hash'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust hash'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust hash'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust hash'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust hash'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust hash-string'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust hash-string'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust hash-string'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust hash-string'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust hash-string'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust hash-string'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust hash-string'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust hash-string'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust hash-print'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust hash-print'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust hash-print'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust hash-print'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust hash-print'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust hash-print'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust hash-print'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust hash-print'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust cache'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust cache'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust cache'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust cache'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust cache'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust cache'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust cache'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust cache'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust migrate'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust migrate'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust migrate'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust migrate'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust migrate'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust migrate'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust migrate'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust migrate'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust untrusted'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust untrusted'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust untrusted'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust untrusted'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust untrusted'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust untrusted'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust untrusted'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust untrusted'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust trust'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust trust'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust trust'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust trust'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust trust'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust trust'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust trust'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust trust'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust default-trusted'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust default-trusted'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust default-trusted'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust default-trusted'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust default-trusted'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust default-trusted'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust default-trusted'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust default-trusted'" -l "all" -d "trust all untrusted dependencies" # subcommands flags
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm default-trusted'" -a "pack" -d "create a tarball of the current workspace" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm default-trusted'" -a "bin" -d "print the path to bin folder" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm default-trusted'" -a "ls" -d "list the dependency tree according to the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm default-trusted'" -a "why" -d "show dependency tree explaining why a package is installed" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm default-trusted'" -a "whoami" -d "print the current npm username" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm default-trusted'" -a "view" -d "view package metadata from the registry (use `bun info` instead)" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm default-trusted'" -a "version" -d "bump the version in package.json and create a git tag" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm default-trusted'" -a "pkg" -d "manage data in package.json" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm default-trusted'" -a "hash" -d "generate & print the hash of the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm default-trusted'" -a "hash-string" -d "print the string used to hash the lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm default-trusted'" -a "hash-print" -d "print the hash stored in the current lockfile" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm default-trusted'" -a "cache" -d "print the path to the cache folder" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm default-trusted'" -a "migrate" -d "migrate another package manager's lockfile without installing anything" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm default-trusted'" -a "untrusted" -d "print current untrusted dependencies with scripts" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm default-trusted'" -a "trust" -d "run scripts for untrusted dependencies and add to `trustedDependencies`" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm default-trusted'" -a "default-trusted" -d "print the default trusted dependencies list" # sub
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -s "c" -l "config" -d "Specify path to config file (bunfig.toml)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -s "y" -l "yarn" -d "Write a yarn.lock file (yarn v1)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -s "p" -l "production" -d "Don't install devDependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "no-save" -d "Don't update package.json or save a lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "save" -d "Save to package.json (true by default)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "ca" -d "Provide a Certificate Authority signing certificate" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "cafile" -d "The same as `--ca`, but is a file path to the certificate" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "dry-run" -d "Don't install anything" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "frozen-lockfile" -d "Disallow changes to lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -s "f" -l "force" -d "Always request the latest versions from the registry & reinstall all dependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "cache-dir" -d "Store & load cached data from a specific directory path" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "no-cache" -d "Ignore manifest cache entirely" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "silent" -d "Don't log anything" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "quiet" -d "Only show tarball name when packing" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "verbose" -d "Excessively verbose logging" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "no-progress" -d "Disable the progress bar" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "no-summary" -d "Don't print a summary" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "no-verify" -d "Skip verifying integrity of newly downloaded packages" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "ignore-scripts" -d "Skip lifecycle scripts in the project's package.json (dependency scripts are never run)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "trust" -d "Add to trustedDependencies in the project's package.json and install the package(s)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -s "g" -l "global" -d "Install globally" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "cwd" -d "Set a specific cwd" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "backend" -d "Platform-specific optimizations for installing dependencies. Possible values: \"clonefile\" (default), \"hardlink\", \"symlink\", \"copyfile\"" -xa "clonefile hardlink symlink copyfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "registry" -d "Use a specific registry by default, overriding .npmrc, bunfig.toml and environment variables" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "concurrent-scripts" -d "Maximum number of concurrent jobs for lifecycle scripts (default 5)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "network-concurrency" -d "Maximum number of concurrent network requests (default 48)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "save-text-lockfile" -d "Save a text-based lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "omit" -d "Exclude 'dev', 'optional', or 'peer' dependencies from install" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "lockfile-only" -d "Generate a lockfile without installing dependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "linker" -d "Linker strategy (one of \"isolated\" or \"hoisted\")" -xa "isolated hoisted" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -s "h" -l "help" -d "Print this help menu" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "json" -d "Output in JSON format" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "production" -d "Set NODE_ENV=production and enable minification" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "compile" -d "Generate a standalone Bun executable containing your bundled code. Implies --production" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "bytecode" -d "Use a bytecode cache" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "watch" -d "Automatically restart the process on file change" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "no-clear-screen" -d "Disable clearing the terminal screen on reload when --watch is enabled" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "target" -d "The intended execution environment for the bundle." -xa "browser bun node" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "outdir" -d "Default to \"dist\" if multiple files" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "outfile" -d "Write to a file" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "sourcemap" -d "Build with sourcemaps" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "banner" -d "Add a banner to the bundled output such as \"use client\"; for a bundle being used with RSCs" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "footer" -d "Add a footer to the bundled output such as // built with bun!" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "format" -d "Specifies the module format to build to. Defaults to \"esm\"." -xa "esm cjs iife" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "root" -d "Root directory used for multiple entry points" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "splitting" -d "Enable code splitting" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "public-path" -d "A prefix to be appended to any import paths in bundled code" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -s "e" -l "external" -d "Exclude module from transpilation (can use * wildcards). ex: -e react" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "packages" -d "Add dependencies to bundle or keep them external. Defaults to \"bundle\"." -xa "external bundle" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "entry-naming" -d "Customize entry point filenames. Defaults to \"[dir]/[name].[ext]\"" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "chunk-naming" -d "Customize chunk filenames. Defaults to \"[name]-[hash].[ext]\"" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "asset-naming" -d "Customize asset filenames. Defaults to \"[name]-[hash].[ext]\"" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "react-fast-refresh" -d "Enable React Fast Refresh transform (does not emit hot-module code, use this for testing)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "no-bundle" -d "Transpile file only, do not bundle" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "emit-dce-annotations" -d "Re-emit DCE annotations in bundles. Enabled by default unless --minify-whitespace is passed." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "minify" -d "Enable all minification flags" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "minify-syntax" -d "Minify syntax and inline data" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "minify-whitespace" -d "Minify whitespace" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "minify-identifiers" -d "Minify identifiers" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "css-chunking" -d "Chunk CSS files together to reduce duplicated CSS loaded in a browser. Only has an effect when multiple entrypoints import CSS" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "conditions" -d "Pass custom conditions to resolve" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "app" -d "(EXPERIMENTAL) Build a web app for production using Bun Bake." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "server-components" -d "(EXPERIMENTAL) Enable server components" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "env" -d "Inline environment variables into the bundle as process.env.＄{name}. Defaults to 'disable'. To inline environment variables matching a prefix, use my prefix like 'FOO_PUBLIC_*'." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "windows-hide-console" -d "When using --compile targeting Windows, prevent a Command prompt from opening alongside the executable" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "windows-icon" -d "When using --compile targeting Windows, assign an executable icon" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "debug-dump-server-files" -d "When --app is set, dump all server files to disk even when building statically" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "debug-no-minify" -d "When --app is set, do not minify anything" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "help" -d "Print this menu" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -s "y" -l "yes" -d "Accept all default options" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -s "m" -l "minimal" -d "Only initialize type definitions" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -s "r" -l "react" -d "Initialize a React project" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "react=tailwind" -d "Initialize a React project with TailwindCSS" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "react=shadcn" -d "Initialize a React project with @shadcn/ui and TailwindCSS" # global