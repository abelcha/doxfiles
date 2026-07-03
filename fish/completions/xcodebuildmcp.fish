complete -c "xcodebuildmcp" -l "log-level" -d "Set log verbosity level" -xa "none error warn info debug" # global
complete -c "xcodebuildmcp" -l "style" -d "Output style (normal is detailed; minimal is compact MCP-like output)" -xa "normal minimal" # global
complete -c "xcodebuildmcp" -l "file-path-render-style" -d "Render file artifacts as a compact tree or labeled list in text output" -xa "tree list" # global
complete -c "xcodebuildmcp" -s "h" -l "help" -d "Show help" # global
complete -c "xcodebuildmcp" -s "v" -l "version" -d "Show version number" # global
complete -f -c "xcodebuildmcp" -n "__fish_use_subcommand" -a "mcp" -d "Start the MCP server (for use with MCP clients)" # sub
complete -f -c "xcodebuildmcp" -n "__fish_use_subcommand" -a "init" -d "Install XcodeBuildMCP agent skill" # sub
complete -f -c "xcodebuildmcp" -n "__fish_use_subcommand" -a "setup" -d "Interactively configure XcodeBuildMCP project defaults" # sub
complete -f -c "xcodebuildmcp" -n "__fish_use_subcommand" -a "upgrade" -d "Check for updates and upgrade XcodeBuildMCP" # sub
complete -f -c "xcodebuildmcp" -n "__fish_use_subcommand" -a "tools" -d "List available tools" # sub
complete -f -c "xcodebuildmcp" -n "__fish_use_subcommand" -a "coverage" -d "Code Coverage" # sub
complete -f -c "xcodebuildmcp" -n "__fish_use_subcommand" -a "debugging" -d "LLDB Debugging" # sub
complete -f -c "xcodebuildmcp" -n "__fish_use_subcommand" -a "device" -d "Device Development" # sub
complete -f -c "xcodebuildmcp" -n "__fish_use_subcommand" -a "macos" -d "macOS Development" # sub
complete -f -c "xcodebuildmcp" -n "__fish_use_subcommand" -a "project-discovery" -d "Project Discovery" # sub
complete -f -c "xcodebuildmcp" -n "__fish_use_subcommand" -a "project-scaffolding" -d "Project Scaffolding" # sub
complete -f -c "xcodebuildmcp" -n "__fish_use_subcommand" -a "simulator" -d "iOS Simulator Development" # sub
complete -f -c "xcodebuildmcp" -n "__fish_use_subcommand" -a "simulator-management" -d "Simulator Management" # sub
complete -f -c "xcodebuildmcp" -n "__fish_use_subcommand" -a "swift-package" -d "Swift Package Development" # sub
complete -f -c "xcodebuildmcp" -n "__fish_use_subcommand" -a "ui-automation" -d "UI Automation" # sub
complete -f -c "xcodebuildmcp" -n "__fish_use_subcommand" -a "utilities" -d "Build Utilities" # sub
complete -f -c "xcodebuildmcp" -n "__fish_use_subcommand" -a "xcode-ide" -d "Xcode IDE Integration" # sub
complete -f -c "xcodebuildmcp" -n "__fish_use_subcommand" -a "daemon" -d "Manage the xcodebuildmcp daemon" # sub
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'mcp'" -l "log-level" -d "Set log verbosity level" -xa "none error warn info debug" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'mcp'" -l "style" -d "Output style (normal is detailed; minimal is compact MCP-like output)" -xa "normal minimal" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'mcp'" -l "file-path-render-style" -d "Render file artifacts as a compact tree or labeled list in text output" -xa "tree list" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'mcp'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'mcp'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'init'" -l "log-level" -d "Set log verbosity level" -xa "none error warn info debug" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'init'" -l "style" -d "Output style (normal is detailed; minimal is compact MCP-like output)" -xa "normal minimal" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'init'" -l "file-path-render-style" -d "Render file artifacts as a compact tree or labeled list in text output" -xa "tree list" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'init'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'init'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'setup'" -l "log-level" -d "Set log verbosity level" -xa "none error warn info debug" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'setup'" -l "style" -d "Output style (normal is detailed; minimal is compact MCP-like output)" -xa "normal minimal" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'setup'" -l "file-path-render-style" -d "Render file artifacts as a compact tree or labeled list in text output" -xa "tree list" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'setup'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'setup'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'upgrade'" -l "log-level" -d "Set log verbosity level" -xa "none error warn info debug" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'upgrade'" -l "style" -d "Output style (normal is detailed; minimal is compact MCP-like output)" -xa "normal minimal" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'upgrade'" -l "file-path-render-style" -d "Render file artifacts as a compact tree or labeled list in text output" -xa "tree list" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'upgrade'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'upgrade'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'tools'" -l "log-level" -d "Set log verbosity level" -xa "none error warn info debug" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'tools'" -l "style" -d "Output style (normal is detailed; minimal is compact MCP-like output)" -xa "normal minimal" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'tools'" -l "file-path-render-style" -d "Render file artifacts as a compact tree or labeled list in text output" -xa "tree list" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'tools'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'tools'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'coverage'" -l "log-level" -d "Set log verbosity level" -xa "none error warn info debug" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'coverage'" -l "style" -d "Output style (normal is detailed; minimal is compact MCP-like output)" -xa "normal minimal" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'coverage'" -l "file-path-render-style" -d "Render file artifacts as a compact tree or labeled list in text output" -xa "tree list" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'coverage'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'coverage'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'debugging'" -l "log-level" -d "Set log verbosity level" -xa "none error warn info debug" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'debugging'" -l "style" -d "Output style (normal is detailed; minimal is compact MCP-like output)" -xa "normal minimal" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'debugging'" -l "file-path-render-style" -d "Render file artifacts as a compact tree or labeled list in text output" -xa "tree list" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'debugging'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'debugging'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device'" -l "log-level" -d "Set log verbosity level" -xa "none error warn info debug" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device'" -l "style" -d "Output style (normal is detailed; minimal is compact MCP-like output)" -xa "normal minimal" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device'" -l "file-path-render-style" -d "Render file artifacts as a compact tree or labeled list in text output" -xa "tree list" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos'" -l "log-level" -d "Set log verbosity level" -xa "none error warn info debug" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos'" -l "style" -d "Output style (normal is detailed; minimal is compact MCP-like output)" -xa "normal minimal" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos'" -l "file-path-render-style" -d "Render file artifacts as a compact tree or labeled list in text output" -xa "tree list" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'project-discovery'" -l "log-level" -d "Set log verbosity level" -xa "none error warn info debug" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'project-discovery'" -l "style" -d "Output style (normal is detailed; minimal is compact MCP-like output)" -xa "normal minimal" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'project-discovery'" -l "file-path-render-style" -d "Render file artifacts as a compact tree or labeled list in text output" -xa "tree list" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'project-discovery'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'project-discovery'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'project-scaffolding'" -l "log-level" -d "Set log verbosity level" -xa "none error warn info debug" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'project-scaffolding'" -l "style" -d "Output style (normal is detailed; minimal is compact MCP-like output)" -xa "normal minimal" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'project-scaffolding'" -l "file-path-render-style" -d "Render file artifacts as a compact tree or labeled list in text output" -xa "tree list" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'project-scaffolding'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'project-scaffolding'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator'" -l "log-level" -d "Set log verbosity level" -xa "none error warn info debug" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator'" -l "style" -d "Output style (normal is detailed; minimal is compact MCP-like output)" -xa "normal minimal" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator'" -l "file-path-render-style" -d "Render file artifacts as a compact tree or labeled list in text output" -xa "tree list" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management'" -l "log-level" -d "Set log verbosity level" -xa "none error warn info debug" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management'" -l "style" -d "Output style (normal is detailed; minimal is compact MCP-like output)" -xa "normal minimal" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management'" -l "file-path-render-style" -d "Render file artifacts as a compact tree or labeled list in text output" -xa "tree list" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'swift-package'" -l "log-level" -d "Set log verbosity level" -xa "none error warn info debug" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'swift-package'" -l "style" -d "Output style (normal is detailed; minimal is compact MCP-like output)" -xa "normal minimal" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'swift-package'" -l "file-path-render-style" -d "Render file artifacts as a compact tree or labeled list in text output" -xa "tree list" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'swift-package'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'swift-package'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation'" -l "log-level" -d "Set log verbosity level" -xa "none error warn info debug" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation'" -l "style" -d "Output style (normal is detailed; minimal is compact MCP-like output)" -xa "normal minimal" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation'" -l "file-path-render-style" -d "Render file artifacts as a compact tree or labeled list in text output" -xa "tree list" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'utilities'" -l "log-level" -d "Set log verbosity level" -xa "none error warn info debug" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'utilities'" -l "style" -d "Output style (normal is detailed; minimal is compact MCP-like output)" -xa "normal minimal" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'utilities'" -l "file-path-render-style" -d "Render file artifacts as a compact tree or labeled list in text output" -xa "tree list" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'utilities'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'utilities'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'xcode-ide'" -l "log-level" -d "Set log verbosity level" -xa "none error warn info debug" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'xcode-ide'" -l "style" -d "Output style (normal is detailed; minimal is compact MCP-like output)" -xa "normal minimal" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'xcode-ide'" -l "file-path-render-style" -d "Render file artifacts as a compact tree or labeled list in text output" -xa "tree list" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'xcode-ide'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'xcode-ide'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'daemon'" -l "log-level" -d "Set log verbosity level" -xa "none error warn info debug" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'daemon'" -l "style" -d "Output style (normal is detailed; minimal is compact MCP-like output)" -xa "normal minimal" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'daemon'" -l "file-path-render-style" -d "Render file artifacts as a compact tree or labeled list in text output" -xa "tree list" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'daemon'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'daemon'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'init'" -l "version" -d "Show version number" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'init'" -l "help" -d "Show help" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'init'" -l "log-level" -d "Set log verbosity level" -xa "none error warn info debug" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'init'" -l "style" -d "Output style (normal is detailed; minimal is compact MCP-like output)" -xa "normal minimal" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'init'" -l "file-path-render-style" -d "Render file artifacts as a compact tree or labeled list in text output" -xa "tree list" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'init'" -l "client" -d "Target client: claude, agents (default: auto-detect)" -xa "auto claude agents" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'init'" -l "skill" -d "Skill variant: mcp or cli (default: cli)" -xa "mcp cli" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'init'" -l "dest" -d "Custom destination directory (overrides --client)" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'init'" -l "force" -d "Replace existing skill without prompting" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'init'" -l "remove-conflict" -d "Auto-remove conflicting skill variant" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'init'" -l "uninstall" -d "Remove the installed skill" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'init'" -l "print" -d "Print the skill content to stdout instead of installing" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'setup'" -l "version" -d "Show version number" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'setup'" -l "help" -d "Show help" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'setup'" -l "log-level" -d "Set log verbosity level" -xa "none error warn info debug" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'setup'" -l "style" -d "Output style (normal is detailed; minimal is compact MCP-like output)" -xa "normal minimal" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'setup'" -l "file-path-render-style" -d "Render file artifacts as a compact tree or labeled list in text output" -xa "tree list" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'setup'" -l "format" -d "Output format: yaml writes .xcodebuildmcp/config.yaml, mcp-json prints an env-based MCP bootstrap config block" -xa "yaml mcp-json" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'upgrade'" -l "version" -d "Show version number" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'upgrade'" -l "help" -d "Show help" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'upgrade'" -l "log-level" -d "Set log verbosity level" -xa "none error warn info debug" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'upgrade'" -l "style" -d "Output style (normal is detailed; minimal is compact MCP-like output)" -xa "normal minimal" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'upgrade'" -l "file-path-render-style" -d "Render file artifacts as a compact tree or labeled list in text output" -xa "tree list" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'upgrade'" -l "check" -d "Check for updates without upgrading" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'upgrade'" -s "y" -l "yes" -d "Skip confirmation and upgrade automatically" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'tools'" -l "log-level" -d "Set log verbosity level" -xa "none error warn info debug" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'tools'" -l "style" -d "Output style (normal is detailed; minimal is compact MCP-like output)" -xa "normal minimal" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'tools'" -l "file-path-render-style" -d "Render file artifacts as a compact tree or labeled list in text output" -xa "tree list" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'tools'" -s "f" -l "flat" -d "Show flat list instead of grouped by workflow" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'tools'" -s "v" -l "verbose" -d "Show version number" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'tools'" -l "json" -d "Output as JSON" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'tools'" -s "w" -l "workflow" -d "Filter by workflow name" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'tools'" -s "h" -l "help" -d "Show help" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'coverage'" -s "h" -l "help" -d "Show help" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'coverage'" -s "v" -l "version" -d "Show version number" # global
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'coverage'" -a "get-coverage-report" -d "Show per-target code coverage from an xcresult bundle." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'coverage'" -a "get-file-coverage" -d "Show function-level coverage and uncovered line ranges for a specific file." # sub
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'coverage get-coverage-report'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'coverage get-coverage-report'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'coverage get-file-coverage'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'coverage get-file-coverage'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'debugging'" -s "h" -l "help" -d "Show help" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'debugging'" -s "v" -l "version" -d "Show version number" # global
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'debugging'" -a "attach" -d "Attach LLDB to sim app." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'debugging'" -a "add-breakpoint" -d "Add breakpoint." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'debugging'" -a "remove-breakpoint" -d "Remove breakpoint." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'debugging'" -a "continue" -d "Continue debug session." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'debugging'" -a "detach" -d "Detach debugger." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'debugging'" -a "lldb-command" -d "Run LLDB command." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'debugging'" -a "stack" -d "Get backtrace." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'debugging'" -a "variables" -d "Get frame variables." # sub
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'debugging attach'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'debugging attach'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'debugging add-breakpoint'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'debugging add-breakpoint'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'debugging remove-breakpoint'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'debugging remove-breakpoint'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'debugging continue'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'debugging continue'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'debugging detach'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'debugging detach'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'debugging lldb-command'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'debugging lldb-command'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'debugging stack'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'debugging stack'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'debugging variables'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'debugging variables'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device'" -s "h" -l "help" -d "Show help" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device'" -s "v" -l "version" -d "Show version number" # global
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device'" -a "build" -d "Build for device." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device'" -a "build-and-run" -d "Build, install, and launch on physical device. Preferred single-step run tool when defaults are set." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device'" -a "test" -d "Test on device." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device'" -a "list" -d "List connected devices." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device'" -a "install" -d "Install app on device." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device'" -a "launch" -d "Launch app on device." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device'" -a "stop" -d "Stop device app." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device'" -a "get-app-path" -d "Get device built app path." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device'" -a "clean" -d "Clean build products." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device'" -a "discover-projects" -d "Scans a directory (defaults to workspace root) to find Xcode project (.xcodeproj) and workspace (.xcworkspace) files. Use when project/workspace path is unknown." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device'" -a "list-schemes" -d "List Xcode schemes." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device'" -a "show-build-settings" -d "Show build settings." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device'" -a "get-app-bundle-id" -d "Extract bundle id from .app." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device'" -a "get-coverage-report" -d "Show per-target code coverage from an xcresult bundle." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device'" -a "get-file-coverage" -d "Show function-level coverage and uncovered line ranges for a specific file." # sub
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device build'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device build'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device build-and-run'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device build-and-run'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device test'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device test'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device list'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device list'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device install'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device install'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device launch'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device launch'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device stop'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device stop'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device get-app-path'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device get-app-path'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device clean'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device clean'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device discover-projects'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device discover-projects'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device list-schemes'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device list-schemes'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device show-build-settings'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device show-build-settings'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device get-app-bundle-id'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device get-app-bundle-id'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device get-coverage-report'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device get-coverage-report'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device get-file-coverage'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'device get-file-coverage'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos'" -s "h" -l "help" -d "Show help" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos'" -s "v" -l "version" -d "Show version number" # global
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos'" -a "build" -d "Build macOS app." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos'" -a "build-and-run" -d "Build and run macOS app." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos'" -a "test" -d "Test macOS target." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos'" -a "launch" -d "Launch macOS app." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos'" -a "stop" -d "Stop macOS app." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos'" -a "get-app-path" -d "Get macOS built app path." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos'" -a "get-macos-bundle-id" -d "Extract bundle id from macOS .app." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos'" -a "clean" -d "Clean build products." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos'" -a "discover-projects" -d "Scans a directory (defaults to workspace root) to find Xcode project (.xcodeproj) and workspace (.xcworkspace) files. Use when project/workspace path is unknown." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos'" -a "list-schemes" -d "List Xcode schemes." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos'" -a "show-build-settings" -d "Show build settings." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos'" -a "get-coverage-report" -d "Show per-target code coverage from an xcresult bundle." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos'" -a "get-file-coverage" -d "Show function-level coverage and uncovered line ranges for a specific file." # sub
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos build'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos build'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos build-and-run'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos build-and-run'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos test'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos test'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos launch'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos launch'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos stop'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos stop'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos get-app-path'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos get-app-path'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos get-macos-bundle-id'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos get-macos-bundle-id'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos clean'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos clean'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos discover-projects'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos discover-projects'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos list-schemes'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos list-schemes'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos show-build-settings'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos show-build-settings'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos get-coverage-report'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos get-coverage-report'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos get-file-coverage'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'macos get-file-coverage'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'project-discovery'" -s "h" -l "help" -d "Show help" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'project-discovery'" -s "v" -l "version" -d "Show version number" # global
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'project-discovery'" -a "discover-projects" -d "Scans a directory (defaults to workspace root) to find Xcode project (.xcodeproj) and workspace (.xcworkspace) files. Use when project/workspace path is unknown." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'project-discovery'" -a "list-schemes" -d "List Xcode schemes." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'project-discovery'" -a "show-build-settings" -d "Show build settings." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'project-discovery'" -a "get-app-bundle-id" -d "Extract bundle id from .app." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'project-discovery'" -a "get-macos-bundle-id" -d "Extract bundle id from macOS .app." # sub
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'project-discovery discover-projects'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'project-discovery discover-projects'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'project-discovery list-schemes'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'project-discovery list-schemes'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'project-discovery show-build-settings'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'project-discovery show-build-settings'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'project-discovery get-app-bundle-id'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'project-discovery get-app-bundle-id'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'project-discovery get-macos-bundle-id'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'project-discovery get-macos-bundle-id'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'project-scaffolding'" -s "h" -l "help" -d "Show help" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'project-scaffolding'" -s "v" -l "version" -d "Show version number" # global
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'project-scaffolding'" -a "scaffold-ios" -d "Scaffold iOS project." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'project-scaffolding'" -a "scaffold-macos" -d "Scaffold macOS project." # sub
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'project-scaffolding scaffold-ios'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'project-scaffolding scaffold-ios'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'project-scaffolding scaffold-macos'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'project-scaffolding scaffold-macos'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator'" -s "h" -l "help" -d "Show help" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator'" -s "v" -l "version" -d "Show version number" # global
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator'" -a "list" -d "List iOS simulators." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator'" -a "boot" -d "Boot iOS simulator for manual/non-build flows. Not required before simulator build-and-run (build_run_sim)." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator'" -a "open" -d "Open Simulator.app for visibility/manual workflows. Not required before simulator build-and-run (build_run_sim)." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator'" -a "build" -d "Build for iOS sim (compile-only, no launch)." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator'" -a "build-and-run" -d "Build, install, and launch on iOS Simulator; boots simulator and attempts to open Simulator.app as needed. Runtime logs are captured automatically and the log file path is included in the response. Preferred single-step run tool when defaults are set." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator'" -a "test" -d "Test on iOS sim." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator'" -a "get-app-path" -d "Get sim built app path." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator'" -a "install" -d "Install app on sim." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator'" -a "launch-app" -d "Launch app on simulator. Runtime logs are captured automatically and the log file path is included in the response." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator'" -a "stop" -d "Stop sim app." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator'" -a "record-video" -d "Record sim video." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator'" -a "clean" -d "Clean build products." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator'" -a "discover-projects" -d "Scans a directory (defaults to workspace root) to find Xcode project (.xcodeproj) and workspace (.xcworkspace) files. Use when project/workspace path is unknown." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator'" -a "list-schemes" -d "List Xcode schemes." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator'" -a "show-build-settings" -d "Show build settings." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator'" -a "get-app-bundle-id" -d "Extract bundle id from .app." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator'" -a "screenshot" -d "Capture screenshot." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator'" -a "snapshot-ui" -d "Capture a semantic rs/1 runtime UI snapshot with elementRef targets. Observe once, use tap for one target or batch for multiple same-screen targets, and refresh after navigation, scrolling, sheet changes, or obvious layout changes." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator'" -a "get-coverage-report" -d "Show per-target code coverage from an xcresult bundle." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator'" -a "get-file-coverage" -d "Show function-level coverage and uncovered line ranges for a specific file." # sub
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator list'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator list'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator boot'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator boot'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator open'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator open'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator build'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator build'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator build-and-run'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator build-and-run'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator test'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator test'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator get-app-path'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator get-app-path'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator install'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator install'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator launch-app'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator launch-app'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator stop'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator stop'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator record-video'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator record-video'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator clean'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator clean'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator discover-projects'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator discover-projects'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator list-schemes'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator list-schemes'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator show-build-settings'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator show-build-settings'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator get-app-bundle-id'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator get-app-bundle-id'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator screenshot'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator screenshot'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator snapshot-ui'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator snapshot-ui'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator get-coverage-report'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator get-coverage-report'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator get-file-coverage'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator get-file-coverage'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management'" -s "h" -l "help" -d "Show help" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management'" -s "v" -l "version" -d "Show version number" # global
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management'" -a "boot" -d "Boot iOS simulator for manual/non-build flows. Not required before simulator build-and-run (build_run_sim)." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management'" -a "list" -d "List iOS simulators." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management'" -a "open" -d "Open Simulator.app for visibility/manual workflows. Not required before simulator build-and-run (build_run_sim)." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management'" -a "erase" -d "Erase simulator." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management'" -a "set-location" -d "Set sim location." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management'" -a "reset-location" -d "Reset sim location." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management'" -a "set-appearance" -d "Set sim appearance." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management'" -a "statusbar" -d "Set sim status bar network." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management'" -a "toggle-software-keyboard" -d "Toggle the iOS Simulator software keyboard (Cmd+K). Shows or hides the on-screen keyboard. Requires the simulator to be booted and Accessibility permission for the MCP host." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management'" -a "toggle-connect-hardware-keyboard" -d "Toggle whether the iOS Simulator receives Mac hardware keyboard input (Cmd+Shift+K). Disconnecting makes the on-screen keyboard appear for tap-based input. Requires the simulator to be booted and Accessibility permission for the MCP host." # sub
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management boot'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management boot'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management list'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management list'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management open'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management open'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management erase'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management erase'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management set-location'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management set-location'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management reset-location'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management reset-location'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management set-appearance'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management set-appearance'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management statusbar'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management statusbar'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management toggle-software-keyboard'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management toggle-software-keyboard'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management toggle-connect-hardware-keyboard'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'simulator-management toggle-connect-hardware-keyboard'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'swift-package'" -s "h" -l "help" -d "Show help" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'swift-package'" -s "v" -l "version" -d "Show version number" # global
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'swift-package'" -a "build" -d "swift package target build." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'swift-package'" -a "test" -d "Run swift package target tests." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'swift-package'" -a "clean" -d "swift package clean." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'swift-package'" -a "run" -d "swift package target run." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'swift-package'" -a "stop" -d "Stop SwiftPM run." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'swift-package'" -a "list" -d "List SwiftPM processes." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'swift-package'" -a "get-coverage-report" -d "Show per-target code coverage from an xcresult bundle." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'swift-package'" -a "get-file-coverage" -d "Show function-level coverage and uncovered line ranges for a specific file." # sub
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'swift-package build'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'swift-package build'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'swift-package test'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'swift-package test'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'swift-package clean'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'swift-package clean'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'swift-package run'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'swift-package run'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'swift-package stop'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'swift-package stop'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'swift-package list'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'swift-package list'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'swift-package get-coverage-report'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'swift-package get-coverage-report'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'swift-package get-file-coverage'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'swift-package get-file-coverage'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation'" -s "h" -l "help" -d "Show help" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation'" -s "v" -l "version" -d "Show version number" # global
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation'" -a "snapshot-ui" -d "Capture a semantic rs/1 runtime UI snapshot with elementRef targets. Observe once, use tap for one target or batch for multiple same-screen targets, and refresh after navigation, scrolling, sheet changes, or obvious layout changes." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation'" -a "wait-for-ui" -d "Poll rs/1 runtime UI snapshots until a selector-based UI predicate, selector-free textContains/gone text predicate, or selector-free settled predicate is satisfied, then record the latest snapshot. Prefer this after navigation or layout changes. Select with elementRef, identifier, label, role, or value when a selector is needed." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation'" -a "batch" -d "UI automation batch for multiple same-screen elementRef taps, especially visible settings switches that can be toggled without intermediate assertions. The input key is steps, never commands, and each step is an object such as {\"action\":\"tap\",\"elementRef\":\"e1\"}; do not pass raw command strings. Use refs from the latest snapshot_ui or wait_for_ui output, for example {\"steps\":[{\"action\":\"tap\",\"elementRef\":\"e1\"},{\"action\":\"tap\",\"elementRef\":\"e2\"}]}." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation'" -a "tap" -d "Tap one elementRef from the latest snapshot_ui or wait_for_ui output. The elementRef must list the tap action in the snapshot targets; do not use refs from text-only rows. For multiple same-screen taps or visible switch toggles with no intermediate assertion, use batch instead of repeated tap calls." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation'" -a "touch" -d "Send touch down/up events to a UI element by elementRef from a current rs/1 runtime snapshot." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation'" -a "long-press" -d "Long press a UI element by elementRef from a current rs/1 runtime snapshot." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation'" -a "swipe" -d "Swipe within a scrollable UI element using withinElementRef from a current rs/1 runtime snapshot. withinElementRef is required; do not use elementRef. Optional distance is a normalized stroke fraction greater than 0 and up to 1. Example input: {\"withinElementRef\":\"e7\",\"direction\":\"up\",\"distance\":0.7}." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation'" -a "drag" -d "Drag from a visible runtime elementRef in a direction, then return a refreshed runtime UI snapshot." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation'" -a "gesture" -d "Simulator gesture preset." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation'" -a "button" -d "Press simulator hardware button." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation'" -a "key-press" -d "Press one hardware key using an AXe HID key code. Prefer type_text for text entry. Common values include 40 Return/Enter, 42 Backspace, 43 Tab, and 44 Space." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation'" -a "key-sequence" -d "Press hardware keys using AXe HID key codes. Prefer type_text for text entry. Common values include 40 Return/Enter, 42 Backspace, 43 Tab, and 44 Space." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation'" -a "type-text" -d "Type text into a UI element by elementRef from a current rs/1 runtime snapshot, optionally replacing existing field contents. elementRef is required; do not call with only text. Example input: {\"elementRef\":\"e8\",\"text\":\"London\",\"replaceExisting\":true}." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation'" -a "screenshot" -d "Capture screenshot." # sub
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation snapshot-ui'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation snapshot-ui'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation wait-for-ui'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation wait-for-ui'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation batch'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation batch'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation tap'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation tap'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation touch'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation touch'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation long-press'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation long-press'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation swipe'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation swipe'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation drag'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation drag'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation gesture'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation gesture'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation button'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation button'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation key-press'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation key-press'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation key-sequence'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation key-sequence'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation type-text'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation type-text'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation screenshot'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'ui-automation screenshot'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'utilities'" -s "h" -l "help" -d "Show help" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'utilities'" -s "v" -l "version" -d "Show version number" # global
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'utilities'" -a "clean" -d "Clean build products." # sub
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'utilities clean'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'utilities clean'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'xcode-ide'" -s "h" -l "help" -d "Show help" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'xcode-ide'" -s "v" -l "version" -d "Show version number" # global
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'xcode-ide'" -a "list-tools" -d "Lists Xcode-IDE-only MCP capabilities (Use for: SwiftUI previews image capture, code snippet execution, issue Navigator/build logs, and window/tab context)." # sub
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'xcode-ide'" -a "call-tool" -d "Call a remote Xcode IDE MCP tool." # sub
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'xcode-ide list-tools'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'xcode-ide list-tools'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'xcode-ide call-tool'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'xcode-ide call-tool'" -s "v" -l "version" -d "Show version number" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'daemon'" -l "log-level" -xa "none error warn info debug" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'daemon'" -l "style" -xa "normal minimal" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'daemon'" -l "file-path-render-style" -xa "tree list" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'daemon'" -l "daemon-log-path" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'daemon'" -l "daemon-log-level" -xa "none emergency alert critical error warn notice info debug" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'daemon'" -l "tail" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'daemon'" -s "f" -l "foreground" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'daemon'" -l "json" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'daemon'" -l "all" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'daemon'" -s "h" -l "help" # global
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'daemon'" -s "v" -l "version" # global
complete -f -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'daemon'" -a "action" -d "Daemon action" # sub
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'daemon action'" -l "log-level" -xa "none error warn info debug" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'daemon action'" -l "style" -xa "normal minimal" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'daemon action'" -l "file-path-render-style" -xa "tree list" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'daemon action'" -l "daemon-log-path" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'daemon action'" -l "daemon-log-level" -xa "none emergency alert critical error warn notice info debug" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'daemon action'" -l "tail" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'daemon action'" -s "f" -l "foreground" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'daemon action'" -l "json" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'daemon action'" -l "all" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'daemon action'" -s "h" -l "help" # subcommands flags
complete -c "xcodebuildmcp" -n "__fish_seen_subcommand_from 'daemon action'" -s "v" -l "version" # subcommands flags