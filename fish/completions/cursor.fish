complete -c "cursor" -s "d" -l "diff" -d "Compare two files with each other." -xa "{}" # global
complete -c "cursor" -s "m" -l "merge" -d "Perform a three-way merge by providing paths for two modified versions of a file, the common origin of both modified versions and the output file to save merge results." -xa "{}" # global
complete -c "cursor" -s "a" -l "add" -d "Add folder(s) to the last active window." -xa "{}" # global
complete -c "cursor" -l "remove" -d "Remove folder(s) from the last active window." -xa "{}" # global
complete -c "cursor" -s "g" -l "goto" -d "Open a file at the path on the specified line and character position." -xa "{}" # global
complete -c "cursor" -s "n" -l "new-window" -d "Force to open a new window." -xa "{}" # global
complete -c "cursor" -s "r" -l "reuse-window" -d "Force to open a file or folder in an already opened window." -xa "{}" # global
complete -c "cursor" -s "w" -l "wait" -d "Wait for the files to be closed before returning." -xa "{}" # global
complete -c "cursor" -l "locale" -d "The locale to use." -xa "{}" # global
complete -c "cursor" -l "user-data-dir" -d "Specifies the directory that user data is kept in." -xa "{}" # global
complete -c "cursor" -l "profile" -d "Opens the provided folder or workspace with the given profile and associates the profile with the workspace." -xa "{}" # global
complete -c "cursor" -s "h" -l "help" -d "Print usage." -xa "{}" # global
complete -c "cursor" -l "add-mcp" -d "Adds a Model Context Protocol server definition to the user profile, or workspace or folder when used with --mcp-workspace." -xa "{}" # global
complete -c "cursor" -l "extensions-dir" -d "Set the root path for extensions." -xa "{}" # global
complete -c "cursor" -l "list-extensions" -d "List the installed extensions." -xa "{}" # global
complete -c "cursor" -l "show-versions" -d "Show versions of installed extensions, when using --list-extensions." -xa "{}" # global
complete -c "cursor" -l "category" -d "Filters installed extensions by provided category, when using --list-extensions." -xa "{}" # global
complete -c "cursor" -l "install-extension" -d "Installs or updates an extension." -xa "{}" # global
complete -c "cursor" -l "pre-release" -d "Installs the pre-release version of the extension, when using --install-extension." -xa "{}" # global
complete -c "cursor" -l "uninstall-extension" -d "Uninstalls an extension." -xa "{}" # global
complete -c "cursor" -l "update-extensions" -d "Update the installed extensions." -xa "{}" # global
complete -c "cursor" -l "enable-proposed-api" -d "Enables proposed API features for extensions." -xa "{}" # global
complete -c "cursor" -s "v" -l "version" -d "Print version." -xa "{}" # global
complete -c "cursor" -l "verbose" -d "Print verbose output (implies --wait)." -xa "{}" # global
complete -c "cursor" -l "log" -d "Log level to use. Default is 'info'." -xa "critical error warn info debug trace off" # global
complete -c "cursor" -s "s" -l "status" -d "Print process usage and diagnostics information." -xa "{}" # global
complete -c "cursor" -l "prof-startup" -d "Run CPU profiler during startup." -xa "{}" # global
complete -c "cursor" -l "disable-extensions" -d "Disable all installed extensions." -xa "{}" # global
complete -c "cursor" -l "disable-extension" -d "Disable the provided extension." -xa "{}" # global
complete -c "cursor" -l "sync" -d "Turn sync on or off." -xa "on off" # global
complete -c "cursor" -l "inspect-extensions" -d "Allow debugging and profiling of extensions." -xa "{}" # global
complete -c "cursor" -l "inspect-brk-extensions" -d "Allow debugging and profiling of extensions with the extension host being paused after start." -xa "{}" # global
complete -c "cursor" -l "disable-lcd-text" -d "Disable LCD font rendering." -xa "{}" # global
complete -c "cursor" -l "disable-gpu" -d "Disable GPU hardware acceleration." -xa "{}" # global
complete -c "cursor" -l "disable-chromium-sandbox" -d "Use this option only when there is requirement to launch the application as sudo user on Linux or when running as an elevated user in an applocker environment on Windows." -xa "{}" # global
complete -c "cursor" -l "locate-shell-integration-path" -d "Print the path to a terminal shell integration script." -xa "bash pwsh zsh fish" # global
complete -c "cursor" -l "telemetry" -d "Shows all telemetry events which VS code collects." -xa "{}" # global
complete -c "cursor" -n "__fish_use_subcommand" -a "tunnel" -d "Make the current machine accessible from vscode.dev or other machines through a secure tunnel" # sub
complete -c "cursor" -n "__fish_use_subcommand" -a "serve-web" -d "Run a server that displays the editor UI in browsers." # sub
complete -c "cursor" -n "__fish_use_subcommand" -a "agent" -d "Start the Cursor agent in your terminal." # sub
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -s "d" -l "diff" -d "Compare two files with each other." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -s "m" -l "merge" -d "Perform a three-way merge by providing paths for two modified versions of a file, the common origin of both modified versions and the output file to save merge results." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -s "a" -l "add" -d "Add folder(s) to the last active window." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "remove" -d "Remove folder(s) from the last active window." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -s "g" -l "goto" -d "Open a file at the path on the specified line and character position." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -s "n" -l "new-window" -d "Force to open a new window." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -s "r" -l "reuse-window" -d "Force to open a file or folder in an already opened window." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -s "w" -l "wait" -d "Wait for the files to be closed before returning." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "locale" -d "The locale to use." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "user-data-dir" -d "Specifies the directory that user data is kept in." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "profile" -d "Opens the provided folder or workspace with the given profile and associates the profile with the workspace." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "add-mcp" -d "Adds a Model Context Protocol server definition to the user profile, or workspace or folder when used with --mcp-workspace." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "extensions-dir" -d "Set the root path for extensions." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "list-extensions" -d "List the installed extensions." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "show-versions" -d "Show versions of installed extensions, when using --list-extensions." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "category" -d "Filters installed extensions by provided category, when using --list-extensions." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "install-extension" -d "Installs or updates an extension." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "pre-release" -d "Installs the pre-release version of the extension, when using --install-extension." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "uninstall-extension" -d "Uninstalls an extension." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "update-extensions" -d "Update the installed extensions." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "enable-proposed-api" -d "Enables proposed API features for extensions." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "verbose" -d "Print verbose output (implies --wait)." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "log" -d "Log level to use. Default is 'info'." -xa "critical error warn info debug trace off" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -s "s" -l "status" -d "Print process usage and diagnostics information." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "prof-startup" -d "Run CPU profiler during startup." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "disable-extensions" -d "Disable all installed extensions." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "disable-extension" -d "Disable the provided extension." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "sync" -d "Turn sync on or off." -xa "on off" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "inspect-extensions" -d "Allow debugging and profiling of extensions." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "inspect-brk-extensions" -d "Allow debugging and profiling of extensions with the extension host being paused after start." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "disable-lcd-text" -d "Disable LCD font rendering." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "disable-gpu" -d "Disable GPU hardware acceleration." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "disable-chromium-sandbox" -d "Use this option only when there is requirement to launch the application as sudo user on Linux or when running as an elevated user in an applocker environment on Windows." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "locate-shell-integration-path" -d "Print the path to a terminal shell integration script." -xa "bash pwsh zsh fish" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "telemetry" -d "Shows all telemetry events which VS code collects." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -s "d" -l "diff" -d "Compare two files with each other." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -s "m" -l "merge" -d "Perform a three-way merge by providing paths for two modified versions of a file, the common origin of both modified versions and the output file to save merge results." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -s "a" -l "add" -d "Add folder(s) to the last active window." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "remove" -d "Remove folder(s) from the last active window." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -s "g" -l "goto" -d "Open a file at the path on the specified line and character position." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -s "n" -l "new-window" -d "Force to open a new window." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -s "r" -l "reuse-window" -d "Force to open a file or folder in an already opened window." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -s "w" -l "wait" -d "Wait for the files to be closed before returning." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "locale" -d "The locale to use." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "user-data-dir" -d "Specifies the directory that user data is kept in." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "profile" -d "Opens the provided folder or workspace with the given profile and associates the profile with the workspace." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "add-mcp" -d "Adds a Model Context Protocol server definition to the user profile, or workspace or folder when used with --mcp-workspace." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "extensions-dir" -d "Set the root path for extensions." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "list-extensions" -d "List the installed extensions." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "show-versions" -d "Show versions of installed extensions, when using --list-extensions." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "category" -d "Filters installed extensions by provided category, when using --list-extensions." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "install-extension" -d "Installs or updates an extension." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "pre-release" -d "Installs the pre-release version of the extension, when using --install-extension." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "uninstall-extension" -d "Uninstalls an extension." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "update-extensions" -d "Update the installed extensions." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "enable-proposed-api" -d "Enables proposed API features for extensions." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "verbose" -d "Print verbose output (implies --wait)." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "log" -d "Log level to use. Default is 'info'." -xa "critical error warn info debug trace off" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -s "s" -l "status" -d "Print process usage and diagnostics information." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "prof-startup" -d "Run CPU profiler during startup." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "disable-extensions" -d "Disable all installed extensions." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "disable-extension" -d "Disable the provided extension." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "sync" -d "Turn sync on or off." -xa "on off" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "inspect-extensions" -d "Allow debugging and profiling of extensions." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "inspect-brk-extensions" -d "Allow debugging and profiling of extensions with the extension host being paused after start." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "disable-lcd-text" -d "Disable LCD font rendering." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "disable-gpu" -d "Disable GPU hardware acceleration." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "disable-chromium-sandbox" -d "Use this option only when there is requirement to launch the application as sudo user on Linux or when running as an elevated user in an applocker environment on Windows." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "locate-shell-integration-path" -d "Print the path to a terminal shell integration script." -xa "bash pwsh zsh fish" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "telemetry" -d "Shows all telemetry events which VS code collects." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -s "d" -l "diff" -d "Compare two files with each other." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -s "m" -l "merge" -d "Perform a three-way merge by providing paths for two modified versions of a file, the common origin of both modified versions and the output file to save merge results." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -s "a" -l "add" -d "Add folder(s) to the last active window." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -l "remove" -d "Remove folder(s) from the last active window." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -s "g" -l "goto" -d "Open a file at the path on the specified line and character position." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -s "n" -l "new-window" -d "Force to open a new window." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -s "r" -l "reuse-window" -d "Force to open a file or folder in an already opened window." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -s "w" -l "wait" -d "Wait for the files to be closed before returning." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -l "locale" -d "The locale to use." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -l "user-data-dir" -d "Specifies the directory that user data is kept in." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -l "profile" -d "Opens the provided folder or workspace with the given profile and associates the profile with the workspace." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -l "add-mcp" -d "Adds a Model Context Protocol server definition to the user profile, or workspace or folder when used with --mcp-workspace." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -l "extensions-dir" -d "Set the root path for extensions." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -l "list-extensions" -d "List the installed extensions." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -l "show-versions" -d "Show versions of installed extensions, when using --list-extensions." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -l "category" -d "Filters installed extensions by provided category, when using --list-extensions." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -l "install-extension" -d "Installs or updates an extension." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -l "pre-release" -d "Installs the pre-release version of the extension, when using --install-extension." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -l "uninstall-extension" -d "Uninstalls an extension." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -l "update-extensions" -d "Update the installed extensions." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -l "enable-proposed-api" -d "Enables proposed API features for extensions." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -l "verbose" -d "Print verbose output (implies --wait)." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -l "log" -d "Log level to use. Default is 'info'." -xa "critical error warn info debug trace off" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -s "s" -l "status" -d "Print process usage and diagnostics information." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -l "prof-startup" -d "Run CPU profiler during startup." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -l "disable-extensions" -d "Disable all installed extensions." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -l "disable-extension" -d "Disable the provided extension." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -l "sync" -d "Turn sync on or off." -xa "on off" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -l "inspect-extensions" -d "Allow debugging and profiling of extensions." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -l "inspect-brk-extensions" -d "Allow debugging and profiling of extensions with the extension host being paused after start." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -l "disable-lcd-text" -d "Disable LCD font rendering." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -l "disable-gpu" -d "Disable GPU hardware acceleration." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -l "disable-chromium-sandbox" -d "Use this option only when there is requirement to launch the application as sudo user on Linux or when running as an elevated user in an applocker environment on Windows." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -l "locate-shell-integration-path" -d "Print the path to a terminal shell integration script." -xa "bash pwsh zsh fish" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -l "telemetry" -d "Shows all telemetry events which VS code collects." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "install-extension" -d "Requests that extensions be preloaded and installed on connecting servers" # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "server-data-dir" -d "Specifies the directory that server data is kept in" # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "extensions-dir" -d "Set the root path for extensions" # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -s "h" -l "help" -d "Print help" # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "random-name" -d "Randomly name machine for port forwarding service" # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "no-sleep" -d "Prevents the machine going to sleep while this command runs" # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "name" -d "Sets the machine name for port forwarding service" # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "accept-server-license-terms" -d "If set, the user accepts the server license terms and the server will be started without a user prompt" # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "cli-data-dir" -d "Directory where CLI metadata should be stored" # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "verbose" -d "Print verbose output (implies --wait)" # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -l "log" -d "Log level to use" -xa "trace debug info warn error critical off" # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -a "prune" -d "Delete all servers which are currently not running" # sub
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -a "kill" -d "Stops any running tunnel on the system" # sub
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -a "restart" -d "Restarts any running tunnel on the system" # sub
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -a "status" -d "Gets whether there is a tunnel running on the current machine" # sub
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -a "rename" -d "Rename the name of this machine associated with port forwarding service" # sub
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -a "unregister" -d "Remove this machine's association with the port forwarding service" # sub
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -a "user" # sub
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -a "service" -d "(Preview) Manages the tunnel when installed as a system service" # sub
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel'" -a "help" -d "Print this message or the help of the given subcommand(s)" # sub
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel prune'" -l "install-extension" -d "Requests that extensions be preloaded and installed on connecting servers" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel prune'" -l "server-data-dir" -d "Specifies the directory that server data is kept in" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel prune'" -l "extensions-dir" -d "Set the root path for extensions" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel prune'" -l "random-name" -d "Randomly name machine for port forwarding service" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel prune'" -l "no-sleep" -d "Prevents the machine going to sleep while this command runs" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel prune'" -l "name" -d "Sets the machine name for port forwarding service" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel prune'" -l "accept-server-license-terms" -d "If set, the user accepts the server license terms and the server will be started without a user prompt" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel prune'" -l "cli-data-dir" -d "Directory where CLI metadata should be stored" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel prune'" -l "verbose" -d "Print verbose output (implies --wait)" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel prune'" -l "log" -d "Log level to use" -xa "trace debug info warn error critical off" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel kill'" -l "install-extension" -d "Requests that extensions be preloaded and installed on connecting servers" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel kill'" -l "server-data-dir" -d "Specifies the directory that server data is kept in" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel kill'" -l "extensions-dir" -d "Set the root path for extensions" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel kill'" -l "random-name" -d "Randomly name machine for port forwarding service" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel kill'" -l "no-sleep" -d "Prevents the machine going to sleep while this command runs" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel kill'" -l "name" -d "Sets the machine name for port forwarding service" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel kill'" -l "accept-server-license-terms" -d "If set, the user accepts the server license terms and the server will be started without a user prompt" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel kill'" -l "cli-data-dir" -d "Directory where CLI metadata should be stored" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel kill'" -l "verbose" -d "Print verbose output (implies --wait)" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel kill'" -l "log" -d "Log level to use" -xa "trace debug info warn error critical off" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel restart'" -l "install-extension" -d "Requests that extensions be preloaded and installed on connecting servers" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel restart'" -l "server-data-dir" -d "Specifies the directory that server data is kept in" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel restart'" -l "extensions-dir" -d "Set the root path for extensions" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel restart'" -l "random-name" -d "Randomly name machine for port forwarding service" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel restart'" -l "no-sleep" -d "Prevents the machine going to sleep while this command runs" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel restart'" -l "name" -d "Sets the machine name for port forwarding service" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel restart'" -l "accept-server-license-terms" -d "If set, the user accepts the server license terms and the server will be started without a user prompt" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel restart'" -l "cli-data-dir" -d "Directory where CLI metadata should be stored" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel restart'" -l "verbose" -d "Print verbose output (implies --wait)" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel restart'" -l "log" -d "Log level to use" -xa "trace debug info warn error critical off" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel status'" -l "install-extension" -d "Requests that extensions be preloaded and installed on connecting servers" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel status'" -l "server-data-dir" -d "Specifies the directory that server data is kept in" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel status'" -l "extensions-dir" -d "Set the root path for extensions" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel status'" -l "random-name" -d "Randomly name machine for port forwarding service" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel status'" -l "no-sleep" -d "Prevents the machine going to sleep while this command runs" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel status'" -l "name" -d "Sets the machine name for port forwarding service" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel status'" -l "accept-server-license-terms" -d "If set, the user accepts the server license terms and the server will be started without a user prompt" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel status'" -l "cli-data-dir" -d "Directory where CLI metadata should be stored" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel status'" -l "verbose" -d "Print verbose output (implies --wait)" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel status'" -l "log" -d "Log level to use" -xa "trace debug info warn error critical off" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel rename'" -l "install-extension" -d "Requests that extensions be preloaded and installed on connecting servers" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel rename'" -l "server-data-dir" -d "Specifies the directory that server data is kept in" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel rename'" -l "extensions-dir" -d "Set the root path for extensions" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel rename'" -l "random-name" -d "Randomly name machine for port forwarding service" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel rename'" -l "no-sleep" -d "Prevents the machine going to sleep while this command runs" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel rename'" -l "name" -d "Sets the machine name for port forwarding service" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel rename'" -l "accept-server-license-terms" -d "If set, the user accepts the server license terms and the server will be started without a user prompt" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel rename'" -l "cli-data-dir" -d "Directory where CLI metadata should be stored" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel rename'" -l "verbose" -d "Print verbose output (implies --wait)" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel rename'" -l "log" -d "Log level to use" -xa "trace debug info warn error critical off" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel unregister'" -l "install-extension" -d "Requests that extensions be preloaded and installed on connecting servers" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel unregister'" -l "server-data-dir" -d "Specifies the directory that server data is kept in" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel unregister'" -l "extensions-dir" -d "Set the root path for extensions" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel unregister'" -l "random-name" -d "Randomly name machine for port forwarding service" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel unregister'" -l "no-sleep" -d "Prevents the machine going to sleep while this command runs" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel unregister'" -l "name" -d "Sets the machine name for port forwarding service" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel unregister'" -l "accept-server-license-terms" -d "If set, the user accepts the server license terms and the server will be started without a user prompt" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel unregister'" -l "cli-data-dir" -d "Directory where CLI metadata should be stored" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel unregister'" -l "verbose" -d "Print verbose output (implies --wait)" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel unregister'" -l "log" -d "Log level to use" -xa "trace debug info warn error critical off" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel user'" -l "install-extension" -d "Requests that extensions be preloaded and installed on connecting servers" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel user'" -l "server-data-dir" -d "Specifies the directory that server data is kept in" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel user'" -l "extensions-dir" -d "Set the root path for extensions" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel user'" -l "random-name" -d "Randomly name machine for port forwarding service" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel user'" -l "no-sleep" -d "Prevents the machine going to sleep while this command runs" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel user'" -l "name" -d "Sets the machine name for port forwarding service" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel user'" -l "accept-server-license-terms" -d "If set, the user accepts the server license terms and the server will be started without a user prompt" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel user'" -l "cli-data-dir" -d "Directory where CLI metadata should be stored" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel user'" -l "verbose" -d "Print verbose output (implies --wait)" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel user'" -l "log" -d "Log level to use" -xa "trace debug info warn error critical off" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel service'" -l "install-extension" -d "Requests that extensions be preloaded and installed on connecting servers" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel service'" -l "server-data-dir" -d "Specifies the directory that server data is kept in" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel service'" -l "extensions-dir" -d "Set the root path for extensions" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel service'" -l "random-name" -d "Randomly name machine for port forwarding service" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel service'" -l "no-sleep" -d "Prevents the machine going to sleep while this command runs" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel service'" -l "name" -d "Sets the machine name for port forwarding service" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel service'" -l "accept-server-license-terms" -d "If set, the user accepts the server license terms and the server will be started without a user prompt" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel service'" -l "cli-data-dir" -d "Directory where CLI metadata should be stored" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel service'" -l "verbose" -d "Print verbose output (implies --wait)" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel service'" -l "log" -d "Log level to use" -xa "trace debug info warn error critical off" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel help'" -l "install-extension" -d "Requests that extensions be preloaded and installed on connecting servers" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel help'" -l "server-data-dir" -d "Specifies the directory that server data is kept in" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel help'" -l "extensions-dir" -d "Set the root path for extensions" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel help'" -l "random-name" -d "Randomly name machine for port forwarding service" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel help'" -l "no-sleep" -d "Prevents the machine going to sleep while this command runs" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel help'" -l "name" -d "Sets the machine name for port forwarding service" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel help'" -l "accept-server-license-terms" -d "If set, the user accepts the server license terms and the server will be started without a user prompt" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel help'" -l "cli-data-dir" -d "Directory where CLI metadata should be stored" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel help'" -l "verbose" -d "Print verbose output (implies --wait)" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'tunnel help'" -l "log" -d "Log level to use" -xa "trace debug info warn error critical off" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "host" -d "Host to listen on, defaults to 'localhost'" # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "socket-path" # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "port" -d "Port to listen on. If 0 is passed a random free port is picked" # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "connection-token" -d "A secret that must be included with all requests" # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "connection-token-file" -d "A file containing a secret that must be included with all requests" # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "without-connection-token" -d "Run without a connection token. Only use this if the connection is secured by other means" # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "accept-server-license-terms" -d "If set, the user accepts the server license terms and the server will be started without a user prompt" # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "server-base-path" -d "Specifies the path under which the web UI and the code server is provided" # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "server-data-dir" -d "Specifies the directory that server data is kept in" # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -s "h" -l "help" -d "Print help" # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "cli-data-dir" -d "Directory where CLI metadata should be stored" -xa "{}" # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "verbose" -d "Print verbose output (implies --wait)" # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'serve-web'" -l "log" -d "Log level to use" -xa "trace debug info warn error critical off" # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -s "v" -l "version" -d "Output the version number" # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" -xa "{}" # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -l "output-format" -d "Output format" -xa "text json stream-json" # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -l "stream-partial-output" -d "Stream partial output as individual text deltas" # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -l "resume" -d "Resume a chat session." -xa "{}" # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -l "model" -d "Model to use" -xa "{}" # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -l "approve-mcps" -d "Automatically approve all MCP servers" # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -l "browser" -d "Enable browser automation support" # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -s "h" -l "help" -d "Display help for command" # global
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -a "install-shell-integration" -d "Install shell integration to ~/.zshrc" # sub
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -a "uninstall-shell-integration" -d "Remove shell integration from ~/.zshrc" # sub
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -a "login" -d "Authenticate with Cursor. Set NO_OPEN_BROWSER to disable browser opening." # sub
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -a "logout" -d "Sign out and clear stored authentication" # sub
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -a "mcp" -d "Manage MCP servers" # sub
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -a "statuswhoami" -d "View authentication status" # sub
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -a "updateupgrade" -d "Update Cursor Agent to the latest version" # sub
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -a "create-chat" -d "Create a new empty chat and return its ID" # sub
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -a "agent" -d "Start the Cursor Agent" # sub
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -a "ls" -d "Resume a chat session" # sub
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -a "resume" -d "Resume the latest chat session" # sub
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -a "sandbox" -d "Sandbox configuration and execution commands" # sub
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent'" -a "help" -d "Display help for command" # sub
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent install-shell-integration'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent install-shell-integration'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent install-shell-integration'" -l "output-format" -d "Output format" -xa "text json stream-json" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent install-shell-integration'" -l "stream-partial-output" -d "Stream partial output as individual text deltas" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent install-shell-integration'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent install-shell-integration'" -l "resume" -d "Resume a chat session." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent install-shell-integration'" -l "model" -d "Model to use" -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent install-shell-integration'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent install-shell-integration'" -l "approve-mcps" -d "Automatically approve all MCP servers" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent install-shell-integration'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent uninstall-shell-integration'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent uninstall-shell-integration'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent uninstall-shell-integration'" -l "output-format" -d "Output format" -xa "text json stream-json" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent uninstall-shell-integration'" -l "stream-partial-output" -d "Stream partial output as individual text deltas" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent uninstall-shell-integration'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent uninstall-shell-integration'" -l "resume" -d "Resume a chat session." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent uninstall-shell-integration'" -l "model" -d "Model to use" -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent uninstall-shell-integration'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent uninstall-shell-integration'" -l "approve-mcps" -d "Automatically approve all MCP servers" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent uninstall-shell-integration'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent login'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent login'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent login'" -l "output-format" -d "Output format" -xa "text json stream-json" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent login'" -l "stream-partial-output" -d "Stream partial output as individual text deltas" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent login'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent login'" -l "resume" -d "Resume a chat session." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent login'" -l "model" -d "Model to use" -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent login'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent login'" -l "approve-mcps" -d "Automatically approve all MCP servers" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent login'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent logout'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent logout'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent logout'" -l "output-format" -d "Output format" -xa "text json stream-json" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent logout'" -l "stream-partial-output" -d "Stream partial output as individual text deltas" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent logout'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent logout'" -l "resume" -d "Resume a chat session." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent logout'" -l "model" -d "Model to use" -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent logout'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent logout'" -l "approve-mcps" -d "Automatically approve all MCP servers" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent logout'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent mcp'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent mcp'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent mcp'" -l "output-format" -d "Output format" -xa "text json stream-json" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent mcp'" -l "stream-partial-output" -d "Stream partial output as individual text deltas" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent mcp'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent mcp'" -l "resume" -d "Resume a chat session." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent mcp'" -l "model" -d "Model to use" -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent mcp'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent mcp'" -l "approve-mcps" -d "Automatically approve all MCP servers" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent mcp'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent statuswhoami'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent statuswhoami'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent statuswhoami'" -l "output-format" -d "Output format" -xa "text json stream-json" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent statuswhoami'" -l "stream-partial-output" -d "Stream partial output as individual text deltas" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent statuswhoami'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent statuswhoami'" -l "resume" -d "Resume a chat session." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent statuswhoami'" -l "model" -d "Model to use" -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent statuswhoami'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent statuswhoami'" -l "approve-mcps" -d "Automatically approve all MCP servers" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent statuswhoami'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent updateupgrade'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent updateupgrade'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent updateupgrade'" -l "output-format" -d "Output format" -xa "text json stream-json" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent updateupgrade'" -l "stream-partial-output" -d "Stream partial output as individual text deltas" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent updateupgrade'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent updateupgrade'" -l "resume" -d "Resume a chat session." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent updateupgrade'" -l "model" -d "Model to use" -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent updateupgrade'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent updateupgrade'" -l "approve-mcps" -d "Automatically approve all MCP servers" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent updateupgrade'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent create-chat'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent create-chat'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent create-chat'" -l "output-format" -d "Output format" -xa "text json stream-json" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent create-chat'" -l "stream-partial-output" -d "Stream partial output as individual text deltas" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent create-chat'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent create-chat'" -l "resume" -d "Resume a chat session." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent create-chat'" -l "model" -d "Model to use" -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent create-chat'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent create-chat'" -l "approve-mcps" -d "Automatically approve all MCP servers" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent create-chat'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent agent'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent agent'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent agent'" -l "output-format" -d "Output format" -xa "text json stream-json" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent agent'" -l "stream-partial-output" -d "Stream partial output as individual text deltas" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent agent'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent agent'" -l "resume" -d "Resume a chat session." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent agent'" -l "model" -d "Model to use" -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent agent'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent agent'" -l "approve-mcps" -d "Automatically approve all MCP servers" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent agent'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent ls'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent ls'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent ls'" -l "output-format" -d "Output format" -xa "text json stream-json" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent ls'" -l "stream-partial-output" -d "Stream partial output as individual text deltas" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent ls'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent ls'" -l "resume" -d "Resume a chat session." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent ls'" -l "model" -d "Model to use" -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent ls'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent ls'" -l "approve-mcps" -d "Automatically approve all MCP servers" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent ls'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent resume'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent resume'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent resume'" -l "output-format" -d "Output format" -xa "text json stream-json" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent resume'" -l "stream-partial-output" -d "Stream partial output as individual text deltas" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent resume'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent resume'" -l "resume" -d "Resume a chat session." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent resume'" -l "model" -d "Model to use" -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent resume'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent resume'" -l "approve-mcps" -d "Automatically approve all MCP servers" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent resume'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent sandbox'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent sandbox'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent sandbox'" -l "output-format" -d "Output format" -xa "text json stream-json" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent sandbox'" -l "stream-partial-output" -d "Stream partial output as individual text deltas" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent sandbox'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent sandbox'" -l "resume" -d "Resume a chat session." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent sandbox'" -l "model" -d "Model to use" -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent sandbox'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent sandbox'" -l "approve-mcps" -d "Automatically approve all MCP servers" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent sandbox'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent help'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent help'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent help'" -l "output-format" -d "Output format" -xa "text json stream-json" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent help'" -l "stream-partial-output" -d "Stream partial output as individual text deltas" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent help'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent help'" -l "resume" -d "Resume a chat session." -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent help'" -l "model" -d "Model to use" -xa "{}" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent help'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent help'" -l "approve-mcps" -d "Automatically approve all MCP servers" # subcommands flags
complete -c "cursor" -n "__fish_seen_subcommand_from 'agent help'" -l "browser" -d "Enable browser automation support" # subcommands flags