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
complete -c "bun" -l "cpu-prof" -d "Start CPU profiler and write profile to disk on exit" # global
complete -c "bun" -l "cpu-prof-name" -d "Specify the name of the CPU profile file" # global
complete -c "bun" -l "cpu-prof-dir" -d "Specify the directory where the CPU profile will be saved" # global
complete -c "bun" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # global
complete -c "bun" -l "no-install" -d "Disable auto install in the Bun runtime" # global
complete -c "bun" -l "install" -d "Configure auto-install behavior." -xa "auto fallback force" # global
complete -c "bun" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # global
complete -c "bun" -s "e" -l "eval" -d "Evaluate argument as a script" # global
complete -c "bun" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # global
complete -c "bun" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # global
complete -c "bun" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # global
complete -c "bun" -l "port" -d "Set the default port for Bun.serve" # global
complete -c "bun" -l "conditions" -d "Pass custom conditions to resolve" # global
complete -c "bun" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # global
complete -c "bun" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # global
complete -c "bun" -l "dns-result-order" -d "Set the default order of DNS lookup results." -xa "verbatim ipv4first ipv6first" # global
complete -c "bun" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # global
complete -c "bun" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # global
complete -c "bun" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # global
complete -c "bun" -l "title" -d "Set the process title" # global
complete -c "bun" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # global
complete -c "bun" -l "use-system-ca" -d "Use the system's trusted certificate authorities" # global
complete -c "bun" -l "use-openssl-ca" -d "Use OpenSSL's default CA store" # global
complete -c "bun" -l "use-bundled-ca" -d "Use bundled CA store" # global
complete -c "bun" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # global
complete -c "bun" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # global
complete -c "bun" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # global
complete -c "bun" -l "unhandled-rejections" -xa "strict throw warn none warn-with-error-code" # global
complete -c "bun" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # global
complete -c "bun" -l "user-agent" -d "Set the default User-Agent header for HTTP requests" # global
complete -c "bun" -l "silent" -d "Don't print the script command" # global
complete -c "bun" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # global
complete -c "bun" -s "v" -l "version" -d "Print version and exit" # global
complete -c "bun" -l "revision" -d "Print version with revision and exit" # global
complete -c "bun" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # global
complete -c "bun" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # global
complete -c "bun" -l "shell" -d "Control the shell used for package.json scripts." -xa "bun system" # global
complete -c "bun" -l "workspaces" -d "Run a script in all workspace packages (from the \"workspaces\" field in package.json)" # global
complete -c "bun" -l "env-file" -d "Load environment variables from the specified file(s)" # global
complete -c "bun" -l "no-env-file" -d "Disable automatic loading of .env files" # global
complete -c "bun" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # global
complete -c "bun" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # global
complete -c "bun" -s "h" -l "help" -d "Display this menu and exit" # global
complete -f -c "bun" -n "__fish_use_subcommand" -a "run" -d "Execute a file with Bun" # sub
complete -f -c "bun" -n "__fish_use_subcommand" -a "test" -d "Run unit tests with Bun" # sub
complete -f -c "bun" -n "__fish_use_subcommand" -a "x" -d "Execute a package binary (CLI), installing if needed (bunx)" # sub
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
complete -f -c "bun" -n "__fish_use_subcommand" -a "why" -d "Explain why a package is installed" # sub
complete -f -c "bun" -n "__fish_use_subcommand" -a "build" -d "Bundle TypeScript & JavaScript into a single file" # sub
complete -f -c "bun" -n "__fish_use_subcommand" -a "init" -d "Start an empty Bun project from a built-in template" # sub
complete -f -c "bun" -n "__fish_use_subcommand" -a "create" -d "Create a new project from a template (bun c)" # sub
complete -f -c "bun" -n "__fish_use_subcommand" -a "upgrade" -d "Upgrade to latest version of Bun." # sub
complete -f -c "bun" -n "__fish_use_subcommand" -a "feedback" -d "Provide feedback to the Bun team." # sub
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
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "cpu-prof" -d "Start CPU profiler and write profile to disk on exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "cpu-prof-name" -d "Specify the name of the CPU profile file" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "cpu-prof-dir" -d "Specify the directory where the CPU profile will be saved" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "install" -d "Configure auto-install behavior." -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "dns-result-order" -d "Set the default order of DNS lookup results." -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "use-system-ca" -d "Use the system's trusted certificate authorities" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "use-openssl-ca" -d "Use OpenSSL's default CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "use-bundled-ca" -d "Use bundled CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "unhandled-rejections" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "user-agent" -d "Set the default User-Agent header for HTTP requests" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "shell" -d "Control the shell used for package.json scripts." -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "workspaces" -d "Run a script in all workspace packages (from the \"workspaces\" field in package.json)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "no-env-file" -d "Disable automatic loading of .env files" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
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
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "cpu-prof" -d "Start CPU profiler and write profile to disk on exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "cpu-prof-name" -d "Specify the name of the CPU profile file" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "cpu-prof-dir" -d "Specify the directory where the CPU profile will be saved" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "install" -d "Configure auto-install behavior." -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "dns-result-order" -d "Set the default order of DNS lookup results." -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "use-system-ca" -d "Use the system's trusted certificate authorities" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "use-openssl-ca" -d "Use OpenSSL's default CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "use-bundled-ca" -d "Use bundled CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "unhandled-rejections" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "user-agent" -d "Set the default User-Agent header for HTTP requests" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "shell" -d "Control the shell used for package.json scripts." -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "workspaces" -d "Run a script in all workspace packages (from the \"workspaces\" field in package.json)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "no-env-file" -d "Disable automatic loading of .env files" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "watch" -d "Automatically restart the process on file change" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "hot" -d "Enable auto reload in the Bun runtime, test runner, or bundler" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "no-clear-screen" -d "Disable clearing the terminal screen on reload when --hot or --watch is enabled" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "smol" -d "Use less memory, but run garbage collection more often" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -s "r" -l "preload" -d "Import a module before other modules are loaded" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "require" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "import" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "inspect" -d "Activate Bun's debugger" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "inspect-wait" -d "Activate Bun's debugger, wait for a connection before executing" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "inspect-brk" -d "Activate Bun's debugger, set breakpoint on first line of code and wait" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "cpu-prof" -d "Start CPU profiler and write profile to disk on exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "cpu-prof-name" -d "Specify the name of the CPU profile file" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "cpu-prof-dir" -d "Specify the directory where the CPU profile will be saved" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "install" -d "Configure auto-install behavior." -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "dns-result-order" -d "Set the default order of DNS lookup results." -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "use-system-ca" -d "Use the system's trusted certificate authorities" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "use-openssl-ca" -d "Use OpenSSL's default CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "use-bundled-ca" -d "Use bundled CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "unhandled-rejections" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "user-agent" -d "Set the default User-Agent header for HTTP requests" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "shell" -d "Control the shell used for package.json scripts." -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "workspaces" -d "Run a script in all workspace packages (from the \"workspaces\" field in package.json)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "no-env-file" -d "Disable automatic loading of .env files" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
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
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "cpu-prof" -d "Start CPU profiler and write profile to disk on exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "cpu-prof-name" -d "Specify the name of the CPU profile file" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "cpu-prof-dir" -d "Specify the directory where the CPU profile will be saved" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "install" -d "Configure auto-install behavior." -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "dns-result-order" -d "Set the default order of DNS lookup results." -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "use-system-ca" -d "Use the system's trusted certificate authorities" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "use-openssl-ca" -d "Use OpenSSL's default CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "use-bundled-ca" -d "Use bundled CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "unhandled-rejections" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "user-agent" -d "Set the default User-Agent header for HTTP requests" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "shell" -d "Control the shell used for package.json scripts." -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "workspaces" -d "Run a script in all workspace packages (from the \"workspaces\" field in package.json)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "no-env-file" -d "Disable automatic loading of .env files" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'repl'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
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
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "cpu-prof" -d "Start CPU profiler and write profile to disk on exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "cpu-prof-name" -d "Specify the name of the CPU profile file" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "cpu-prof-dir" -d "Specify the directory where the CPU profile will be saved" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "install" -d "Configure auto-install behavior." -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "dns-result-order" -d "Set the default order of DNS lookup results." -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "use-system-ca" -d "Use the system's trusted certificate authorities" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "use-openssl-ca" -d "Use OpenSSL's default CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "use-bundled-ca" -d "Use bundled CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "unhandled-rejections" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "user-agent" -d "Set the default User-Agent header for HTTP requests" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "shell" -d "Control the shell used for package.json scripts." -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "workspaces" -d "Run a script in all workspace packages (from the \"workspaces\" field in package.json)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "no-env-file" -d "Disable automatic loading of .env files" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'exec'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
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
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "cpu-prof" -d "Start CPU profiler and write profile to disk on exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "cpu-prof-name" -d "Specify the name of the CPU profile file" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "cpu-prof-dir" -d "Specify the directory where the CPU profile will be saved" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "install" -d "Configure auto-install behavior." -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "dns-result-order" -d "Set the default order of DNS lookup results." -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "use-system-ca" -d "Use the system's trusted certificate authorities" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "use-openssl-ca" -d "Use OpenSSL's default CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "use-bundled-ca" -d "Use bundled CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "unhandled-rejections" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "user-agent" -d "Set the default User-Agent header for HTTP requests" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "shell" -d "Control the shell used for package.json scripts." -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "workspaces" -d "Run a script in all workspace packages (from the \"workspaces\" field in package.json)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "no-env-file" -d "Disable automatic loading of .env files" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
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
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "cpu-prof" -d "Start CPU profiler and write profile to disk on exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "cpu-prof-name" -d "Specify the name of the CPU profile file" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "cpu-prof-dir" -d "Specify the directory where the CPU profile will be saved" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "install" -d "Configure auto-install behavior." -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "dns-result-order" -d "Set the default order of DNS lookup results." -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "use-system-ca" -d "Use the system's trusted certificate authorities" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "use-openssl-ca" -d "Use OpenSSL's default CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "use-bundled-ca" -d "Use bundled CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "unhandled-rejections" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "user-agent" -d "Set the default User-Agent header for HTTP requests" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "shell" -d "Control the shell used for package.json scripts." -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "workspaces" -d "Run a script in all workspace packages (from the \"workspaces\" field in package.json)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "no-env-file" -d "Disable automatic loading of .env files" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
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
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "cpu-prof" -d "Start CPU profiler and write profile to disk on exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "cpu-prof-name" -d "Specify the name of the CPU profile file" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "cpu-prof-dir" -d "Specify the directory where the CPU profile will be saved" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "install" -d "Configure auto-install behavior." -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "dns-result-order" -d "Set the default order of DNS lookup results." -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "use-system-ca" -d "Use the system's trusted certificate authorities" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "use-openssl-ca" -d "Use OpenSSL's default CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "use-bundled-ca" -d "Use bundled CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "unhandled-rejections" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "user-agent" -d "Set the default User-Agent header for HTTP requests" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "shell" -d "Control the shell used for package.json scripts." -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "workspaces" -d "Run a script in all workspace packages (from the \"workspaces\" field in package.json)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "no-env-file" -d "Disable automatic loading of .env files" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
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
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "cpu-prof" -d "Start CPU profiler and write profile to disk on exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "cpu-prof-name" -d "Specify the name of the CPU profile file" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "cpu-prof-dir" -d "Specify the directory where the CPU profile will be saved" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "install" -d "Configure auto-install behavior." -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "dns-result-order" -d "Set the default order of DNS lookup results." -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "use-system-ca" -d "Use the system's trusted certificate authorities" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "use-openssl-ca" -d "Use OpenSSL's default CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "use-bundled-ca" -d "Use bundled CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "unhandled-rejections" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "user-agent" -d "Set the default User-Agent header for HTTP requests" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "shell" -d "Control the shell used for package.json scripts." -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "workspaces" -d "Run a script in all workspace packages (from the \"workspaces\" field in package.json)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "no-env-file" -d "Disable automatic loading of .env files" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
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
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "cpu-prof" -d "Start CPU profiler and write profile to disk on exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "cpu-prof-name" -d "Specify the name of the CPU profile file" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "cpu-prof-dir" -d "Specify the directory where the CPU profile will be saved" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "install" -d "Configure auto-install behavior." -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "dns-result-order" -d "Set the default order of DNS lookup results." -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "use-system-ca" -d "Use the system's trusted certificate authorities" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "use-openssl-ca" -d "Use OpenSSL's default CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "use-bundled-ca" -d "Use bundled CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "unhandled-rejections" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "user-agent" -d "Set the default User-Agent header for HTTP requests" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "shell" -d "Control the shell used for package.json scripts." -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "workspaces" -d "Run a script in all workspace packages (from the \"workspaces\" field in package.json)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "no-env-file" -d "Disable automatic loading of .env files" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
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
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "cpu-prof" -d "Start CPU profiler and write profile to disk on exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "cpu-prof-name" -d "Specify the name of the CPU profile file" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "cpu-prof-dir" -d "Specify the directory where the CPU profile will be saved" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "install" -d "Configure auto-install behavior." -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "dns-result-order" -d "Set the default order of DNS lookup results." -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "use-system-ca" -d "Use the system's trusted certificate authorities" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "use-openssl-ca" -d "Use OpenSSL's default CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "use-bundled-ca" -d "Use bundled CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "unhandled-rejections" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "user-agent" -d "Set the default User-Agent header for HTTP requests" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "shell" -d "Control the shell used for package.json scripts." -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "workspaces" -d "Run a script in all workspace packages (from the \"workspaces\" field in package.json)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "no-env-file" -d "Disable automatic loading of .env files" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
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
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "cpu-prof" -d "Start CPU profiler and write profile to disk on exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "cpu-prof-name" -d "Specify the name of the CPU profile file" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "cpu-prof-dir" -d "Specify the directory where the CPU profile will be saved" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "install" -d "Configure auto-install behavior." -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "dns-result-order" -d "Set the default order of DNS lookup results." -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "use-system-ca" -d "Use the system's trusted certificate authorities" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "use-openssl-ca" -d "Use OpenSSL's default CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "use-bundled-ca" -d "Use bundled CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "unhandled-rejections" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "user-agent" -d "Set the default User-Agent header for HTTP requests" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "shell" -d "Control the shell used for package.json scripts." -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "workspaces" -d "Run a script in all workspace packages (from the \"workspaces\" field in package.json)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "no-env-file" -d "Disable automatic loading of .env files" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
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
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "cpu-prof" -d "Start CPU profiler and write profile to disk on exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "cpu-prof-name" -d "Specify the name of the CPU profile file" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "cpu-prof-dir" -d "Specify the directory where the CPU profile will be saved" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "install" -d "Configure auto-install behavior." -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "dns-result-order" -d "Set the default order of DNS lookup results." -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "use-system-ca" -d "Use the system's trusted certificate authorities" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "use-openssl-ca" -d "Use OpenSSL's default CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "use-bundled-ca" -d "Use bundled CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "unhandled-rejections" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "user-agent" -d "Set the default User-Agent header for HTTP requests" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "shell" -d "Control the shell used for package.json scripts." -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "workspaces" -d "Run a script in all workspace packages (from the \"workspaces\" field in package.json)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "no-env-file" -d "Disable automatic loading of .env files" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
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
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "cpu-prof" -d "Start CPU profiler and write profile to disk on exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "cpu-prof-name" -d "Specify the name of the CPU profile file" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "cpu-prof-dir" -d "Specify the directory where the CPU profile will be saved" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "install" -d "Configure auto-install behavior." -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "dns-result-order" -d "Set the default order of DNS lookup results." -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "use-system-ca" -d "Use the system's trusted certificate authorities" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "use-openssl-ca" -d "Use OpenSSL's default CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "use-bundled-ca" -d "Use bundled CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "unhandled-rejections" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "user-agent" -d "Set the default User-Agent header for HTTP requests" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "shell" -d "Control the shell used for package.json scripts." -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "workspaces" -d "Run a script in all workspace packages (from the \"workspaces\" field in package.json)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "no-env-file" -d "Disable automatic loading of .env files" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
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
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "cpu-prof" -d "Start CPU profiler and write profile to disk on exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "cpu-prof-name" -d "Specify the name of the CPU profile file" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "cpu-prof-dir" -d "Specify the directory where the CPU profile will be saved" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "install" -d "Configure auto-install behavior." -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "dns-result-order" -d "Set the default order of DNS lookup results." -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "use-system-ca" -d "Use the system's trusted certificate authorities" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "use-openssl-ca" -d "Use OpenSSL's default CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "use-bundled-ca" -d "Use bundled CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "unhandled-rejections" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "user-agent" -d "Set the default User-Agent header for HTTP requests" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "shell" -d "Control the shell used for package.json scripts." -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "workspaces" -d "Run a script in all workspace packages (from the \"workspaces\" field in package.json)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "no-env-file" -d "Disable automatic loading of .env files" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
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
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "cpu-prof" -d "Start CPU profiler and write profile to disk on exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "cpu-prof-name" -d "Specify the name of the CPU profile file" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "cpu-prof-dir" -d "Specify the directory where the CPU profile will be saved" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "install" -d "Configure auto-install behavior." -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "dns-result-order" -d "Set the default order of DNS lookup results." -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "use-system-ca" -d "Use the system's trusted certificate authorities" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "use-openssl-ca" -d "Use OpenSSL's default CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "use-bundled-ca" -d "Use bundled CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "unhandled-rejections" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "user-agent" -d "Set the default User-Agent header for HTTP requests" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "shell" -d "Control the shell used for package.json scripts." -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "workspaces" -d "Run a script in all workspace packages (from the \"workspaces\" field in package.json)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "no-env-file" -d "Disable automatic loading of .env files" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
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
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "cpu-prof" -d "Start CPU profiler and write profile to disk on exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "cpu-prof-name" -d "Specify the name of the CPU profile file" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "cpu-prof-dir" -d "Specify the directory where the CPU profile will be saved" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "install" -d "Configure auto-install behavior." -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "dns-result-order" -d "Set the default order of DNS lookup results." -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "use-system-ca" -d "Use the system's trusted certificate authorities" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "use-openssl-ca" -d "Use OpenSSL's default CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "use-bundled-ca" -d "Use bundled CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "unhandled-rejections" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "user-agent" -d "Set the default User-Agent header for HTTP requests" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "shell" -d "Control the shell used for package.json scripts." -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "workspaces" -d "Run a script in all workspace packages (from the \"workspaces\" field in package.json)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "no-env-file" -d "Disable automatic loading of .env files" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "watch" -d "Automatically restart the process on file change" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "hot" -d "Enable auto reload in the Bun runtime, test runner, or bundler" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "no-clear-screen" -d "Disable clearing the terminal screen on reload when --hot or --watch is enabled" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "smol" -d "Use less memory, but run garbage collection more often" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -s "r" -l "preload" -d "Import a module before other modules are loaded" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "require" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "import" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "inspect" -d "Activate Bun's debugger" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "inspect-wait" -d "Activate Bun's debugger, wait for a connection before executing" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "inspect-brk" -d "Activate Bun's debugger, set breakpoint on first line of code and wait" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "cpu-prof" -d "Start CPU profiler and write profile to disk on exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "cpu-prof-name" -d "Specify the name of the CPU profile file" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "cpu-prof-dir" -d "Specify the directory where the CPU profile will be saved" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "install" -d "Configure auto-install behavior." -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "dns-result-order" -d "Set the default order of DNS lookup results." -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "use-system-ca" -d "Use the system's trusted certificate authorities" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "use-openssl-ca" -d "Use OpenSSL's default CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "use-bundled-ca" -d "Use bundled CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "unhandled-rejections" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "user-agent" -d "Set the default User-Agent header for HTTP requests" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "shell" -d "Control the shell used for package.json scripts." -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "workspaces" -d "Run a script in all workspace packages (from the \"workspaces\" field in package.json)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "no-env-file" -d "Disable automatic loading of .env files" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
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
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "cpu-prof" -d "Start CPU profiler and write profile to disk on exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "cpu-prof-name" -d "Specify the name of the CPU profile file" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "cpu-prof-dir" -d "Specify the directory where the CPU profile will be saved" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "install" -d "Configure auto-install behavior." -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "dns-result-order" -d "Set the default order of DNS lookup results." -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "use-system-ca" -d "Use the system's trusted certificate authorities" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "use-openssl-ca" -d "Use OpenSSL's default CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "use-bundled-ca" -d "Use bundled CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "unhandled-rejections" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "user-agent" -d "Set the default User-Agent header for HTTP requests" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "shell" -d "Control the shell used for package.json scripts." -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "workspaces" -d "Run a script in all workspace packages (from the \"workspaces\" field in package.json)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "no-env-file" -d "Disable automatic loading of .env files" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
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
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "cpu-prof" -d "Start CPU profiler and write profile to disk on exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "cpu-prof-name" -d "Specify the name of the CPU profile file" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "cpu-prof-dir" -d "Specify the directory where the CPU profile will be saved" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "install" -d "Configure auto-install behavior." -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "dns-result-order" -d "Set the default order of DNS lookup results." -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "use-system-ca" -d "Use the system's trusted certificate authorities" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "use-openssl-ca" -d "Use OpenSSL's default CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "use-bundled-ca" -d "Use bundled CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "unhandled-rejections" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "user-agent" -d "Set the default User-Agent header for HTTP requests" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "shell" -d "Control the shell used for package.json scripts." -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "workspaces" -d "Run a script in all workspace packages (from the \"workspaces\" field in package.json)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "no-env-file" -d "Disable automatic loading of .env files" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
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
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "cpu-prof" -d "Start CPU profiler and write profile to disk on exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "cpu-prof-name" -d "Specify the name of the CPU profile file" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "cpu-prof-dir" -d "Specify the directory where the CPU profile will be saved" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "install" -d "Configure auto-install behavior." -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "dns-result-order" -d "Set the default order of DNS lookup results." -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "use-system-ca" -d "Use the system's trusted certificate authorities" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "use-openssl-ca" -d "Use OpenSSL's default CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "use-bundled-ca" -d "Use bundled CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "unhandled-rejections" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "user-agent" -d "Set the default User-Agent header for HTTP requests" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "shell" -d "Control the shell used for package.json scripts." -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "workspaces" -d "Run a script in all workspace packages (from the \"workspaces\" field in package.json)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "no-env-file" -d "Disable automatic loading of .env files" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'create'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
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
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "cpu-prof" -d "Start CPU profiler and write profile to disk on exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "cpu-prof-name" -d "Specify the name of the CPU profile file" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "cpu-prof-dir" -d "Specify the directory where the CPU profile will be saved" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "install" -d "Configure auto-install behavior." -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "dns-result-order" -d "Set the default order of DNS lookup results." -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "use-system-ca" -d "Use the system's trusted certificate authorities" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "use-openssl-ca" -d "Use OpenSSL's default CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "use-bundled-ca" -d "Use bundled CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "unhandled-rejections" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "user-agent" -d "Set the default User-Agent header for HTTP requests" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "shell" -d "Control the shell used for package.json scripts." -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "workspaces" -d "Run a script in all workspace packages (from the \"workspaces\" field in package.json)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "no-env-file" -d "Disable automatic loading of .env files" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "watch" -d "Automatically restart the process on file change" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "hot" -d "Enable auto reload in the Bun runtime, test runner, or bundler" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "no-clear-screen" -d "Disable clearing the terminal screen on reload when --hot or --watch is enabled" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "smol" -d "Use less memory, but run garbage collection more often" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -s "r" -l "preload" -d "Import a module before other modules are loaded" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "require" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "import" -d "Alias of --preload, for Node.js compatibility" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "inspect" -d "Activate Bun's debugger" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "inspect-wait" -d "Activate Bun's debugger, wait for a connection before executing" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "inspect-brk" -d "Activate Bun's debugger, set breakpoint on first line of code and wait" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "cpu-prof" -d "Start CPU profiler and write profile to disk on exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "cpu-prof-name" -d "Specify the name of the CPU profile file" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "cpu-prof-dir" -d "Specify the directory where the CPU profile will be saved" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "no-install" -d "Disable auto install in the Bun runtime" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "install" -d "Configure auto-install behavior." -xa "auto fallback force" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -s "e" -l "eval" -d "Evaluate argument as a script" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "port" -d "Set the default port for Bun.serve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "conditions" -d "Pass custom conditions to resolve" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "dns-result-order" -d "Set the default order of DNS lookup results." -xa "verbatim ipv4first ipv6first" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "title" -d "Set the process title" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "use-system-ca" -d "Use the system's trusted certificate authorities" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "use-openssl-ca" -d "Use OpenSSL's default CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "use-bundled-ca" -d "Use bundled CA store" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "unhandled-rejections" -xa "strict throw warn none warn-with-error-code" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "user-agent" -d "Set the default User-Agent header for HTTP requests" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "silent" -d "Don't print the script command" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "revision" -d "Print version with revision and exit" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "shell" -d "Control the shell used for package.json scripts." -xa "bun system" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "workspaces" -d "Run a script in all workspace packages (from the \"workspaces\" field in package.json)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "env-file" -d "Load environment variables from the specified file(s)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "no-env-file" -d "Disable automatic loading of .env files" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -s "c" -l "config" -d "Specify path to Bun config file. Default ＄cwd/bunfig.toml" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "silent" -d "Don't print the script command" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "shell" -d "Control the shell used for package.json scripts." -xa "bun system" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "workspaces" -d "Run a script in all workspace packages (from the \"workspaces\" field in package.json)" # global
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
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "cpu-prof" -d "Start CPU profiler and write profile to disk on exit" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "cpu-prof-name" -d "Specify the name of the CPU profile file" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "cpu-prof-dir" -d "Specify the directory where the CPU profile will be saved" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "no-install" -d "Disable auto install in the Bun runtime" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "install" -d "Configure auto-install behavior." -xa "{auto\\tdefault, auto-installs when no node_modules,fallback\\tmissing packages only,force\\talways}" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -s "e" -l "eval" -d "Evaluate argument as a script" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "port" -d "Set the default port for Bun.serve" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "conditions" -d "Pass custom conditions to resolve" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "dns-result-order" -d "Set the default order of DNS lookup results." -xa "verbatim ipv4first ipv6first" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "title" -d "Set the process title" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "use-system-ca" -d "Use the system's trusted certificate authorities" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "use-openssl-ca" -d "Use OpenSSL's default CA store" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "use-bundled-ca" -d "Use bundled CA store" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "unhandled-rejections" -xa "strict throw warn none warn-with-error-code" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "user-agent" -d "Set the default User-Agent header for HTTP requests" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "main-fields" -d "Main fields to lookup in package.json. Defaults to --target dependent" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "preserve-symlinks" -d "Preserve symlinks when resolving files" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "preserve-symlinks-main" -d "Preserve symlinks when resolving the main entry point" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "extension-order" -d "Defaults to: .tsx,.ts,.jsx,.js,.json" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "tsconfig-override" -d "Specify custom tsconfig.json. Default <d>＄cwd<r>/tsconfig.json" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -s "d" -l "define" -d "Substitute K:V while parsing, e.g. --define process.env.NODE_ENV:\"development\". Values are parsed as JSON." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "drop" -d "Remove function calls, e.g. --drop=console removes all console.* calls." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -s "l" -l "loader" -d "Parse files with .ext:loader, e.g. --loader .js:jsx." -xa "js jsx ts tsx json toml text file wasm napi" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "no-macros" -d "Disable macros from being executed in the bundler, transpiler and runtime" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "jsx-factory" -d "Changes the function called when compiling JSX elements using the classic JSX runtime" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "jsx-fragment" -d "Changes the function called when compiling JSX fragments" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "jsx-import-source" -d "Declares the module specifier to be used for importing the jsx and jsxs factory functions. Default: \"react\"" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "jsx-runtime" -xa "automatic classic" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "jsx-side-effects" -d "Treat JSX elements as having side effects (disable pure annotations)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "ignore-dce-annotations" -d "Ignore tree-shaking annotations such as @__PURE__" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "env-file" -d "Load environment variables from the specified file(s)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "no-env-file" -d "Disable automatic loading of .env files" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -s "c" -l "config" -d "Specify path to Bun config file. Default <d>＄cwd<r>/bunfig.toml" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'run'" -s "h" -l "help" -d "Display this menu and exit" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "timeout" -d "Set the per-test timeout in milliseconds, default is 5000." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -s "u" -l "update-snapshots" -d "Update snapshot files" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "rerun-each" -d "Re-run each test file <NUMBER> times, helps catch certain bugs" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "todo" -d "Include tests that are marked with \"test.todo()\"" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "only" -d "Run only tests that are marked with \"test.only()\" or \"describe.only()\"" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "pass-with-no-tests" -d "Exit with code 0 when no tests are found" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "concurrent" -d "Treat all tests as `test.concurrent()` tests" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "randomize" -d "Run tests in random order" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "seed" -d "Set the random seed for test randomization" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "coverage" -d "Generate a coverage profile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "coverage-reporter" -d "Report coverage in 'text' and/or 'lcov'. Defaults to 'text'." -xa "text lcov" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "coverage-dir" -d "Directory for coverage files. Defaults to 'coverage'." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "bail" -d "Exit the test suite after <NUMBER> failures. If you do not specify a number, it defaults to 1." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -s "t" -l "test-name-pattern" -d "Run only tests with a name that matches the given regex." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "reporter" -d "Test output reporter format. Available: 'junit' (requires --reporter-outfile), 'dots'. Default: console output." -xa "junit dots" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "reporter-outfile" -d "Output file path for the reporter format (required with --reporter)." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "dots" -d "Enable dots reporter. Shorthand for --reporter=dots." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "only-failures" -d "Only display test failures, hiding passing tests." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'test'" -l "max-concurrency" -d "Maximum number of concurrent tests to execute at once. Default is 20." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "bun" -d "Force the command to run with Bun instead of Node.js" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -s "p" -l "package" -d "Specify package to install when binary name differs from package name" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "no-install" -d "Skip installation if package is not already installed" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "verbose" -d "Enable verbose output during installation" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'x'" -l "silent" -d "Suppress output during installation" # global
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
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "dry-run" -d "Perform a dry run without making changes" # global
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
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "backend" -d "Platform-specific optimizations for installing dependencies." -xa "clonefile hardlink symlink copyfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "registry" -d "Use a specific registry by default, overriding .npmrc, bunfig.toml and environment variables" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "concurrent-scripts" -d "Maximum number of concurrent jobs for lifecycle scripts (default 5)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "network-concurrency" -d "Maximum number of concurrent network requests (default 48)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "save-text-lockfile" -d "Save a text-based lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "omit" -d "Exclude 'dev', 'optional', or 'peer' dependencies from install" -xa "dev optional peer" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "lockfile-only" -d "Generate a lockfile without installing dependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "linker" -d "Linker strategy" -xa "isolated hoisted" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "minimum-release-age" -d "Only install packages published at least N seconds ago (security feature)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "cpu" -d "Override CPU architecture for optional dependencies (e.g., x64, arm64, * for all)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'install'" -l "os" -d "Override operating system for optional dependencies (e.g., linux, darwin, * for all)" # global
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
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "dry-run" -d "Perform a dry run without making changes" # global
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
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "backend" -d "Platform-specific optimizations for installing dependencies." -xa "clonefile hardlink symlink copyfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "registry" -d "Use a specific registry by default, overriding .npmrc, bunfig.toml and environment variables" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "concurrent-scripts" -d "Maximum number of concurrent jobs for lifecycle scripts (default 5)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "network-concurrency" -d "Maximum number of concurrent network requests (default 48)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "save-text-lockfile" -d "Save a text-based lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "omit" -d "Exclude 'dev', 'optional', or 'peer' dependencies from install" -xa "dev optional peer" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "lockfile-only" -d "Generate a lockfile without installing dependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "linker" -d "Linker strategy" -xa "isolated hoisted" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "minimum-release-age" -d "Only install packages published at least N seconds ago (security feature)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "cpu" -d "Override CPU architecture for optional dependencies" -xa "x64 arm64 *" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'add'" -l "os" -d "Override operating system for optional dependencies" -xa "linux darwin *" # global
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
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "dry-run" -d "Perform a dry run without making changes" # global
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
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "backend" -d "Platform-specific optimizations for installing dependencies." -xa "clonefile hardlink symlink copyfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "registry" -d "Use a specific registry by default, overriding .npmrc, bunfig.toml and environment variables" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "concurrent-scripts" -d "Maximum number of concurrent jobs for lifecycle scripts (default 5)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "network-concurrency" -d "Maximum number of concurrent network requests (default 48)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "save-text-lockfile" -d "Save a text-based lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "omit" -d "Exclude 'dev', 'optional', or 'peer' dependencies from install" -xa "dev optional peer" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "lockfile-only" -d "Generate a lockfile without installing dependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "linker" -d "Linker strategy" -xa "isolated hoisted" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "minimum-release-age" -d "Only install packages published at least N seconds ago (security feature)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "cpu" -d "Override CPU architecture for optional dependencies (e.g., x64, arm64, * for all)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -l "os" -d "Override operating system for optional dependencies (e.g., linux, darwin, * for all)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'remove'" -s "h" -l "help" -d "Print this help menu" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -s "c" -l "config" -d "Specify path to config file (bunfig.toml)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -s "y" -l "yarn" -d "Write a yarn.lock file (yarn v1)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -s "p" -l "production" -d "Don't install devDependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "no-save" -d "Don't update package.json or save a lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "save" -d "Save to package.json (true by default)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "ca" -d "Provide a Certificate Authority signing certificate" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "cafile" -d "The same as `--ca`, but is a file path to the certificate" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "dry-run" -d "Perform a dry run without making changes" # global
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
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "backend" -d "Platform-specific optimizations for installing dependencies." -xa "clonefile hardlink symlink copyfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "registry" -d "Use a specific registry by default, overriding .npmrc, bunfig.toml and environment variables" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "concurrent-scripts" -d "Maximum number of concurrent jobs for lifecycle scripts (default 5)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "network-concurrency" -d "Maximum number of concurrent network requests (default 48)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "save-text-lockfile" -d "Save a text-based lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "omit" -d "Exclude 'dev', 'optional', or 'peer' dependencies from install" -xa "dev optional peer" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "lockfile-only" -d "Generate a lockfile without installing dependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "linker" -d "Linker strategy" -xa "isolated hoisted" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "minimum-release-age" -d "Only install packages published at least N seconds ago (security feature)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "cpu" -d "Override CPU architecture for optional dependencies (e.g., x64, arm64, * for all)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "os" -d "Override operating system for optional dependencies (e.g., linux, darwin, * for all)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -s "h" -l "help" -d "Print this help menu" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "latest" -d "Update packages to their latest versions" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -s "i" -l "interactive" -d "Show an interactive list of outdated packages to select for update" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -l "filter" -d "Update packages for the matching workspaces" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'update'" -s "r" -l "recursive" -d "Update packages in all workspaces" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "json" -d "Output in JSON format" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "audit-level" -d "Only print advisories with severity greater than or equal to <level>" -xa "low moderate high critical" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'audit'" -l "ignore" -d "Ignore specific CVE IDs from audit" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -s "c" -l "config" -d "Specify path to config file (bunfig.toml)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -s "y" -l "yarn" -d "Write a yarn.lock file (yarn v1)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -s "p" -l "production" -d "Don't install devDependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "no-save" -d "Don't update package.json or save a lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "save" -d "Save to package.json (true by default)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "ca" -d "Provide a Certificate Authority signing certificate" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "cafile" -d "The same as `--ca`, but is a file path to the certificate" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "dry-run" -d "Perform a dry run without making changes" # global
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
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "backend" -d "Platform-specific optimizations for installing dependencies." -xa "clonefile hardlink symlink copyfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "registry" -d "Use a specific registry by default, overriding .npmrc, bunfig.toml and environment variables" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "concurrent-scripts" -d "Maximum number of concurrent jobs for lifecycle scripts (default 5)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "network-concurrency" -d "Maximum number of concurrent network requests (default 48)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "save-text-lockfile" -d "Save a text-based lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "omit" -d "Exclude 'dev', 'optional', or 'peer' dependencies from install" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "lockfile-only" -d "Generate a lockfile without installing dependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "linker" -d "Linker strategy" -xa "isolated hoisted" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "minimum-release-age" -d "Only install packages published at least N seconds ago (security feature)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "cpu" -d "Override CPU architecture for optional dependencies (e.g., x64, arm64, * for all)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -l "os" -d "Override operating system for optional dependencies (e.g., linux, darwin, * for all)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -s "h" -l "help" -d "Print this help menu" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -s "F" -l "filter" -d "Display outdated dependencies for each matching workspace" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'outdated'" -s "r" -l "recursive" -d "Check outdated packages in all workspaces" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -s "c" -l "config" -d "Specify path to config file (bunfig.toml)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -s "y" -l "yarn" -d "Write a yarn.lock file (yarn v1)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -s "p" -l "production" -d "Don't install devDependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "no-save" -d "Don't update package.json or save a lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "save" -d "Save to package.json (true by default)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "ca" -d "Provide a Certificate Authority signing certificate" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "cafile" -d "The same as `--ca`, but is a file path to the certificate" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "dry-run" -d "Perform a dry run without making changes" # global
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
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "backend" -d "Platform-specific optimizations for installing dependencies." -xa "clonefile hardlink symlink copyfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "registry" -d "Use a specific registry by default, overriding .npmrc, bunfig.toml and environment variables" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "concurrent-scripts" -d "Maximum number of concurrent jobs for lifecycle scripts (default 5)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "network-concurrency" -d "Maximum number of concurrent network requests (default 48)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "save-text-lockfile" -d "Save a text-based lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "omit" -d "Exclude 'dev', 'optional', or 'peer' dependencies from install" -xa "dev optional peer" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "lockfile-only" -d "Generate a lockfile without installing dependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "linker" -d "Linker strategy" -xa "isolated hoisted" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "minimum-release-age" -d "Only install packages published at least N seconds ago (security feature)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "cpu" -d "Override CPU architecture for optional dependencies (e.g., x64, arm64, * for all)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -l "os" -d "Override operating system for optional dependencies (e.g., linux, darwin, * for all)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'link'" -s "h" -l "help" -d "Print this help menu" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -s "c" -l "config" -d "Specify path to config file (bunfig.toml)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -s "y" -l "yarn" -d "Write a yarn.lock file (yarn v1)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -s "p" -l "production" -d "Don't install devDependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "no-save" -d "Don't update package.json or save a lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "save" -d "Save to package.json (true by default)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "ca" -d "Provide a Certificate Authority signing certificate" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "cafile" -d "The same as `--ca`, but is a file path to the certificate" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "dry-run" -d "Perform a dry run without making changes" # global
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
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "backend" -d "Platform-specific optimizations for installing dependencies." -xa "clonefile hardlink symlink copyfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "registry" -d "Use a specific registry by default, overriding .npmrc, bunfig.toml and environment variables" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "concurrent-scripts" -d "Maximum number of concurrent jobs for lifecycle scripts (default 5)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "network-concurrency" -d "Maximum number of concurrent network requests (default 48)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "save-text-lockfile" -d "Save a text-based lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "omit" -d "Exclude 'dev', 'optional', or 'peer' dependencies from install" -xa "dev optional peer" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "lockfile-only" -d "Generate a lockfile without installing dependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "linker" -d "Linker strategy" -xa "isolated hoisted" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "minimum-release-age" -d "Only install packages published at least N seconds ago (security feature)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "cpu" -d "Override CPU architecture for optional dependencies (e.g., x64, arm64, * for all)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -l "os" -d "Override operating system for optional dependencies (e.g., linux, darwin, * for all)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'unlink'" -s "h" -l "help" -d "Print this help menu" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -s "c" -l "config" -d "Specify path to config file (bunfig.toml)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -s "y" -l "yarn" -d "Write a yarn.lock file (yarn v1)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -s "p" -l "production" -d "Don't install devDependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "no-save" -d "Don't update package.json or save a lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "save" -d "Save to package.json (true by default)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "ca" -d "Provide a Certificate Authority signing certificate" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "cafile" -d "The same as `--ca`, but is a file path to the certificate" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "dry-run" -d "Perform a dry run without making changes" # global
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
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "omit" -d "Exclude 'dev', 'optional', or 'peer' dependencies from install" -xa "dev optional peer" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "lockfile-only" -d "Generate a lockfile without installing dependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "linker" -d "Linker strategy" -xa "isolated hoisted" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "minimum-release-age" -d "Only install packages published at least N seconds ago (security feature)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "cpu" -d "Override CPU architecture for optional dependencies (e.g., x64, arm64, * for all)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "os" -d "Override operating system for optional dependencies (e.g., linux, darwin, * for all)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -s "h" -l "help" -d "Print this help menu" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "access" -d "Set access level for scoped packages" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "tag" -d "Tag the release. Default is \"latest\"" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "otp" -d "Provide a one-time password for authentication" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "auth-type" -d "Specify the type of one-time password authentication (default is 'web')" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "gzip-level" -d "Specify a custom compression level for gzip. Default is 9." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'publish'" -l "tolerate-republish" -d "Don't exit with code 1 when republishing over an existing version number" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -s "c" -l "config" -d "Specify path to config file (bunfig.toml)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -s "y" -l "yarn" -d "Write a yarn.lock file (yarn v1)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -s "p" -l "production" -d "Don't install devDependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "no-save" -d "Don't update package.json or save a lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "save" -d "Save to package.json (true by default)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "ca" -d "Provide a Certificate Authority signing certificate" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "cafile" -d "The same as `--ca`, but is a file path to the certificate" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "dry-run" -d "Perform a dry run without making changes" # global
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
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "backend" -d "Platform-specific optimizations for installing dependencies." -xa "clonefile hardlink symlink copyfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "registry" -d "Use a specific registry by default, overriding .npmrc, bunfig.toml and environment variables" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "concurrent-scripts" -d "Maximum number of concurrent jobs for lifecycle scripts (default 5)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "network-concurrency" -d "Maximum number of concurrent network requests (default 48)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "save-text-lockfile" -d "Save a text-based lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "omit" -d "Exclude 'dev', 'optional', or 'peer' dependencies from install" -xa "dev optional peer" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "lockfile-only" -d "Generate a lockfile without installing dependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "linker" -d "Linker strategy" -xa "isolated hoisted" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "minimum-release-age" -d "Only install packages published at least N seconds ago (security feature)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "cpu" -d "Override CPU architecture for optional dependencies (e.g., x64, arm64, * for all)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'patch'" -l "os" -d "Override operating system for optional dependencies (e.g., linux, darwin, * for all)" # global
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
complete -c "bun" -n "__fish_seen_subcommand_from 'pm'" -l "all" -d "list the entire dependency tree according to the current lockfile or trust all untrusted dependencies" # global
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm'" -a "scan" -d "scan all packages in lockfile for security vulnerabilities" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm'" -a "pack" -d "create a tarball of the current workspace" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm'" -a "bin" -d "print the path to bin folder" # sub
complete -f -c "bun" -n "__fish_seen_subcommand_from 'pm'" -a "list" -d "list the dependency tree according to the current lockfile" # sub
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
complete -c "bun" -n "__fish_seen_subcommand_from 'pm scan'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm scan'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm scan'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm scan'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm scan'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm scan'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm scan'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm scan'" -l "all" -d "list the entire dependency tree according to the current lockfile or trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pack'" -l "all" -d "list the entire dependency tree according to the current lockfile or trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm bin'" -l "all" -d "list the entire dependency tree according to the current lockfile or trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm list'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm list'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm list'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm list'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm list'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm list'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm list'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm list'" -l "all" -d "list the entire dependency tree according to the current lockfile or trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm why'" -l "all" -d "list the entire dependency tree according to the current lockfile or trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm whoami'" -l "all" -d "list the entire dependency tree according to the current lockfile or trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm view'" -l "all" -d "list the entire dependency tree according to the current lockfile or trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm version'" -l "all" -d "list the entire dependency tree according to the current lockfile or trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm pkg'" -l "all" -d "list the entire dependency tree according to the current lockfile or trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash'" -l "all" -d "list the entire dependency tree according to the current lockfile or trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-string'" -l "all" -d "list the entire dependency tree according to the current lockfile or trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm hash-print'" -l "all" -d "list the entire dependency tree according to the current lockfile or trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm cache'" -l "all" -d "list the entire dependency tree according to the current lockfile or trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm migrate'" -l "all" -d "list the entire dependency tree according to the current lockfile or trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm untrusted'" -l "all" -d "list the entire dependency tree according to the current lockfile or trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm trust'" -l "all" -d "list the entire dependency tree according to the current lockfile or trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm default-trusted'" -l "dry-run" -d "do everything except for writing the tarball to disk" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm default-trusted'" -l "destination" -d "the directory the tarball will be saved in" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm default-trusted'" -l "filename" -d "the name of the tarball" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm default-trusted'" -l "ignore-scripts" -d "don't run pre/postpack and prepare scripts" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm default-trusted'" -l "gzip-level" -d "specify a custom compression level for gzip (0-9, default is 9)" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm default-trusted'" -l "quiet" -d "only output the tarball filename" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm default-trusted'" -s "g" -d "print the global path to bin folder" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'pm default-trusted'" -l "all" -d "list the entire dependency tree according to the current lockfile or trust all untrusted dependencies" # subcommands flags
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -s "c" -l "config" -d "Specify path to config file (bunfig.toml)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -s "y" -l "yarn" -d "Write a yarn.lock file (yarn v1)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -s "p" -l "production" -d "Don't install devDependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "no-save" -d "Don't update package.json or save a lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "save" -d "Save to package.json (true by default)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "ca" -d "Provide a Certificate Authority signing certificate" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "cafile" -d "The same as `--ca`, but is a file path to the certificate" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "dry-run" -d "Perform a dry run without making changes" # global
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
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "backend" -d "Platform-specific optimizations for installing dependencies." -xa "clonefile hardlink symlink copyfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "registry" -d "Use a specific registry by default, overriding .npmrc, bunfig.toml and environment variables" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "concurrent-scripts" -d "Maximum number of concurrent jobs for lifecycle scripts (default 5)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "network-concurrency" -d "Maximum number of concurrent network requests (default 48)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "save-text-lockfile" -d "Save a text-based lockfile" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "omit" -d "Exclude 'dev', 'optional', or 'peer' dependencies from install" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "lockfile-only" -d "Generate a lockfile without installing dependencies" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "linker" -d "Linker strategy" -xa "isolated hoisted" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "minimum-release-age" -d "Only install packages published at least N seconds ago (security feature)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "cpu" -d "Override CPU architecture for optional dependencies (e.g., x64, arm64, * for all)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "os" -d "Override operating system for optional dependencies (e.g., linux, darwin, * for all)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -s "h" -l "help" -d "Print this help menu" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'info'" -l "json" -d "Output in JSON format" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "top" -d "Show only the top dependency tree instead of nested ones" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'why'" -l "depth" -d "Maximum depth of the dependency tree to display" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "production" -d "Set NODE_ENV=production and enable minification" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "compile" -d "Generate a standalone Bun executable containing your bundled code. Implies --production" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "compile-exec-argv" -d "Prepend arguments to the standalone executable's execArgv" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "compile-autoload-dotenv" -d "Enable autoloading of .env files in standalone executable (default: true)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "no-compile-autoload-dotenv" -d "Disable autoloading of .env files in standalone executable" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "compile-autoload-bunfig" -d "Enable autoloading of bunfig.toml in standalone executable (default: true)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "no-compile-autoload-bunfig" -d "Disable autoloading of bunfig.toml in standalone executable" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "compile-autoload-tsconfig" -d "Enable autoloading of tsconfig.json at runtime in standalone executable (default: false)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "no-compile-autoload-tsconfig" -d "Disable autoloading of tsconfig.json at runtime in standalone executable" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "compile-autoload-package-json" -d "Enable autoloading of package.json at runtime in standalone executable (default: false)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "no-compile-autoload-package-json" -d "Disable autoloading of package.json at runtime in standalone executable" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "bytecode" -d "Use a bytecode cache" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "watch" -d "Automatically restart the process on file change" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "no-clear-screen" -d "Disable clearing the terminal screen on reload when --watch is enabled" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "target" -d "The intended execution environment for the bundle." -xa "browser bun node" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "outdir" -d "Default to \"dist\" if multiple files" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "outfile" -d "Write to a file" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "sourcemap" -d "Build with sourcemaps" -xa "linked inline external none" # global
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
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "keep-names" -d "Preserve original function and class names when minifying" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "css-chunking" -d "Chunk CSS files together to reduce duplicated CSS loaded in a browser. Only has an effect when multiple entrypoints import CSS" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "conditions" -d "Pass custom conditions to resolve" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "app" -d "(EXPERIMENTAL) Build a web app for production using Bun Bake." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "server-components" -d "(EXPERIMENTAL) Enable server components" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "env" -d "Inline environment variables into the bundle as process.env.＄{name}. Defaults to 'disable'. To inline environment variables matching a prefix, use my prefix like 'FOO_PUBLIC_*'." # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "windows-hide-console" -d "When using --compile targeting Windows, prevent a Command prompt from opening alongside the executable" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "windows-icon" -d "When using --compile targeting Windows, assign an executable icon" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "windows-title" -d "When using --compile targeting Windows, set the executable product name" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "windows-publisher" -d "When using --compile targeting Windows, set the executable company name" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "windows-version" -d "When using --compile targeting Windows, set the executable version (e.g. 1.2.3.4)" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "windows-description" -d "When using --compile targeting Windows, set the executable description" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'build'" -l "windows-copyright" -d "When using --compile targeting Windows, set the executable copyright" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -l "help" -d "Print this menu" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -s "y" -l "yes" -d "Accept all default options" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -s "m" -l "minimal" -d "Only initialize type definitions" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'init'" -s "r" -l "react" -d "Initialize a React project" -xa "tailwind shadcn" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'upgrade'" -l "canary" -d "Install the most recent canary version of Bun" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -s "e" -l "email" -d "Set the email address used for this submission" # global
complete -c "bun" -n "__fish_seen_subcommand_from 'feedback'" -s "h" -l "help" -d "Show this help message and exit" # global