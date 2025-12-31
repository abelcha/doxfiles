complete -c "run" -l "silent" -d "Don't print the script command" # global
complete -c "run" -l "elide-lines" -d "Number of lines of script output shown when using --filter (default: 10). Set to 0 to show all lines" # global
complete -c "run" -s "F" -l "filter" -d "Run a script in all workspace packages matching the pattern" # global
complete -c "run" -s "b" -l "bun" -d "Force a script or package to use Bun's runtime instead of Node.js (via symlinking node)" # global
complete -c "run" -l "shell" -d "Control the shell used for package.json scripts" -xa "bun system" # global
complete -c "run" -l "workspaces" -d "Run a script in all workspace packages (from the \"workspaces\" field in package.json)" # global
complete -c "run" -l "watch" -d "Automatically restart the process on file change" # global
complete -c "run" -l "hot" -d "Enable auto reload in the Bun runtime, test runner, or bundler" # global
complete -c "run" -l "no-clear-screen" -d "Disable clearing the terminal screen on reload when --hot or --watch is enabled" # global
complete -c "run" -l "smol" -d "Use less memory, but run garbage collection more often" # global
complete -c "run" -s "r" -l "preload" -d "Import a module before other modules are loaded" # global
complete -c "run" -l "require" -d "Alias of --preload, for Node.js compatibility" # global
complete -c "run" -l "import" -d "Alias of --preload, for Node.js compatibility" # global
complete -c "run" -l "inspect" -d "Activate Bun's debugger" # global
complete -c "run" -l "inspect-wait" -d "Activate Bun's debugger, wait for a connection before executing" # global
complete -c "run" -l "inspect-brk" -d "Activate Bun's debugger, set breakpoint on first line of code and wait" # global
complete -c "run" -l "cpu-prof" -d "Start CPU profiler and write profile to disk on exit" # global
complete -c "run" -l "cpu-prof-name" -d "Specify the name of the CPU profile file" # global
complete -c "run" -l "cpu-prof-dir" -d "Specify the directory where the CPU profile will be saved" # global
complete -c "run" -l "if-present" -d "Exit without an error if the entrypoint does not exist" # global
complete -c "run" -l "no-install" -d "Disable auto install in the Bun runtime" # global
complete -c "run" -l "install" -d "Configure auto-install behavior" -xa "auto fallback force" # global
complete -c "run" -s "i" -d "Auto-install dependencies during execution. Equivalent to --install=fallback." # global
complete -c "run" -s "e" -l "eval" -d "Evaluate argument as a script" # global
complete -c "run" -s "p" -l "print" -d "Evaluate argument as a script and print the result" # global
complete -c "run" -l "prefer-offline" -d "Skip staleness checks for packages in the Bun runtime and resolve from disk" # global
complete -c "run" -l "prefer-latest" -d "Use the latest matching versions of packages in the Bun runtime, always checking npm" # global
complete -c "run" -l "port" -d "Set the default port for Bun.serve" # global
complete -c "run" -l "conditions" -d "Pass custom conditions to resolve" # global
complete -c "run" -l "fetch-preconnect" -d "Preconnect to a URL while code is loading" # global
complete -c "run" -l "max-http-header-size" -d "Set the maximum size of HTTP headers in bytes. Default is 16KiB" # global
complete -c "run" -l "dns-result-order" -d "Set the default order of DNS lookup results" -xa "verbatim ipv4first ipv6first" # global
complete -c "run" -l "expose-gc" -d "Expose gc() on the global object. Has no effect on Bun.gc()." # global
complete -c "run" -l "no-deprecation" -d "Suppress all reporting of the custom deprecation." # global
complete -c "run" -l "throw-deprecation" -d "Determine whether or not deprecation warnings result in errors." # global
complete -c "run" -l "title" -d "Set the process title" # global
complete -c "run" -l "zero-fill-buffers" -d "Boolean to force Buffer.allocUnsafe(size) to be zero-filled." # global
complete -c "run" -l "use-system-ca" -d "Use the system's trusted certificate authorities" # global
complete -c "run" -l "use-openssl-ca" -d "Use OpenSSL's default CA store" # global
complete -c "run" -l "use-bundled-ca" -d "Use bundled CA store" # global
complete -c "run" -l "redis-preconnect" -d "Preconnect to ＄REDIS_URL at startup" # global
complete -c "run" -l "sql-preconnect" -d "Preconnect to PostgreSQL at startup" # global
complete -c "run" -l "no-addons" -d "Throw an error if process.dlopen is called, and disable export condition \"node-addons\"" # global
complete -c "run" -l "unhandled-rejections" -xa "strict throw warn none warn-with-error-code" # global
complete -c "run" -l "console-depth" -d "Set the default depth for console.log object inspection (default: 2)" # global
complete -c "run" -l "user-agent" -d "Set the default User-Agent header for HTTP requests" # global
complete -c "run" -l "main-fields" -d "Main fields to lookup in package.json. Defaults to --target dependent" # global
complete -c "run" -l "preserve-symlinks" -d "Preserve symlinks when resolving files" # global
complete -c "run" -l "preserve-symlinks-main" -d "Preserve symlinks when resolving the main entry point" # global
complete -c "run" -l "extension-order" -d "Defaults to: .tsx,.ts,.jsx,.js,.json" # global
complete -c "run" -l "tsconfig-override" -d "Specify custom tsconfig.json. Default <d>＄cwd<r>/tsconfig.json" # global
complete -c "run" -s "d" -l "define" -d "Substitute K:V while parsing. Values are parsed as JSON." # global
complete -c "run" -l "drop" -d "Remove function calls" # global
complete -c "run" -s "l" -l "loader" -d "Parse files with .ext:loader. Valid loaders: js, jsx, ts, tsx, json, toml, text, file, wasm, napi" # global
complete -c "run" -l "no-macros" -d "Disable macros from being executed in the bundler, transpiler and runtime" # global
complete -c "run" -l "jsx-factory" -d "Changes the function called when compiling JSX elements using the classic JSX runtime" # global
complete -c "run" -l "jsx-fragment" -d "Changes the function called when compiling JSX fragments" # global
complete -c "run" -l "jsx-import-source" -d "Declares the module specifier to be used for importing the jsx and jsxs factory functions. Default: \"react\"" # global
complete -c "run" -l "jsx-runtime" -xa "automatic classic" # global
complete -c "run" -l "jsx-side-effects" -d "Treat JSX elements as having side effects (disable pure annotations)" # global
complete -c "run" -l "ignore-dce-annotations" -d "Ignore tree-shaking annotations such as @__PURE__" # global
complete -c "run" -l "env-file" -d "Load environment variables from the specified file(s)" # global
complete -c "run" -l "no-env-file" -d "Disable automatic loading of .env files" # global
complete -c "run" -l "cwd" -d "Absolute path to resolve files & entry points from. This just changes the process' cwd." # global
complete -c "run" -s "c" -l "config" -d "Specify path to Bun config file. Default <d>＄cwd<r>/bunfig.toml" # global
complete -c "run" -s "h" -l "help" -d "Display this menu and exit" # global