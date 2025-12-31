complete -c "cursor-agent" -s "v" -l "version" -d "Output the version number" # global
complete -c "cursor-agent" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" # global
complete -c "cursor-agent" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # global
complete -c "cursor-agent" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # global
complete -c "cursor-agent" -l "stream-partial-output" -d "Stream partial output as individual text deltas (only works with --print and stream-json format)" # global
complete -c "cursor-agent" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # global
complete -c "cursor-agent" -l "resume" -d "Resume a chat session." # global
complete -c "cursor-agent" -l "model" -d "Model to use" -xa "gpt-5 sonnet-4 sonnet-4-thinking" # global
complete -c "cursor-agent" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # global
complete -c "cursor-agent" -l "approve-mcps" -d "Automatically approve all MCP servers (only works with --print/headless mode)" # global
complete -c "cursor-agent" -l "browser" -d "Enable browser automation support" # global
complete -c "cursor-agent" -s "h" -l "help" -d "Display help for command" # global
complete -f -c "cursor-agent" -n "__fish_use_subcommand" -a "install-shell-integration" -d "Install shell integration to ~/.zshrc" # sub
complete -f -c "cursor-agent" -n "__fish_use_subcommand" -a "uninstall-shell-integration" -d "Remove shell integration from ~/.zshrc" # sub
complete -f -c "cursor-agent" -n "__fish_use_subcommand" -a "login" -d "Authenticate with Cursor. Set NO_OPEN_BROWSER to disable browser opening." # sub
complete -f -c "cursor-agent" -n "__fish_use_subcommand" -a "logout" -d "Sign out and clear stored authentication" # sub
complete -f -c "cursor-agent" -n "__fish_use_subcommand" -a "mcp" -d "Manage MCP servers" # sub
complete -f -c "cursor-agent" -n "__fish_use_subcommand" -a "status" -d "View authentication status" # sub
complete -f -c "cursor-agent" -n "__fish_use_subcommand" -a "whoami" -d "View authentication status" # sub
complete -f -c "cursor-agent" -n "__fish_use_subcommand" -a "update" -d "Update Cursor Agent to the latest version" # sub
complete -f -c "cursor-agent" -n "__fish_use_subcommand" -a "upgrade" -d "Update Cursor Agent to the latest version" # sub
complete -f -c "cursor-agent" -n "__fish_use_subcommand" -a "create-chat" -d "Create a new empty chat and return its ID" # sub
complete -f -c "cursor-agent" -n "__fish_use_subcommand" -a "agent" -d "Start the Cursor Agent" # sub
complete -f -c "cursor-agent" -n "__fish_use_subcommand" -a "ls" -d "Resume a chat session" # sub
complete -f -c "cursor-agent" -n "__fish_use_subcommand" -a "resume" -d "Resume the latest chat session" # sub
complete -f -c "cursor-agent" -n "__fish_use_subcommand" -a "help" -d "Display help for command" # sub
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'install-shell-integration'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'install-shell-integration'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'install-shell-integration'" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'install-shell-integration'" -l "stream-partial-output" -d "Stream partial output as individual text deltas (only works with --print and stream-json format)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'install-shell-integration'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'install-shell-integration'" -l "resume" -d "Resume a chat session." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'install-shell-integration'" -l "model" -d "Model to use" -xa "gpt-5 sonnet-4 sonnet-4-thinking" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'install-shell-integration'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'install-shell-integration'" -l "approve-mcps" -d "Automatically approve all MCP servers (only works with --print/headless mode)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'install-shell-integration'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'uninstall-shell-integration'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'uninstall-shell-integration'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'uninstall-shell-integration'" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'uninstall-shell-integration'" -l "stream-partial-output" -d "Stream partial output as individual text deltas (only works with --print and stream-json format)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'uninstall-shell-integration'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'uninstall-shell-integration'" -l "resume" -d "Resume a chat session." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'uninstall-shell-integration'" -l "model" -d "Model to use" -xa "gpt-5 sonnet-4 sonnet-4-thinking" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'uninstall-shell-integration'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'uninstall-shell-integration'" -l "approve-mcps" -d "Automatically approve all MCP servers (only works with --print/headless mode)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'uninstall-shell-integration'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'login'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'login'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'login'" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'login'" -l "stream-partial-output" -d "Stream partial output as individual text deltas (only works with --print and stream-json format)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'login'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'login'" -l "resume" -d "Resume a chat session." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'login'" -l "model" -d "Model to use" -xa "gpt-5 sonnet-4 sonnet-4-thinking" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'login'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'login'" -l "approve-mcps" -d "Automatically approve all MCP servers (only works with --print/headless mode)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'login'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'logout'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'logout'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'logout'" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'logout'" -l "stream-partial-output" -d "Stream partial output as individual text deltas (only works with --print and stream-json format)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'logout'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'logout'" -l "resume" -d "Resume a chat session." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'logout'" -l "model" -d "Model to use" -xa "gpt-5 sonnet-4 sonnet-4-thinking" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'logout'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'logout'" -l "approve-mcps" -d "Automatically approve all MCP servers (only works with --print/headless mode)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'logout'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'mcp'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'mcp'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'mcp'" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'mcp'" -l "stream-partial-output" -d "Stream partial output as individual text deltas (only works with --print and stream-json format)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'mcp'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'mcp'" -l "resume" -d "Resume a chat session." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'mcp'" -l "model" -d "Model to use" -xa "gpt-5 sonnet-4 sonnet-4-thinking" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'mcp'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'mcp'" -l "approve-mcps" -d "Automatically approve all MCP servers (only works with --print/headless mode)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'mcp'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'status'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'status'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'status'" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'status'" -l "stream-partial-output" -d "Stream partial output as individual text deltas (only works with --print and stream-json format)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'status'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'status'" -l "resume" -d "Resume a chat session." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'status'" -l "model" -d "Model to use" -xa "gpt-5 sonnet-4 sonnet-4-thinking" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'status'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'status'" -l "approve-mcps" -d "Automatically approve all MCP servers (only works with --print/headless mode)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'status'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'whoami'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'whoami'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'whoami'" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'whoami'" -l "stream-partial-output" -d "Stream partial output as individual text deltas (only works with --print and stream-json format)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'whoami'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'whoami'" -l "resume" -d "Resume a chat session." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'whoami'" -l "model" -d "Model to use" -xa "gpt-5 sonnet-4 sonnet-4-thinking" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'whoami'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'whoami'" -l "approve-mcps" -d "Automatically approve all MCP servers (only works with --print/headless mode)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'whoami'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'update'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'update'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'update'" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'update'" -l "stream-partial-output" -d "Stream partial output as individual text deltas (only works with --print and stream-json format)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'update'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'update'" -l "resume" -d "Resume a chat session." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'update'" -l "model" -d "Model to use" -xa "gpt-5 sonnet-4 sonnet-4-thinking" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'update'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'update'" -l "approve-mcps" -d "Automatically approve all MCP servers (only works with --print/headless mode)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'update'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'upgrade'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'upgrade'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'upgrade'" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'upgrade'" -l "stream-partial-output" -d "Stream partial output as individual text deltas (only works with --print and stream-json format)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'upgrade'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'upgrade'" -l "resume" -d "Resume a chat session." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'upgrade'" -l "model" -d "Model to use" -xa "gpt-5 sonnet-4 sonnet-4-thinking" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'upgrade'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'upgrade'" -l "approve-mcps" -d "Automatically approve all MCP servers (only works with --print/headless mode)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'upgrade'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'create-chat'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'create-chat'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'create-chat'" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'create-chat'" -l "stream-partial-output" -d "Stream partial output as individual text deltas (only works with --print and stream-json format)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'create-chat'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'create-chat'" -l "resume" -d "Resume a chat session." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'create-chat'" -l "model" -d "Model to use" -xa "gpt-5 sonnet-4 sonnet-4-thinking" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'create-chat'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'create-chat'" -l "approve-mcps" -d "Automatically approve all MCP servers (only works with --print/headless mode)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'create-chat'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'agent'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'agent'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'agent'" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'agent'" -l "stream-partial-output" -d "Stream partial output as individual text deltas (only works with --print and stream-json format)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'agent'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'agent'" -l "resume" -d "Resume a chat session." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'agent'" -l "model" -d "Model to use" -xa "gpt-5 sonnet-4 sonnet-4-thinking" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'agent'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'agent'" -l "approve-mcps" -d "Automatically approve all MCP servers (only works with --print/headless mode)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'agent'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'ls'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'ls'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'ls'" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'ls'" -l "stream-partial-output" -d "Stream partial output as individual text deltas (only works with --print and stream-json format)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'ls'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'ls'" -l "resume" -d "Resume a chat session." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'ls'" -l "model" -d "Model to use" -xa "gpt-5 sonnet-4 sonnet-4-thinking" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'ls'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'ls'" -l "approve-mcps" -d "Automatically approve all MCP servers (only works with --print/headless mode)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'ls'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'resume'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'resume'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'resume'" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'resume'" -l "stream-partial-output" -d "Stream partial output as individual text deltas (only works with --print and stream-json format)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'resume'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'resume'" -l "resume" -d "Resume a chat session." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'resume'" -l "model" -d "Model to use" -xa "gpt-5 sonnet-4 sonnet-4-thinking" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'resume'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'resume'" -l "approve-mcps" -d "Automatically approve all MCP servers (only works with --print/headless mode)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'resume'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -l "stream-partial-output" -d "Stream partial output as individual text deltas (only works with --print and stream-json format)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -l "resume" -d "Resume a chat session." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -l "model" -d "Model to use" -xa "gpt-5 sonnet-4 sonnet-4-thinking" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -l "approve-mcps" -d "Automatically approve all MCP servers (only works with --print/headless mode)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'install-shell-integration'" -s "h" -l "help" -d "Display help for command" # global
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'uninstall-shell-integration'" -s "h" -l "help" -d "Display help for command" # global
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'login'" -s "h" -l "help" -d "Display help for command" # global
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'logout'" -s "h" -l "help" -d "Display help for command" # global
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'mcp'" -s "h" -l "help" -d "Display help for command" # global
complete -f -c "cursor-agent" -n "__fish_seen_subcommand_from 'mcp'" -a "login" -d "Authenticate with an MCP server configured in .cursor/mcp.json or ~/.cursor/mcp.json" # sub
complete -f -c "cursor-agent" -n "__fish_seen_subcommand_from 'mcp'" -a "list" -d "List configured MCP servers and their status" # sub
complete -f -c "cursor-agent" -n "__fish_seen_subcommand_from 'mcp'" -a "list-tools" -d "List available tools and their argument names for a specific MCP" # sub
complete -f -c "cursor-agent" -n "__fish_seen_subcommand_from 'mcp'" -a "disable" -d "Remove an MCP server from the local approved list" # sub
complete -f -c "cursor-agent" -n "__fish_seen_subcommand_from 'mcp'" -a "help" -d "Display help for command" # sub
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'status'" -s "h" -l "help" -d "Display help for command" # global
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'whoami'" -s "h" -l "help" -d "Display help for command" # global
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'update'" -s "h" -l "help" -d "Display help for command" # global
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'upgrade'" -s "h" -l "help" -d "Display help for command" # global
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'create-chat'" -s "h" -l "help" -d "Display help for command" # global
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'agent'" -s "h" -l "help" -d "Display help for command" # global
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'ls'" -s "h" -l "help" -d "Display help for command" # global
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'resume'" -s "h" -l "help" -d "Display help for command" # global
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -s "v" -l "version" -d "Output the version number" # global
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" # global
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # global
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # global
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -l "stream-partial-output" -d "Stream partial output as individual text deltas (only works with --print and stream-json format)" # global
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # global
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -l "resume" -d "Resume a chat session." # global
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -l "model" -d "Model to use" -xa "gpt-5 sonnet-4 sonnet-4-thinking" # global
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # global
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -l "approve-mcps" -d "Automatically approve all MCP servers (only works with --print/headless mode)" # global
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -l "browser" -d "Enable browser automation support" # global
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -s "h" -l "help" -d "Display help for command" # global
complete -f -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -a "install-shell-integration" -d "Install shell integration to ~/.zshrc" # sub
complete -f -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -a "uninstall-shell-integration" -d "Remove shell integration from ~/.zshrc" # sub
complete -f -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -a "login" -d "Authenticate with Cursor. Set NO_OPEN_BROWSER to disable browser opening." # sub
complete -f -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -a "logout" -d "Sign out and clear stored authentication" # sub
complete -f -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -a "mcp" -d "Manage MCP servers" # sub
complete -f -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -a "status" -d "View authentication status" # sub
complete -f -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -a "whoami" -d "View authentication status" # sub
complete -f -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -a "update" -d "Update Cursor Agent to the latest version" # sub
complete -f -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -a "upgrade" -d "Update Cursor Agent to the latest version" # sub
complete -f -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -a "create-chat" -d "Create a new empty chat and return its ID" # sub
complete -f -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -a "agent" -d "Start the Cursor Agent" # sub
complete -f -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -a "ls" -d "Resume a chat session" # sub
complete -f -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -a "resume" -d "Resume the latest chat session" # sub
complete -f -c "cursor-agent" -n "__fish_seen_subcommand_from 'help'" -a "help" -d "Display help for command" # sub
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help install-shell-integration'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help install-shell-integration'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help install-shell-integration'" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help install-shell-integration'" -l "stream-partial-output" -d "Stream partial output as individual text deltas (only works with --print and stream-json format)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help install-shell-integration'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help install-shell-integration'" -l "resume" -d "Resume a chat session." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help install-shell-integration'" -l "model" -d "Model to use" -xa "gpt-5 sonnet-4 sonnet-4-thinking" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help install-shell-integration'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help install-shell-integration'" -l "approve-mcps" -d "Automatically approve all MCP servers (only works with --print/headless mode)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help install-shell-integration'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help uninstall-shell-integration'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help uninstall-shell-integration'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help uninstall-shell-integration'" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help uninstall-shell-integration'" -l "stream-partial-output" -d "Stream partial output as individual text deltas (only works with --print and stream-json format)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help uninstall-shell-integration'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help uninstall-shell-integration'" -l "resume" -d "Resume a chat session." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help uninstall-shell-integration'" -l "model" -d "Model to use" -xa "gpt-5 sonnet-4 sonnet-4-thinking" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help uninstall-shell-integration'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help uninstall-shell-integration'" -l "approve-mcps" -d "Automatically approve all MCP servers (only works with --print/headless mode)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help uninstall-shell-integration'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help login'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help login'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help login'" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help login'" -l "stream-partial-output" -d "Stream partial output as individual text deltas (only works with --print and stream-json format)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help login'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help login'" -l "resume" -d "Resume a chat session." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help login'" -l "model" -d "Model to use" -xa "gpt-5 sonnet-4 sonnet-4-thinking" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help login'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help login'" -l "approve-mcps" -d "Automatically approve all MCP servers (only works with --print/headless mode)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help login'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help logout'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help logout'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help logout'" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help logout'" -l "stream-partial-output" -d "Stream partial output as individual text deltas (only works with --print and stream-json format)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help logout'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help logout'" -l "resume" -d "Resume a chat session." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help logout'" -l "model" -d "Model to use" -xa "gpt-5 sonnet-4 sonnet-4-thinking" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help logout'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help logout'" -l "approve-mcps" -d "Automatically approve all MCP servers (only works with --print/headless mode)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help logout'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help mcp'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help mcp'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help mcp'" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help mcp'" -l "stream-partial-output" -d "Stream partial output as individual text deltas (only works with --print and stream-json format)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help mcp'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help mcp'" -l "resume" -d "Resume a chat session." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help mcp'" -l "model" -d "Model to use" -xa "gpt-5 sonnet-4 sonnet-4-thinking" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help mcp'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help mcp'" -l "approve-mcps" -d "Automatically approve all MCP servers (only works with --print/headless mode)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help mcp'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help status'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help status'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help status'" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help status'" -l "stream-partial-output" -d "Stream partial output as individual text deltas (only works with --print and stream-json format)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help status'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help status'" -l "resume" -d "Resume a chat session." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help status'" -l "model" -d "Model to use" -xa "gpt-5 sonnet-4 sonnet-4-thinking" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help status'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help status'" -l "approve-mcps" -d "Automatically approve all MCP servers (only works with --print/headless mode)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help status'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help whoami'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help whoami'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help whoami'" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help whoami'" -l "stream-partial-output" -d "Stream partial output as individual text deltas (only works with --print and stream-json format)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help whoami'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help whoami'" -l "resume" -d "Resume a chat session." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help whoami'" -l "model" -d "Model to use" -xa "gpt-5 sonnet-4 sonnet-4-thinking" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help whoami'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help whoami'" -l "approve-mcps" -d "Automatically approve all MCP servers (only works with --print/headless mode)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help whoami'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help update'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help update'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help update'" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help update'" -l "stream-partial-output" -d "Stream partial output as individual text deltas (only works with --print and stream-json format)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help update'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help update'" -l "resume" -d "Resume a chat session." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help update'" -l "model" -d "Model to use" -xa "gpt-5 sonnet-4 sonnet-4-thinking" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help update'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help update'" -l "approve-mcps" -d "Automatically approve all MCP servers (only works with --print/headless mode)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help update'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help upgrade'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help upgrade'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help upgrade'" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help upgrade'" -l "stream-partial-output" -d "Stream partial output as individual text deltas (only works with --print and stream-json format)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help upgrade'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help upgrade'" -l "resume" -d "Resume a chat session." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help upgrade'" -l "model" -d "Model to use" -xa "gpt-5 sonnet-4 sonnet-4-thinking" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help upgrade'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help upgrade'" -l "approve-mcps" -d "Automatically approve all MCP servers (only works with --print/headless mode)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help upgrade'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help create-chat'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help create-chat'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help create-chat'" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help create-chat'" -l "stream-partial-output" -d "Stream partial output as individual text deltas (only works with --print and stream-json format)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help create-chat'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help create-chat'" -l "resume" -d "Resume a chat session." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help create-chat'" -l "model" -d "Model to use" -xa "gpt-5 sonnet-4 sonnet-4-thinking" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help create-chat'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help create-chat'" -l "approve-mcps" -d "Automatically approve all MCP servers (only works with --print/headless mode)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help create-chat'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help agent'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help agent'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help agent'" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help agent'" -l "stream-partial-output" -d "Stream partial output as individual text deltas (only works with --print and stream-json format)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help agent'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help agent'" -l "resume" -d "Resume a chat session." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help agent'" -l "model" -d "Model to use" -xa "gpt-5 sonnet-4 sonnet-4-thinking" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help agent'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help agent'" -l "approve-mcps" -d "Automatically approve all MCP servers (only works with --print/headless mode)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help agent'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help ls'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help ls'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help ls'" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help ls'" -l "stream-partial-output" -d "Stream partial output as individual text deltas (only works with --print and stream-json format)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help ls'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help ls'" -l "resume" -d "Resume a chat session." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help ls'" -l "model" -d "Model to use" -xa "gpt-5 sonnet-4 sonnet-4-thinking" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help ls'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help ls'" -l "approve-mcps" -d "Automatically approve all MCP servers (only works with --print/headless mode)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help ls'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help resume'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help resume'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help resume'" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help resume'" -l "stream-partial-output" -d "Stream partial output as individual text deltas (only works with --print and stream-json format)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help resume'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help resume'" -l "resume" -d "Resume a chat session." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help resume'" -l "model" -d "Model to use" -xa "gpt-5 sonnet-4 sonnet-4-thinking" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help resume'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help resume'" -l "approve-mcps" -d "Automatically approve all MCP servers (only works with --print/headless mode)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help resume'" -l "browser" -d "Enable browser automation support" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help help'" -l "api-key" -d "API key for authentication (can also use CURSOR_API_KEY env var)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help help'" -s "p" -l "print" -d "Print responses to console (for scripts or non-interactive use). Has access to all tools, including write and bash." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help help'" -l "output-format" -d "Output format (only works with --print)" -xa "text json stream-json" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help help'" -l "stream-partial-output" -d "Stream partial output as individual text deltas (only works with --print and stream-json format)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help help'" -s "b" -l "background" -d "Start in background mode (open composer picker on launch)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help help'" -l "resume" -d "Resume a chat session." # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help help'" -l "model" -d "Model to use" -xa "gpt-5 sonnet-4 sonnet-4-thinking" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help help'" -s "f" -l "force" -d "Force allow commands unless explicitly denied" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help help'" -l "approve-mcps" -d "Automatically approve all MCP servers (only works with --print/headless mode)" # subcommands flags
complete -c "cursor-agent" -n "__fish_seen_subcommand_from 'help help'" -l "browser" -d "Enable browser automation support" # subcommands flags