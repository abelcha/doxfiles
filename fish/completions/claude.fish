complete -c "claude" -s "d" -l "debug" -d "Enable debug mode with optional category filtering" # global
complete -c "claude" -l "verbose" -d "Override verbose mode setting from config" # global
complete -c "claude" -s "p" -l "print" -d "Print response and exit (useful for pipes). Note: The workspace trust dialog is skipped when Claude is run with the -p mode. Only use this flag in directories you trust." # global
complete -c "claude" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # global
complete -c "claude" -l "json-schema" -d "JSON Schema for structured output validation" # global
complete -c "claude" -l "include-partial-messages" -d "Include partial message chunks as they arrive (only works with --print and --output-format=stream-json)" # global
complete -c "claude" -l "input-format" -d "Input format (only works with --print)" -xa "text stream-json" # global
complete -c "claude" -l "mcp-debug" -d "[DEPRECATED. Use --debug instead] Enable MCP debug mode (shows MCP server errors)" # global
complete -c "claude" -l "dangerously-skip-permissions" -d "Bypass all permission checks. Recommended only for sandboxes with no internet access." # global
complete -c "claude" -l "allow-dangerously-skip-permissions" -d "Enable bypassing all permission checks as an option, without it being enabled by default. Recommended only for sandboxes with no internet access." # global
complete -c "claude" -l "max-budget-usd" -d "Maximum dollar amount to spend on API calls (only works with --print)" # global
complete -c "claude" -l "replay-user-messages" -d "Re-emit user messages from stdin back on stdout for acknowledgment (only works with --input-format=stream-json and --output-format=stream-json)" # global
complete -c "claude" -l "allowedTools" -d "Comma or space-separated list of tool names to allow" # global
complete -c "claude" -l "allowed-tools" -d "Comma or space-separated list of tool names to allow" # global
complete -c "claude" -l "tools" -d "Specify the list of available tools from the built-in set. Use \"\" to disable all tools, \"default\" to use all tools, or specify tool names. Only works with --print mode." # global
complete -c "claude" -l "disallowedTools" -d "Comma or space-separated list of tool names to deny" # global
complete -c "claude" -l "disallowed-tools" -d "Comma or space-separated list of tool names to deny" # global
complete -c "claude" -l "mcp-config" -d "Load MCP servers from JSON files or strings (space-separated)" # global
complete -c "claude" -l "system-prompt" -d "System prompt to use for the session" # global
complete -c "claude" -l "append-system-prompt" -d "Append a system prompt to the default system prompt" # global
complete -c "claude" -l "permission-mode" -d "Permission mode to use for the session" -xa "acceptEdits bypassPermissions default delegate dontAsk plan" # global
complete -c "claude" -s "c" -l "continue" -d "Continue the most recent conversation" # global
complete -c "claude" -s "r" -l "resume" -d "Resume a conversation by session ID, or open interactive picker with optional search term" # global
complete -c "claude" -l "fork-session" -d "When resuming, create a new session ID instead of reusing the original (use with --resume or --continue)" # global
complete -c "claude" -l "no-session-persistence" -d "Disable session persistence - sessions will not be saved to disk and cannot be resumed (only works with --print)" # global
complete -c "claude" -l "model" -d "Model for the current session. Provide an alias for the latest model or a model's full name." # global
complete -c "claude" -l "agent" -d "Agent for the current session. Overrides the 'agent' setting." # global
complete -c "claude" -l "betas" -d "Beta headers to include in API requests (API key users only)" # global
complete -c "claude" -l "fallback-model" -d "Enable automatic fallback to specified model when default model is overloaded (only works with --print)" # global
complete -c "claude" -l "settings" -d "Path to a settings JSON file or a JSON string to load additional settings from" # global
complete -c "claude" -l "add-dir" -d "Additional directories to allow tool access to" # global
complete -c "claude" -l "ide" -d "Automatically connect to IDE on startup if exactly one valid IDE is available" # global
complete -c "claude" -l "strict-mcp-config" -d "Only use MCP servers from --mcp-config, ignoring all other MCP configurations" # global
complete -c "claude" -l "session-id" -d "Use a specific session ID for the conversation (must be a valid UUID)" # global
complete -c "claude" -l "agents" -d "JSON object defining custom agents" # global
complete -c "claude" -l "setting-sources" -d "Comma-separated list of setting sources to load (user, project, local)." # global
complete -c "claude" -l "plugin-dir" -d "Load plugins from directories for this session only (repeatable)" # global
complete -c "claude" -l "disable-slash-commands" -d "Disable all slash commands" # global
complete -c "claude" -l "chrome" -d "Enable Claude in Chrome integration" # global
complete -c "claude" -l "no-chrome" -d "Disable Claude in Chrome integration" # global
complete -c "claude" -s "v" -l "version" -d "Output the version number" # global
complete -c "claude" -s "h" -l "help" -d "Display help for command" # global
complete -f -c "claude" -n "__fish_use_subcommand" -a "mcp" -d "Configure and manage MCP servers" # sub
complete -f -c "claude" -n "__fish_use_subcommand" -a "plugin" -d "Manage Claude Code plugins" # sub
complete -f -c "claude" -n "__fish_use_subcommand" -a "setup-token" -d "Set up a long-lived authentication token (requires Claude subscription)" # sub
complete -f -c "claude" -n "__fish_use_subcommand" -a "doctor" -d "Check the health of your Claude Code auto-updater" # sub
complete -f -c "claude" -n "__fish_use_subcommand" -a "update" -d "Check for updates and install if available" # sub
complete -f -c "claude" -n "__fish_use_subcommand" -a "install" -d "Install Claude Code native build. Use [target] to specify version (stable, latest, or specific version)" # sub
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -s "d" -l "debug" -d "Enable debug mode with optional category filtering" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "verbose" -d "Override verbose mode setting from config" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -s "p" -l "print" -d "Print response and exit (useful for pipes). Note: The workspace trust dialog is skipped when Claude is run with the -p mode. Only use this flag in directories you trust." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "json-schema" -d "JSON Schema for structured output validation" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "include-partial-messages" -d "Include partial message chunks as they arrive (only works with --print and --output-format=stream-json)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "input-format" -d "Input format (only works with --print)" -xa "text stream-json" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "mcp-debug" -d "[DEPRECATED. Use --debug instead] Enable MCP debug mode (shows MCP server errors)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "dangerously-skip-permissions" -d "Bypass all permission checks. Recommended only for sandboxes with no internet access." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "allow-dangerously-skip-permissions" -d "Enable bypassing all permission checks as an option, without it being enabled by default. Recommended only for sandboxes with no internet access." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "max-budget-usd" -d "Maximum dollar amount to spend on API calls (only works with --print)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "replay-user-messages" -d "Re-emit user messages from stdin back on stdout for acknowledgment (only works with --input-format=stream-json and --output-format=stream-json)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "allowedTools" -d "Comma or space-separated list of tool names to allow" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "allowed-tools" -d "Comma or space-separated list of tool names to allow" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "tools" -d "Specify the list of available tools from the built-in set. Use \"\" to disable all tools, \"default\" to use all tools, or specify tool names. Only works with --print mode." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "disallowedTools" -d "Comma or space-separated list of tool names to deny" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "disallowed-tools" -d "Comma or space-separated list of tool names to deny" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "mcp-config" -d "Load MCP servers from JSON files or strings (space-separated)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "system-prompt" -d "System prompt to use for the session" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "append-system-prompt" -d "Append a system prompt to the default system prompt" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "permission-mode" -d "Permission mode to use for the session" -xa "acceptEdits bypassPermissions default delegate dontAsk plan" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -s "c" -l "continue" -d "Continue the most recent conversation" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -s "r" -l "resume" -d "Resume a conversation by session ID, or open interactive picker with optional search term" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "fork-session" -d "When resuming, create a new session ID instead of reusing the original (use with --resume or --continue)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "no-session-persistence" -d "Disable session persistence - sessions will not be saved to disk and cannot be resumed (only works with --print)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "model" -d "Model for the current session. Provide an alias for the latest model or a model's full name." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "agent" -d "Agent for the current session. Overrides the 'agent' setting." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "betas" -d "Beta headers to include in API requests (API key users only)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "fallback-model" -d "Enable automatic fallback to specified model when default model is overloaded (only works with --print)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "settings" -d "Path to a settings JSON file or a JSON string to load additional settings from" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "add-dir" -d "Additional directories to allow tool access to" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "ide" -d "Automatically connect to IDE on startup if exactly one valid IDE is available" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "strict-mcp-config" -d "Only use MCP servers from --mcp-config, ignoring all other MCP configurations" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "session-id" -d "Use a specific session ID for the conversation (must be a valid UUID)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "agents" -d "JSON object defining custom agents" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "setting-sources" -d "Comma-separated list of setting sources to load (user, project, local)." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "plugin-dir" -d "Load plugins from directories for this session only (repeatable)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "disable-slash-commands" -d "Disable all slash commands" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "chrome" -d "Enable Claude in Chrome integration" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "no-chrome" -d "Disable Claude in Chrome integration" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -s "d" -l "debug" -d "Enable debug mode with optional category filtering" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "verbose" -d "Override verbose mode setting from config" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -s "p" -l "print" -d "Print response and exit (useful for pipes). Note: The workspace trust dialog is skipped when Claude is run with the -p mode. Only use this flag in directories you trust." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "json-schema" -d "JSON Schema for structured output validation" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "include-partial-messages" -d "Include partial message chunks as they arrive (only works with --print and --output-format=stream-json)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "input-format" -d "Input format (only works with --print)" -xa "text stream-json" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "mcp-debug" -d "[DEPRECATED. Use --debug instead] Enable MCP debug mode (shows MCP server errors)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "dangerously-skip-permissions" -d "Bypass all permission checks. Recommended only for sandboxes with no internet access." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "allow-dangerously-skip-permissions" -d "Enable bypassing all permission checks as an option, without it being enabled by default. Recommended only for sandboxes with no internet access." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "max-budget-usd" -d "Maximum dollar amount to spend on API calls (only works with --print)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "replay-user-messages" -d "Re-emit user messages from stdin back on stdout for acknowledgment (only works with --input-format=stream-json and --output-format=stream-json)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "allowedTools" -d "Comma or space-separated list of tool names to allow" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "allowed-tools" -d "Comma or space-separated list of tool names to allow" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "tools" -d "Specify the list of available tools from the built-in set. Use \"\" to disable all tools, \"default\" to use all tools, or specify tool names. Only works with --print mode." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "disallowedTools" -d "Comma or space-separated list of tool names to deny" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "disallowed-tools" -d "Comma or space-separated list of tool names to deny" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "mcp-config" -d "Load MCP servers from JSON files or strings (space-separated)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "system-prompt" -d "System prompt to use for the session" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "append-system-prompt" -d "Append a system prompt to the default system prompt" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "permission-mode" -d "Permission mode to use for the session" -xa "acceptEdits bypassPermissions default delegate dontAsk plan" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -s "c" -l "continue" -d "Continue the most recent conversation" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -s "r" -l "resume" -d "Resume a conversation by session ID, or open interactive picker with optional search term" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "fork-session" -d "When resuming, create a new session ID instead of reusing the original (use with --resume or --continue)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "no-session-persistence" -d "Disable session persistence - sessions will not be saved to disk and cannot be resumed (only works with --print)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "model" -d "Model for the current session. Provide an alias for the latest model or a model's full name." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "agent" -d "Agent for the current session. Overrides the 'agent' setting." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "betas" -d "Beta headers to include in API requests (API key users only)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "fallback-model" -d "Enable automatic fallback to specified model when default model is overloaded (only works with --print)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "settings" -d "Path to a settings JSON file or a JSON string to load additional settings from" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "add-dir" -d "Additional directories to allow tool access to" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "ide" -d "Automatically connect to IDE on startup if exactly one valid IDE is available" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "strict-mcp-config" -d "Only use MCP servers from --mcp-config, ignoring all other MCP configurations" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "session-id" -d "Use a specific session ID for the conversation (must be a valid UUID)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "agents" -d "JSON object defining custom agents" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "setting-sources" -d "Comma-separated list of setting sources to load (user, project, local)." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "plugin-dir" -d "Load plugins from directories for this session only (repeatable)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "disable-slash-commands" -d "Disable all slash commands" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "chrome" -d "Enable Claude in Chrome integration" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "no-chrome" -d "Disable Claude in Chrome integration" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -s "d" -l "debug" -d "Enable debug mode with optional category filtering" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "verbose" -d "Override verbose mode setting from config" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -s "p" -l "print" -d "Print response and exit (useful for pipes). Note: The workspace trust dialog is skipped when Claude is run with the -p mode. Only use this flag in directories you trust." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "json-schema" -d "JSON Schema for structured output validation" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "include-partial-messages" -d "Include partial message chunks as they arrive (only works with --print and --output-format=stream-json)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "input-format" -d "Input format (only works with --print)" -xa "text stream-json" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "mcp-debug" -d "[DEPRECATED. Use --debug instead] Enable MCP debug mode (shows MCP server errors)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "dangerously-skip-permissions" -d "Bypass all permission checks. Recommended only for sandboxes with no internet access." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "allow-dangerously-skip-permissions" -d "Enable bypassing all permission checks as an option, without it being enabled by default. Recommended only for sandboxes with no internet access." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "max-budget-usd" -d "Maximum dollar amount to spend on API calls (only works with --print)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "replay-user-messages" -d "Re-emit user messages from stdin back on stdout for acknowledgment (only works with --input-format=stream-json and --output-format=stream-json)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "allowedTools" -d "Comma or space-separated list of tool names to allow" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "allowed-tools" -d "Comma or space-separated list of tool names to allow" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "tools" -d "Specify the list of available tools from the built-in set. Use \"\" to disable all tools, \"default\" to use all tools, or specify tool names. Only works with --print mode." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "disallowedTools" -d "Comma or space-separated list of tool names to deny" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "disallowed-tools" -d "Comma or space-separated list of tool names to deny" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "mcp-config" -d "Load MCP servers from JSON files or strings (space-separated)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "system-prompt" -d "System prompt to use for the session" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "append-system-prompt" -d "Append a system prompt to the default system prompt" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "permission-mode" -d "Permission mode to use for the session" -xa "acceptEdits bypassPermissions default delegate dontAsk plan" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -s "c" -l "continue" -d "Continue the most recent conversation" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -s "r" -l "resume" -d "Resume a conversation by session ID, or open interactive picker with optional search term" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "fork-session" -d "When resuming, create a new session ID instead of reusing the original (use with --resume or --continue)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "no-session-persistence" -d "Disable session persistence - sessions will not be saved to disk and cannot be resumed (only works with --print)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "model" -d "Model for the current session. Provide an alias for the latest model or a model's full name." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "agent" -d "Agent for the current session. Overrides the 'agent' setting." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "betas" -d "Beta headers to include in API requests (API key users only)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "fallback-model" -d "Enable automatic fallback to specified model when default model is overloaded (only works with --print)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "settings" -d "Path to a settings JSON file or a JSON string to load additional settings from" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "add-dir" -d "Additional directories to allow tool access to" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "ide" -d "Automatically connect to IDE on startup if exactly one valid IDE is available" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "strict-mcp-config" -d "Only use MCP servers from --mcp-config, ignoring all other MCP configurations" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "session-id" -d "Use a specific session ID for the conversation (must be a valid UUID)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "agents" -d "JSON object defining custom agents" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "setting-sources" -d "Comma-separated list of setting sources to load (user, project, local)." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "plugin-dir" -d "Load plugins from directories for this session only (repeatable)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "disable-slash-commands" -d "Disable all slash commands" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "chrome" -d "Enable Claude in Chrome integration" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "no-chrome" -d "Disable Claude in Chrome integration" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -s "d" -l "debug" -d "Enable debug mode with optional category filtering" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "verbose" -d "Override verbose mode setting from config" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -s "p" -l "print" -d "Print response and exit (useful for pipes). Note: The workspace trust dialog is skipped when Claude is run with the -p mode. Only use this flag in directories you trust." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "json-schema" -d "JSON Schema for structured output validation" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "include-partial-messages" -d "Include partial message chunks as they arrive (only works with --print and --output-format=stream-json)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "input-format" -d "Input format (only works with --print)" -xa "text stream-json" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "mcp-debug" -d "[DEPRECATED. Use --debug instead] Enable MCP debug mode (shows MCP server errors)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "dangerously-skip-permissions" -d "Bypass all permission checks. Recommended only for sandboxes with no internet access." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "allow-dangerously-skip-permissions" -d "Enable bypassing all permission checks as an option, without it being enabled by default. Recommended only for sandboxes with no internet access." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "max-budget-usd" -d "Maximum dollar amount to spend on API calls (only works with --print)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "replay-user-messages" -d "Re-emit user messages from stdin back on stdout for acknowledgment (only works with --input-format=stream-json and --output-format=stream-json)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "allowedTools" -d "Comma or space-separated list of tool names to allow" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "allowed-tools" -d "Comma or space-separated list of tool names to allow" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "tools" -d "Specify the list of available tools from the built-in set. Use \"\" to disable all tools, \"default\" to use all tools, or specify tool names. Only works with --print mode." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "disallowedTools" -d "Comma or space-separated list of tool names to deny" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "disallowed-tools" -d "Comma or space-separated list of tool names to deny" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "mcp-config" -d "Load MCP servers from JSON files or strings (space-separated)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "system-prompt" -d "System prompt to use for the session" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "append-system-prompt" -d "Append a system prompt to the default system prompt" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "permission-mode" -d "Permission mode to use for the session" -xa "acceptEdits bypassPermissions default delegate dontAsk plan" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -s "c" -l "continue" -d "Continue the most recent conversation" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -s "r" -l "resume" -d "Resume a conversation by session ID, or open interactive picker with optional search term" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "fork-session" -d "When resuming, create a new session ID instead of reusing the original (use with --resume or --continue)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "no-session-persistence" -d "Disable session persistence - sessions will not be saved to disk and cannot be resumed (only works with --print)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "model" -d "Model for the current session. Provide an alias for the latest model or a model's full name." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "agent" -d "Agent for the current session. Overrides the 'agent' setting." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "betas" -d "Beta headers to include in API requests (API key users only)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "fallback-model" -d "Enable automatic fallback to specified model when default model is overloaded (only works with --print)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "settings" -d "Path to a settings JSON file or a JSON string to load additional settings from" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "add-dir" -d "Additional directories to allow tool access to" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "ide" -d "Automatically connect to IDE on startup if exactly one valid IDE is available" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "strict-mcp-config" -d "Only use MCP servers from --mcp-config, ignoring all other MCP configurations" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "session-id" -d "Use a specific session ID for the conversation (must be a valid UUID)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "agents" -d "JSON object defining custom agents" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "setting-sources" -d "Comma-separated list of setting sources to load (user, project, local)." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "plugin-dir" -d "Load plugins from directories for this session only (repeatable)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "disable-slash-commands" -d "Disable all slash commands" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "chrome" -d "Enable Claude in Chrome integration" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "no-chrome" -d "Disable Claude in Chrome integration" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -s "d" -l "debug" -d "Enable debug mode with optional category filtering" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "verbose" -d "Override verbose mode setting from config" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -s "p" -l "print" -d "Print response and exit (useful for pipes). Note: The workspace trust dialog is skipped when Claude is run with the -p mode. Only use this flag in directories you trust." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "json-schema" -d "JSON Schema for structured output validation" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "include-partial-messages" -d "Include partial message chunks as they arrive (only works with --print and --output-format=stream-json)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "input-format" -d "Input format (only works with --print)" -xa "text stream-json" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "mcp-debug" -d "[DEPRECATED. Use --debug instead] Enable MCP debug mode (shows MCP server errors)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "dangerously-skip-permissions" -d "Bypass all permission checks. Recommended only for sandboxes with no internet access." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "allow-dangerously-skip-permissions" -d "Enable bypassing all permission checks as an option, without it being enabled by default. Recommended only for sandboxes with no internet access." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "max-budget-usd" -d "Maximum dollar amount to spend on API calls (only works with --print)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "replay-user-messages" -d "Re-emit user messages from stdin back on stdout for acknowledgment (only works with --input-format=stream-json and --output-format=stream-json)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "allowedTools" -d "Comma or space-separated list of tool names to allow" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "allowed-tools" -d "Comma or space-separated list of tool names to allow" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "tools" -d "Specify the list of available tools from the built-in set. Use \"\" to disable all tools, \"default\" to use all tools, or specify tool names. Only works with --print mode." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "disallowedTools" -d "Comma or space-separated list of tool names to deny" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "disallowed-tools" -d "Comma or space-separated list of tool names to deny" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "mcp-config" -d "Load MCP servers from JSON files or strings (space-separated)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "system-prompt" -d "System prompt to use for the session" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "append-system-prompt" -d "Append a system prompt to the default system prompt" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "permission-mode" -d "Permission mode to use for the session" -xa "acceptEdits bypassPermissions default delegate dontAsk plan" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -s "c" -l "continue" -d "Continue the most recent conversation" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -s "r" -l "resume" -d "Resume a conversation by session ID, or open interactive picker with optional search term" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "fork-session" -d "When resuming, create a new session ID instead of reusing the original (use with --resume or --continue)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "no-session-persistence" -d "Disable session persistence - sessions will not be saved to disk and cannot be resumed (only works with --print)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "model" -d "Model for the current session. Provide an alias for the latest model or a model's full name." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "agent" -d "Agent for the current session. Overrides the 'agent' setting." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "betas" -d "Beta headers to include in API requests (API key users only)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "fallback-model" -d "Enable automatic fallback to specified model when default model is overloaded (only works with --print)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "settings" -d "Path to a settings JSON file or a JSON string to load additional settings from" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "add-dir" -d "Additional directories to allow tool access to" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "ide" -d "Automatically connect to IDE on startup if exactly one valid IDE is available" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "strict-mcp-config" -d "Only use MCP servers from --mcp-config, ignoring all other MCP configurations" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "session-id" -d "Use a specific session ID for the conversation (must be a valid UUID)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "agents" -d "JSON object defining custom agents" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "setting-sources" -d "Comma-separated list of setting sources to load (user, project, local)." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "plugin-dir" -d "Load plugins from directories for this session only (repeatable)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "disable-slash-commands" -d "Disable all slash commands" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "chrome" -d "Enable Claude in Chrome integration" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "no-chrome" -d "Disable Claude in Chrome integration" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -s "d" -l "debug" -d "Enable debug mode with optional category filtering" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "verbose" -d "Override verbose mode setting from config" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -s "p" -l "print" -d "Print response and exit (useful for pipes). Note: The workspace trust dialog is skipped when Claude is run with the -p mode. Only use this flag in directories you trust." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "json-schema" -d "JSON Schema for structured output validation" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "include-partial-messages" -d "Include partial message chunks as they arrive (only works with --print and --output-format=stream-json)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "input-format" -d "Input format (only works with --print)" -xa "text stream-json" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "mcp-debug" -d "[DEPRECATED. Use --debug instead] Enable MCP debug mode (shows MCP server errors)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "dangerously-skip-permissions" -d "Bypass all permission checks. Recommended only for sandboxes with no internet access." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "allow-dangerously-skip-permissions" -d "Enable bypassing all permission checks as an option, without it being enabled by default. Recommended only for sandboxes with no internet access." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "max-budget-usd" -d "Maximum dollar amount to spend on API calls (only works with --print)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "replay-user-messages" -d "Re-emit user messages from stdin back on stdout for acknowledgment (only works with --input-format=stream-json and --output-format=stream-json)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "allowedTools" -d "Comma or space-separated list of tool names to allow" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "allowed-tools" -d "Comma or space-separated list of tool names to allow" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "tools" -d "Specify the list of available tools from the built-in set. Use \"\" to disable all tools, \"default\" to use all tools, or specify tool names. Only works with --print mode." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "disallowedTools" -d "Comma or space-separated list of tool names to deny" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "disallowed-tools" -d "Comma or space-separated list of tool names to deny" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "mcp-config" -d "Load MCP servers from JSON files or strings (space-separated)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "system-prompt" -d "System prompt to use for the session" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "append-system-prompt" -d "Append a system prompt to the default system prompt" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "permission-mode" -d "Permission mode to use for the session" -xa "acceptEdits bypassPermissions default delegate dontAsk plan" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -s "c" -l "continue" -d "Continue the most recent conversation" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -s "r" -l "resume" -d "Resume a conversation by session ID, or open interactive picker with optional search term" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "fork-session" -d "When resuming, create a new session ID instead of reusing the original (use with --resume or --continue)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "no-session-persistence" -d "Disable session persistence - sessions will not be saved to disk and cannot be resumed (only works with --print)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "model" -d "Model for the current session. Provide an alias for the latest model or a model's full name." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "agent" -d "Agent for the current session. Overrides the 'agent' setting." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "betas" -d "Beta headers to include in API requests (API key users only)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "fallback-model" -d "Enable automatic fallback to specified model when default model is overloaded (only works with --print)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "settings" -d "Path to a settings JSON file or a JSON string to load additional settings from" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "add-dir" -d "Additional directories to allow tool access to" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "ide" -d "Automatically connect to IDE on startup if exactly one valid IDE is available" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "strict-mcp-config" -d "Only use MCP servers from --mcp-config, ignoring all other MCP configurations" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "session-id" -d "Use a specific session ID for the conversation (must be a valid UUID)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "agents" -d "JSON object defining custom agents" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "setting-sources" -d "Comma-separated list of setting sources to load (user, project, local)." # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "plugin-dir" -d "Load plugins from directories for this session only (repeatable)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "disable-slash-commands" -d "Disable all slash commands" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "chrome" -d "Enable Claude in Chrome integration" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "no-chrome" -d "Disable Claude in Chrome integration" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -s "h" -l "help" -d "Display help for command" # global
complete -f -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -a "serve" -d "Start the Claude Code MCP server" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -a "add" -d "Add an MCP server to Claude Code" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -a "remove" -d "Remove an MCP server" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -a "list" -d "List configured MCP servers" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -a "get" -d "Get details about an MCP server" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -a "add-json" -d "Add an MCP server (stdio or SSE) with a JSON string" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -a "add-from-claude-desktop" -d "Import MCP servers from Claude Desktop (Mac and WSL only)" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -a "reset-project-choices" -d "Reset all approved and rejected project-scoped (.mcp.json) servers within this project" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -a "help" -d "display help for command" # sub
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -s "h" -l "help" -d "Display help for command" # global
complete -f -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -a "validate" -d "Validate a plugin or marketplace manifest" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -a "marketplace" -d "Manage Claude Code marketplaces" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -a "install" -d "Install a plugin from available marketplaces (use plugin@marketplace for specific marketplace)" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -a "uninstall" -d "Uninstall an installed plugin" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -a "enable" -d "Enable a disabled plugin" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -a "disable" -d "Disable an enabled plugin" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -a "update" -d "Update a plugin to the latest version (restart required to apply)" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -a "help" -d "display help for command" # sub
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -s "h" -l "help" -d "Display help for command" # global
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -s "h" -l "help" -d "Display help for command" # global
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -s "h" -l "help" -d "Display help for command" # global
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "force" -d "Force installation even if already installed" # global
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -s "h" -l "help" -d "Display help for command" # global