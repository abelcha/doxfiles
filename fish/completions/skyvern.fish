complete -c "skyvern" -l "install-completion" -d "Install completion for the current shell." # global
complete -c "skyvern" -l "show-completion" -d "Show completion for the current shell, to copy it or customize the installation." # global
complete -c "skyvern" -l "help" -d "Show this message and exit." # global
complete -f -c "skyvern" -n "__fish_use_subcommand" -a "run" -d "Run Skyvern services like the API server, UI, and MCP." # sub
complete -f -c "skyvern" -n "__fish_use_subcommand" -a "workflow" -d "Workflow management commands." # sub
complete -f -c "skyvern" -n "__fish_use_subcommand" -a "tasks" -d "Task management commands." # sub
complete -f -c "skyvern" -n "__fish_use_subcommand" -a "docs" -d "Open Skyvern documentation." # sub
complete -f -c "skyvern" -n "__fish_use_subcommand" -a "status" -d "Check if Skyvern services are running." # sub
complete -f -c "skyvern" -n "__fish_use_subcommand" -a "stop" -d "Stop Skyvern services." # sub
complete -f -c "skyvern" -n "__fish_use_subcommand" -a "init" -d "Interactively configure Skyvern and its dependencies." # sub
complete -f -c "skyvern" -n "__fish_use_subcommand" -a "quickstart" -d "One-command setup and start for Skyvern (combines init and run)." # sub
complete -c "skyvern" -n "__fish_seen_subcommand_from 'run'" -l "install-completion" -d "Install completion for the current shell." # subcommands flags
complete -c "skyvern" -n "__fish_seen_subcommand_from 'run'" -l "show-completion" -d "Show completion for the current shell, to copy it or customize the installation." # subcommands flags
complete -c "skyvern" -n "__fish_seen_subcommand_from 'workflow'" -l "install-completion" -d "Install completion for the current shell." # subcommands flags
complete -c "skyvern" -n "__fish_seen_subcommand_from 'workflow'" -l "show-completion" -d "Show completion for the current shell, to copy it or customize the installation." # subcommands flags
complete -c "skyvern" -n "__fish_seen_subcommand_from 'tasks'" -l "install-completion" -d "Install completion for the current shell." # subcommands flags
complete -c "skyvern" -n "__fish_seen_subcommand_from 'tasks'" -l "show-completion" -d "Show completion for the current shell, to copy it or customize the installation." # subcommands flags
complete -c "skyvern" -n "__fish_seen_subcommand_from 'docs'" -l "install-completion" -d "Install completion for the current shell." # subcommands flags
complete -c "skyvern" -n "__fish_seen_subcommand_from 'docs'" -l "show-completion" -d "Show completion for the current shell, to copy it or customize the installation." # subcommands flags
complete -c "skyvern" -n "__fish_seen_subcommand_from 'status'" -l "install-completion" -d "Install completion for the current shell." # subcommands flags
complete -c "skyvern" -n "__fish_seen_subcommand_from 'status'" -l "show-completion" -d "Show completion for the current shell, to copy it or customize the installation." # subcommands flags
complete -c "skyvern" -n "__fish_seen_subcommand_from 'stop'" -l "install-completion" -d "Install completion for the current shell." # subcommands flags
complete -c "skyvern" -n "__fish_seen_subcommand_from 'stop'" -l "show-completion" -d "Show completion for the current shell, to copy it or customize the installation." # subcommands flags
complete -c "skyvern" -n "__fish_seen_subcommand_from 'init'" -l "install-completion" -d "Install completion for the current shell." # subcommands flags
complete -c "skyvern" -n "__fish_seen_subcommand_from 'init'" -l "show-completion" -d "Show completion for the current shell, to copy it or customize the installation." # subcommands flags
complete -c "skyvern" -n "__fish_seen_subcommand_from 'quickstart'" -l "install-completion" -d "Install completion for the current shell." # subcommands flags
complete -c "skyvern" -n "__fish_seen_subcommand_from 'quickstart'" -l "show-completion" -d "Show completion for the current shell, to copy it or customize the installation." # subcommands flags
complete -c "skyvern" -n "__fish_seen_subcommand_from 'run'" -l "help" -d "Show this message and exit." # global
complete -f -c "skyvern" -n "__fish_seen_subcommand_from 'run'" -a "server" -d "Run the Skyvern API server." # sub
complete -f -c "skyvern" -n "__fish_seen_subcommand_from 'run'" -a "ui" -d "Run the Skyvern UI server." # sub
complete -f -c "skyvern" -n "__fish_seen_subcommand_from 'run'" -a "all" -d "Run the Skyvern API server and UI server in parallel." # sub
complete -f -c "skyvern" -n "__fish_seen_subcommand_from 'run'" -a "mcp" -d "Run the MCP server." # sub
complete -c "skyvern" -n "__fish_seen_subcommand_from 'workflow'" -l "api-key" -d "Skyvern API key [env var: SKYVERN_API_KEY]" # global
complete -c "skyvern" -n "__fish_seen_subcommand_from 'workflow'" -l "help" -d "Show this message and exit." # global
complete -f -c "skyvern" -n "__fish_seen_subcommand_from 'workflow'" -a "run" -d "Run a workflow." # sub
complete -f -c "skyvern" -n "__fish_seen_subcommand_from 'workflow'" -a "cancel" -d "Cancel a running workflow." # sub
complete -f -c "skyvern" -n "__fish_seen_subcommand_from 'workflow'" -a "status" -d "Retrieve status information for a workflow run." # sub
complete -f -c "skyvern" -n "__fish_seen_subcommand_from 'workflow'" -a "list" -d "List workflows for the organization." # sub
complete -c "skyvern" -n "__fish_seen_subcommand_from 'workflow run'" -l "api-key" -d "Skyvern API key [env var: SKYVERN_API_KEY]" # subcommands flags
complete -c "skyvern" -n "__fish_seen_subcommand_from 'workflow cancel'" -l "api-key" -d "Skyvern API key [env var: SKYVERN_API_KEY]" # subcommands flags
complete -c "skyvern" -n "__fish_seen_subcommand_from 'workflow status'" -l "api-key" -d "Skyvern API key [env var: SKYVERN_API_KEY]" # subcommands flags
complete -c "skyvern" -n "__fish_seen_subcommand_from 'workflow list'" -l "api-key" -d "Skyvern API key [env var: SKYVERN_API_KEY]" # subcommands flags
complete -c "skyvern" -n "__fish_seen_subcommand_from 'tasks'" -l "api-key" -d "Skyvern API key [env var: SKYVERN_API_KEY]" # global
complete -c "skyvern" -n "__fish_seen_subcommand_from 'tasks'" -l "help" -d "Show this message and exit." # global
complete -f -c "skyvern" -n "__fish_seen_subcommand_from 'tasks'" -a "list" -d "List tasks for a workflow run." # sub
complete -c "skyvern" -n "__fish_seen_subcommand_from 'tasks list'" -l "api-key" -d "Skyvern API key [env var: SKYVERN_API_KEY]" # subcommands flags
complete -c "skyvern" -n "__fish_seen_subcommand_from 'docs'" -l "help" -d "Show this message and exit." # global
complete -c "skyvern" -n "__fish_seen_subcommand_from 'status'" -l "help" -d "Show this message and exit." # global
complete -c "skyvern" -n "__fish_seen_subcommand_from 'stop'" -l "help" -d "Show this message and exit." # global
complete -f -c "skyvern" -n "__fish_seen_subcommand_from 'stop'" -a "all" -d "Stop all Skyvern services running on ports 8000, 8080, and 9090." # sub
complete -f -c "skyvern" -n "__fish_seen_subcommand_from 'stop'" -a "ui" -d "Stop the Skyvern UI servers running on ports 8080 and 9090." # sub
complete -f -c "skyvern" -n "__fish_seen_subcommand_from 'stop'" -a "server" -d "Stop the Skyvern API server running on the specified port (default: 8000)." # sub
complete -c "skyvern" -n "__fish_seen_subcommand_from 'init'" -l "no-postgres" -d "Skip starting PostgreSQL container" # global
complete -c "skyvern" -n "__fish_seen_subcommand_from 'init'" -l "help" -d "Show this message and exit." # global
complete -f -c "skyvern" -n "__fish_seen_subcommand_from 'init'" -a "browser" -d "Initialize only the browser configuration." # sub
complete -c "skyvern" -n "__fish_seen_subcommand_from 'init browser'" -l "no-postgres" -d "Skip starting PostgreSQL container" # subcommands flags
complete -c "skyvern" -n "__fish_seen_subcommand_from 'quickstart'" -l "no-postgres" -d "Skip starting PostgreSQL container" # global
complete -c "skyvern" -n "__fish_seen_subcommand_from 'quickstart'" -l "skip-browser-install" -d "Skip Chromium browser installation" # global
complete -c "skyvern" -n "__fish_seen_subcommand_from 'quickstart'" -l "server-only" -d "Only start the server, not the UI" # global
complete -c "skyvern" -n "__fish_seen_subcommand_from 'quickstart'" -l "help" -d "Show this message and exit." # global