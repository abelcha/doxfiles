# Visual Studio Code

function __fish_complete_vscode_extensions
    command --quiet code; and code --list-extensions
end

complete -c code -s d -l diff -d 'Compare two files with each other'
complete -c code -s m -l merge -d 'Perform a three-way merge'
complete -c code -s a -l add -d 'Add folder(s) to the last active window'
complete -c code -s g -l goto -r -d 'line and character position'
complete -c code -s n -l new-window -d 'Force to open a new window'
complete -c code -s r -l reuse-window -d 'Force to open a file or folder in an already opened window'
complete -c code -s w -l wait -d 'Wait for the files to be closed before returning'
complete -c code -l locale -x -d 'The locale to use (e.g. en-US or zh-TW)'
complete -c code -l user-data-dir -ra "(__fish_complete_directories)" -d 'Specifies the directory that user data is kept in'
complete -c code -l profile -d 'Opens the provided folder or workspace with the given profile'
complete -c code -s v -l version -d 'Print version'
complete -c code -s h -l help -d 'Print usage'

# Extensions management
complete -c code -l extensions-dir -r -d 'Set the root path for extensions'
complete -c code -l list-extensions -d 'List the installed extensions'
complete -c code -l show-versions -d 'Show versions of installed extensions' -n '__fish_seen_argument -l list-extensions'
complete -c code -l category -x -d 'Filters installed extensions by provided category' -n '__fish_seen_argument -l list-extensions'
complete -c code -l install-extension -ra "(__fish_complete_vscode_extensions)" -d 'Installs or updates the extension'
complete -c code -l force -n '__fish_seen_argument -l install-extension' -d 'Updates to the latest version'
complete -c code -l pre-release -n '__fish_seen_argument -l install-extension' -d 'Installs the pre-release version'
complete -c code -l update-extensions -d 'Update the installed extensions'
complete -c code -l enable-proposed-api -xa "(__fish_complete_vscode_extensions)" -d 'Enables proposed API features for extensions'
complete -c code -l uninstall-extension -xa "(__fish_complete_vscode_extensions)" -d 'Uninstall extension'
complete -c code -l disable-extension -xa "(__fish_complete_vscode_extensions)" -d 'Disable extension(s)'
complete -c code -l disable-extensions -d 'Disable all installed extensions'

# Troubleshooting
complete -c code -l verbose -d 'Print verbose output (implies --wait)'
complete -c code -l log -xa 'critical error warn info debug trace off' -d 'Log level to use (default: info)'
complete -c code -s s -l status -d 'Print process usage and diagnostics information'
complete -c code -l prof-startup -d 'Run CPU profiler during startup'
complete -c code -l sync -xa 'on off' -d 'Turn sync on or off'
complete -c code -l inspect-extensions -x -d 'Allow debugging and profiling of extensions'
complete -c code -l inspect-brk-extensions -x -d 'Allow debugging and profiling of extensions'
complete -c code -l disable-lcd-text -d 'Disable LCD font rendering'
complete -c code -l disable-gpu -d 'Disable GPU hardware acceleration'
complete -c code -l disable-chromium-sandbox -d 'Disable the Chromium sandbox environment'
complete -c code -l telemetry -d 'Shows all telemetry events which VS code collects'
######################################################################################################################################################################################################################
complete -c "code" -s "d" -l "diff" -d "Compare two files with each other." # global
complete -c "code" -s "m" -l "merge" -d "Perform a three-way merge by providing paths for two modified versions of a file, the common origin of both modified versions and the output file to save merge results." # global
complete -c "code" -s "a" -l "add" -d "Add folder(s) to the last active window." # global
complete -c "code" -l "remove" -d "Remove folder(s) from the last active window." # global
complete -c "code" -s "g" -l "goto" -d "Open a file at the path on the specified line and character position." # global
complete -c "code" -s "n" -l "new-window" -d "Force to open a new window." # global
complete -c "code" -s "r" -l "reuse-window" -d "Force to open a file or folder in an already opened window." # global
complete -c "code" -s "w" -l "wait" -d "Wait for the files to be closed before returning." # global
complete -c "code" -l "locale" -d "The locale to use (e.g. en-US or zh-TW)." # global
complete -c "code" -l "user-data-dir" -d "Specifies the directory that user data is kept in. Can be used to open multiple distinct instances of Code." # global
complete -c "code" -l "profile" -d "Opens the provided folder or workspace with the given profile and associates the profile with the workspace. If the profile does not exist, a new empty one is created." # global
complete -c "code" -s "h" -l "help" -d "Print usage." # global
complete -c "code" -l "add-mcp" -d "Adds a Model Context Protocol server definition to the user profile. Accepts JSON input in the form '{\"name\":\"server-name\",\"command\":...}'" # global
complete -c "code" -l "extensions-dir" -d "Set the root path for extensions." # global
complete -c "code" -l "list-extensions" -d "List the installed extensions." # global
complete -c "code" -l "show-versions" -d "Show versions of installed extensions, when using --list-extensions." # global
complete -c "code" -l "category" -d "Filters installed extensions by provided category, when using --list-extensions." # global
complete -c "code" -l "install-extension" -d "Installs or updates an extension. The argument is either an extension id or a path to a VSIX. The identifier of an extension is '＄{publisher}.＄{name}'. Use '--force' argument to update to latest version. To install a specific version provide '@＄{version}'. For example: 'vscode.csharp@1.2.3'." # global
complete -c "code" -l "pre-release" -d "Installs the pre-release version of the extension, when using --install-extension" # global
complete -c "code" -l "uninstall-extension" -d "Uninstalls an extension." # global
complete -c "code" -l "update-extensions" -d "Update the installed extensions." # global
complete -c "code" -l "enable-proposed-api" -d "Enables proposed API features for extensions. Can receive one or more extension IDs to enable individually." # global
complete -c "code" -s "v" -l "version" -d "Print version." # global
complete -c "code" -l "verbose" -d "Print verbose output (implies --wait)." # global
complete -c "code" -l "log" -d "Log level to use. Default is 'info'. Allowed values are 'critical', 'error', 'warn', 'info', 'debug', 'trace', 'off'. You can also configure the log level of an extension by passing extension id and log level in the following format: '＄{publisher}.＄{name}:＄{logLevel}'. For example: 'vscode.csharp:trace'. Can receive one or more such entries." -xa "critical error warn info debug trace off" # global
complete -c "code" -s "s" -l "status" -d "Print process usage and diagnostics information." # global
complete -c "code" -l "prof-startup" -d "Run CPU profiler during startup." # global
complete -c "code" -l "disable-extensions" -d "Disable all installed extensions. This option is not persisted and is effective only when the command opens a new window." # global
complete -c "code" -l "disable-extension" -d "Disable the provided extension. This option is not persisted and is effective only when the command opens a new window." # global
complete -c "code" -l "sync" -d "Turn sync on or off." -xa "on off" # global
complete -c "code" -l "inspect-extensions" -d "Allow debugging and profiling of extensions. Check the developer tools for the connection URI." # global
complete -c "code" -l "inspect-brk-extensions" -d "Allow debugging and profiling of extensions with the extension host being paused after start. Check the developer tools for the connection URI." # global
complete -c "code" -l "disable-lcd-text" -d "Disable LCD font rendering." # global
complete -c "code" -l "disable-gpu" -d "Disable GPU hardware acceleration." # global
complete -c "code" -l "disable-chromium-sandbox" -d "Use this option only when there is requirement to launch the application as sudo user on Linux or when running as an elevated user in an applocker environment on Windows." # global
complete -c "code" -l "locate-shell-integration-path" -d "Print the path to a terminal shell integration script. Allowed values are 'bash', 'pwsh', 'zsh' or 'fish'." -xa "bash pwsh zsh fish" # global
complete -c "code" -l "telemetry" -d "Shows all telemetry events which VS code collects." # global
complete -c "code" -n "__fish_use_subcommand" -a "tunnel" -d "Make the current machine accessible from vscode.dev or other machines through a secure tunnel" # sub
complete -c "code" -n "__fish_use_subcommand" -a "serve-web" -d "Run a server that displays the editor UI in browsers." # sub
complete -c "code" -n "__fish_seen_subcommand_from 'tunnel'" -s "d" -l "diff" -d "Compare two files with each other." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'tunnel'" -s "m" -l "merge" -d "Perform a three-way merge by providing paths for two modified versions of a file, the common origin of both modified versions and the output file to save merge results." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'tunnel'" -s "a" -l "add" -d "Add folder(s) to the last active window." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'tunnel'" -l "remove" -d "Remove folder(s) from the last active window." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'tunnel'" -s "g" -l "goto" -d "Open a file at the path on the specified line and character position." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'tunnel'" -s "n" -l "new-window" -d "Force to open a new window." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'tunnel'" -s "r" -l "reuse-window" -d "Force to open a file or folder in an already opened window." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'tunnel'" -s "w" -l "wait" -d "Wait for the files to be closed before returning." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'tunnel'" -l "locale" -d "The locale to use (e.g. en-US or zh-TW)." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'tunnel'" -l "user-data-dir" -d "Specifies the directory that user data is kept in. Can be used to open multiple distinct instances of Code." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'tunnel'" -l "profile" -d "Opens the provided folder or workspace with the given profile and associates the profile with the workspace. If the profile does not exist, a new empty one is created." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'tunnel'" -l "add-mcp" -d "Adds a Model Context Protocol server definition to the user profile. Accepts JSON input in the form '{\"name\":\"server-name\",\"command\":...}'" # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'tunnel'" -l "extensions-dir" -d "Set the root path for extensions." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'tunnel'" -l "list-extensions" -d "List the installed extensions." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'tunnel'" -l "show-versions" -d "Show versions of installed extensions, when using --list-extensions." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'tunnel'" -l "category" -d "Filters installed extensions by provided category, when using --list-extensions." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'tunnel'" -l "install-extension" -d "Installs or updates an extension. The argument is either an extension id or a path to a VSIX. The identifier of an extension is '＄{publisher}.＄{name}'. Use '--force' argument to update to latest version. To install a specific version provide '@＄{version}'. For example: 'vscode.csharp@1.2.3'." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'tunnel'" -l "pre-release" -d "Installs the pre-release version of the extension, when using --install-extension" # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'tunnel'" -l "uninstall-extension" -d "Uninstalls an extension." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'tunnel'" -l "update-extensions" -d "Update the installed extensions." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'tunnel'" -l "enable-proposed-api" -d "Enables proposed API features for extensions. Can receive one or more extension IDs to enable individually." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'tunnel'" -l "verbose" -d "Print verbose output (implies --wait)." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'tunnel'" -l "log" -d "Log level to use. Default is 'info'. Allowed values are 'critical', 'error', 'warn', 'info', 'debug', 'trace', 'off'. You can also configure the log level of an extension by passing extension id and log level in the following format: '＄{publisher}.＄{name}:＄{logLevel}'. For example: 'vscode.csharp:trace'. Can receive one or more such entries." -xa "critical error warn info debug trace off" # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'tunnel'" -s "s" -l "status" -d "Print process usage and diagnostics information." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'tunnel'" -l "prof-startup" -d "Run CPU profiler during startup." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'tunnel'" -l "disable-extensions" -d "Disable all installed extensions. This option is not persisted and is effective only when the command opens a new window." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'tunnel'" -l "disable-extension" -d "Disable the provided extension. This option is not persisted and is effective only when the command opens a new window." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'tunnel'" -l "sync" -d "Turn sync on or off." -xa "on off" # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'tunnel'" -l "inspect-extensions" -d "Allow debugging and profiling of extensions. Check the developer tools for the connection URI." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'tunnel'" -l "inspect-brk-extensions" -d "Allow debugging and profiling of extensions with the extension host being paused after start. Check the developer tools for the connection URI." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'tunnel'" -l "disable-lcd-text" -d "Disable LCD font rendering." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'tunnel'" -l "disable-gpu" -d "Disable GPU hardware acceleration." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'tunnel'" -l "disable-chromium-sandbox" -d "Use this option only when there is requirement to launch the application as sudo user on Linux or when running as an elevated user in an applocker environment on Windows." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'tunnel'" -l "locate-shell-integration-path" -d "Print the path to a terminal shell integration script. Allowed values are 'bash', 'pwsh', 'zsh' or 'fish'." -xa "bash pwsh zsh fish" # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'tunnel'" -l "telemetry" -d "Shows all telemetry events which VS code collects." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'serve-web'" -s "d" -l "diff" -d "Compare two files with each other." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'serve-web'" -s "m" -l "merge" -d "Perform a three-way merge by providing paths for two modified versions of a file, the common origin of both modified versions and the output file to save merge results." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'serve-web'" -s "a" -l "add" -d "Add folder(s) to the last active window." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'serve-web'" -l "remove" -d "Remove folder(s) from the last active window." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'serve-web'" -s "g" -l "goto" -d "Open a file at the path on the specified line and character position." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'serve-web'" -s "n" -l "new-window" -d "Force to open a new window." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'serve-web'" -s "r" -l "reuse-window" -d "Force to open a file or folder in an already opened window." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'serve-web'" -s "w" -l "wait" -d "Wait for the files to be closed before returning." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'serve-web'" -l "locale" -d "The locale to use (e.g. en-US or zh-TW)." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'serve-web'" -l "user-data-dir" -d "Specifies the directory that user data is kept in. Can be used to open multiple distinct instances of Code." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'serve-web'" -l "profile" -d "Opens the provided folder or workspace with the given profile and associates the profile with the workspace. If the profile does not exist, a new empty one is created." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'serve-web'" -l "add-mcp" -d "Adds a Model Context Protocol server definition to the user profile. Accepts JSON input in the form '{\"name\":\"server-name\",\"command\":...}'" # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'serve-web'" -l "extensions-dir" -d "Set the root path for extensions." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'serve-web'" -l "list-extensions" -d "List the installed extensions." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'serve-web'" -l "show-versions" -d "Show versions of installed extensions, when using --list-extensions." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'serve-web'" -l "category" -d "Filters installed extensions by provided category, when using --list-extensions." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'serve-web'" -l "install-extension" -d "Installs or updates an extension. The argument is either an extension id or a path to a VSIX. The identifier of an extension is '＄{publisher}.＄{name}'. Use '--force' argument to update to latest version. To install a specific version provide '@＄{version}'. For example: 'vscode.csharp@1.2.3'." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'serve-web'" -l "pre-release" -d "Installs the pre-release version of the extension, when using --install-extension" # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'serve-web'" -l "uninstall-extension" -d "Uninstalls an extension." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'serve-web'" -l "update-extensions" -d "Update the installed extensions." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'serve-web'" -l "enable-proposed-api" -d "Enables proposed API features for extensions. Can receive one or more extension IDs to enable individually." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'serve-web'" -l "verbose" -d "Print verbose output (implies --wait)." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'serve-web'" -l "log" -d "Log level to use. Default is 'info'. Allowed values are 'critical', 'error', 'warn', 'info', 'debug', 'trace', 'off'. You can also configure the log level of an extension by passing extension id and log level in the following format: '＄{publisher}.＄{name}:＄{logLevel}'. For example: 'vscode.csharp:trace'. Can receive one or more such entries." -xa "critical error warn info debug trace off" # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'serve-web'" -s "s" -l "status" -d "Print process usage and diagnostics information." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'serve-web'" -l "prof-startup" -d "Run CPU profiler during startup." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'serve-web'" -l "disable-extensions" -d "Disable all installed extensions. This option is not persisted and is effective only when the command opens a new window." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'serve-web'" -l "disable-extension" -d "Disable the provided extension. This option is not persisted and is effective only when the command opens a new window." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'serve-web'" -l "sync" -d "Turn sync on or off." -xa "on off" # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'serve-web'" -l "inspect-extensions" -d "Allow debugging and profiling of extensions. Check the developer tools for the connection URI." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'serve-web'" -l "inspect-brk-extensions" -d "Allow debugging and profiling of extensions with the extension host being paused after start. Check the developer tools for the connection URI." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'serve-web'" -l "disable-lcd-text" -d "Disable LCD font rendering." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'serve-web'" -l "disable-gpu" -d "Disable GPU hardware acceleration." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'serve-web'" -l "disable-chromium-sandbox" -d "Use this option only when there is requirement to launch the application as sudo user on Linux or when running as an elevated user in an applocker environment on Windows." # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'serve-web'" -l "locate-shell-integration-path" -d "Print the path to a terminal shell integration script. Allowed values are 'bash', 'pwsh', 'zsh' or 'fish'." -xa "bash pwsh zsh fish" # subcommands flags
complete -c "code" -n "__fish_seen_subcommand_from 'serve-web'" -l "telemetry" -d "Shows all telemetry events which VS code collects." # subcommands flags