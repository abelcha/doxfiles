complete -c "vibekit" -s "V" -l "version" -d "output the version number" # global
complete -c "vibekit" -l "proxy" -d "HTTP/HTTPS proxy URL for all agents" # global
complete -c "vibekit" -s "h" -l "help" -d "display help for command" # global
complete -f -c "vibekit" -n "__fish_use_subcommand" -a "claude" -d "Run Claude Code CLI" # sub
complete -f -c "vibekit" -n "__fish_use_subcommand" -a "gemini" -d "Run Gemini CLI" # sub
complete -f -c "vibekit" -n "__fish_use_subcommand" -a "codex" -d "Run Codex CLI" # sub
complete -f -c "vibekit" -n "__fish_use_subcommand" -a "cursor-agent" -d "Run Cursor Agent" # sub
complete -f -c "vibekit" -n "__fish_use_subcommand" -a "opencode" -d "Run OpenCode CLI" # sub
complete -f -c "vibekit" -n "__fish_use_subcommand" -a "grok" -d "Run Grok CLI" # sub
complete -f -c "vibekit" -n "__fish_use_subcommand" -a "sandbox" -d "Manage sandbox environment" # sub
complete -f -c "vibekit" -n "__fish_use_subcommand" -a "auth" -d "Manage authentication" # sub
complete -f -c "vibekit" -n "__fish_use_subcommand" -a "logs" -d "View vibekit logs" # sub
complete -f -c "vibekit" -n "__fish_use_subcommand" -a "dashboard" -d "Manage analytics dashboard" # sub
complete -f -c "vibekit" -n "__fish_use_subcommand" -a "setup-aliases" -d "Install or remove global aliases based on settings" # sub
complete -f -c "vibekit" -n "__fish_use_subcommand" -a "diagnose-aliases" -d "Diagnose alias setup and conflicts" # sub
complete -f -c "vibekit" -n "__fish_use_subcommand" -a "analytics" -d "View agent analytics and usage statistics" # sub
complete -f -c "vibekit" -n "__fish_use_subcommand" -a "clean" -d "Clean logs and analytics" # sub
complete -f -c "vibekit" -n "__fish_use_subcommand" -a "help" -d "display help for command" # sub
complete -c "vibekit" -n "__fish_seen_subcommand_from 'claude'" -l "proxy" -d "HTTP/HTTPS proxy URL for all agents" # subcommands flags
complete -c "vibekit" -n "__fish_seen_subcommand_from 'gemini'" -l "proxy" -d "HTTP/HTTPS proxy URL for all agents" # subcommands flags
complete -c "vibekit" -n "__fish_seen_subcommand_from 'codex'" -l "proxy" -d "HTTP/HTTPS proxy URL for all agents" # subcommands flags
complete -c "vibekit" -n "__fish_seen_subcommand_from 'cursor-agent'" -l "proxy" -d "HTTP/HTTPS proxy URL for all agents" # subcommands flags
complete -c "vibekit" -n "__fish_seen_subcommand_from 'opencode'" -l "proxy" -d "HTTP/HTTPS proxy URL for all agents" # subcommands flags
complete -c "vibekit" -n "__fish_seen_subcommand_from 'grok'" -l "proxy" -d "HTTP/HTTPS proxy URL for all agents" # subcommands flags
complete -c "vibekit" -n "__fish_seen_subcommand_from 'sandbox'" -l "proxy" -d "HTTP/HTTPS proxy URL for all agents" # subcommands flags
complete -c "vibekit" -n "__fish_seen_subcommand_from 'auth'" -l "proxy" -d "HTTP/HTTPS proxy URL for all agents" # subcommands flags
complete -c "vibekit" -n "__fish_seen_subcommand_from 'logs'" -l "proxy" -d "HTTP/HTTPS proxy URL for all agents" # subcommands flags
complete -c "vibekit" -n "__fish_seen_subcommand_from 'dashboard'" -l "proxy" -d "HTTP/HTTPS proxy URL for all agents" # subcommands flags
complete -c "vibekit" -n "__fish_seen_subcommand_from 'setup-aliases'" -l "proxy" -d "HTTP/HTTPS proxy URL for all agents" # subcommands flags
complete -c "vibekit" -n "__fish_seen_subcommand_from 'diagnose-aliases'" -l "proxy" -d "HTTP/HTTPS proxy URL for all agents" # subcommands flags
complete -c "vibekit" -n "__fish_seen_subcommand_from 'analytics'" -l "proxy" -d "HTTP/HTTPS proxy URL for all agents" # subcommands flags
complete -c "vibekit" -n "__fish_seen_subcommand_from 'clean'" -l "proxy" -d "HTTP/HTTPS proxy URL for all agents" # subcommands flags
complete -c "vibekit" -n "__fish_seen_subcommand_from 'help'" -l "proxy" -d "HTTP/HTTPS proxy URL for all agents" # subcommands flags
complete -c "vibekit" -n "__fish_seen_subcommand_from 'claude'" -s "s" -l "sandbox" -d "Enable sandbox mode" # global
complete -c "vibekit" -n "__fish_seen_subcommand_from 'claude'" -l "sandbox-type" -xa "docker podman none" # global
complete -c "vibekit" -n "__fish_seen_subcommand_from 'claude'" -s "h" -l "help" -d "display help for command" # global
complete -c "vibekit" -n "__fish_seen_subcommand_from 'gemini'" -s "s" -l "sandbox" -d "Enable sandbox mode" # global
complete -c "vibekit" -n "__fish_seen_subcommand_from 'gemini'" -l "sandbox-type" -d "Sandbox type" -xa "docker podman none" # global
complete -c "vibekit" -n "__fish_seen_subcommand_from 'gemini'" -s "h" -l "help" -d "display help for command" # global
complete -c "vibekit" -n "__fish_seen_subcommand_from 'codex'" -s "s" -l "sandbox" -d "Enable sandbox mode" # global
complete -c "vibekit" -n "__fish_seen_subcommand_from 'codex'" -l "sandbox-type" -d "Sandbox type" -xa "docker podman none" # global
complete -c "vibekit" -n "__fish_seen_subcommand_from 'codex'" -s "h" -l "help" -d "display help for command" # global
complete -c "vibekit" -n "__fish_seen_subcommand_from 'cursor-agent'" -s "s" -l "sandbox" -d "Enable sandbox mode" # global
complete -c "vibekit" -n "__fish_seen_subcommand_from 'cursor-agent'" -l "sandbox-type" -d "Sandbox type" -xa "docker podman none" # global
complete -c "vibekit" -n "__fish_seen_subcommand_from 'cursor-agent'" -s "h" -l "help" -d "display help for command" # global
complete -c "vibekit" -n "__fish_seen_subcommand_from 'opencode'" -s "s" -l "sandbox" -d "Enable sandbox mode" # global
complete -c "vibekit" -n "__fish_seen_subcommand_from 'opencode'" -l "sandbox-type" -d "Sandbox type" -xa "docker podman none" # global
complete -c "vibekit" -n "__fish_seen_subcommand_from 'opencode'" -s "h" -l "help" -d "display help for command" # global
complete -c "vibekit" -n "__fish_seen_subcommand_from 'grok'" -s "s" -l "sandbox" -d "Enable sandbox mode" # global
complete -c "vibekit" -n "__fish_seen_subcommand_from 'grok'" -l "sandbox-type" -d "Sandbox type" -xa "docker podman none" # global
complete -c "vibekit" -n "__fish_seen_subcommand_from 'grok'" -s "h" -l "help" -d "display help for command" # global
complete -c "vibekit" -n "__fish_seen_subcommand_from 'sandbox'" -s "h" -l "help" -d "display help for command" # global
complete -f -c "vibekit" -n "__fish_seen_subcommand_from 'sandbox'" -a "status" -d "Show sandbox status and configuration" # sub
complete -f -c "vibekit" -n "__fish_seen_subcommand_from 'sandbox'" -a "build" -d "Build sandbox container image" # sub
complete -f -c "vibekit" -n "__fish_seen_subcommand_from 'sandbox'" -a "clean" -d "Clean up sandbox containers and images" # sub
complete -f -c "vibekit" -n "__fish_seen_subcommand_from 'sandbox'" -a "help" -d "display help for command" # sub
complete -c "vibekit" -n "__fish_seen_subcommand_from 'auth'" -s "h" -l "help" -d "display help for command" # global
complete -f -c "vibekit" -n "__fish_seen_subcommand_from 'auth'" -a "login" -d "Authenticate with specific agent (claude, codex, grok, gemini)" # sub
complete -f -c "vibekit" -n "__fish_seen_subcommand_from 'auth'" -a "status" -d "Show authentication status for all agents or specific agent" # sub
complete -f -c "vibekit" -n "__fish_seen_subcommand_from 'auth'" -a "verify" -d "Test authentication with API call for specific agent" # sub
complete -f -c "vibekit" -n "__fish_seen_subcommand_from 'auth'" -a "logout" -d "Clear stored authentication for specific agent" # sub
complete -f -c "vibekit" -n "__fish_seen_subcommand_from 'auth'" -a "import" -d "Import authentication token for specific agent" # sub
complete -f -c "vibekit" -n "__fish_seen_subcommand_from 'auth'" -a "help" -d "display help for command" # sub
complete -c "vibekit" -n "__fish_seen_subcommand_from 'logs'" -s "a" -l "agent" -d "Filter logs by agent" -xa "claude gemini" # global
complete -c "vibekit" -n "__fish_seen_subcommand_from 'logs'" -s "n" -l "lines" -d "Number of recent lines to show" # global
complete -c "vibekit" -n "__fish_seen_subcommand_from 'logs'" -s "h" -l "help" -d "display help for command" # global
complete -c "vibekit" -n "__fish_seen_subcommand_from 'dashboard'" -s "p" -l "port" -d "Port to run dashboard on" -xa "3001" # global
complete -c "vibekit" -n "__fish_seen_subcommand_from 'dashboard'" -l "no-open" -d "Do not open browser automatically" # global
complete -c "vibekit" -n "__fish_seen_subcommand_from 'dashboard'" -s "h" -l "help" -d "display help for command" # global
complete -f -c "vibekit" -n "__fish_seen_subcommand_from 'dashboard'" -a "start" -d "Start analytics dashboard server" # sub
complete -f -c "vibekit" -n "__fish_seen_subcommand_from 'dashboard'" -a "stop" -d "Stop analytics dashboard server" # sub
complete -f -c "vibekit" -n "__fish_seen_subcommand_from 'dashboard'" -a "update" -d "Update the dashboard to the latest version" # sub
complete -c "vibekit" -n "__fish_seen_subcommand_from 'dashboard start'" -s "p" -l "port" -d "Port to run dashboard on" -xa "3001" # subcommands flags
complete -c "vibekit" -n "__fish_seen_subcommand_from 'dashboard start'" -l "no-open" -d "Do not open browser automatically" # subcommands flags
complete -c "vibekit" -n "__fish_seen_subcommand_from 'dashboard stop'" -s "p" -l "port" -d "Port to run dashboard on" -xa "3001" # subcommands flags
complete -c "vibekit" -n "__fish_seen_subcommand_from 'dashboard stop'" -l "no-open" -d "Do not open browser automatically" # subcommands flags
complete -c "vibekit" -n "__fish_seen_subcommand_from 'dashboard update'" -s "p" -l "port" -d "Port to run dashboard on" -xa "3001" # subcommands flags
complete -c "vibekit" -n "__fish_seen_subcommand_from 'dashboard update'" -l "no-open" -d "Do not open browser automatically" # subcommands flags
complete -c "vibekit" -n "__fish_seen_subcommand_from 'setup-aliases'" -s "h" -l "help" -d "display help for command" # global
complete -c "vibekit" -n "__fish_seen_subcommand_from 'diagnose-aliases'" -s "h" -l "help" -d "display help for command" # global
complete -c "vibekit" -n "__fish_seen_subcommand_from 'analytics'" -s "a" -l "agent" -d "Filter analytics by agent" -xa "claude gemini" # global
complete -c "vibekit" -n "__fish_seen_subcommand_from 'analytics'" -s "d" -l "days" -d "Number of days to include" # global
complete -c "vibekit" -n "__fish_seen_subcommand_from 'analytics'" -l "summary" -d "Show summary statistics only" # global
complete -c "vibekit" -n "__fish_seen_subcommand_from 'analytics'" -l "export" -d "Export analytics to JSON file" # global
complete -c "vibekit" -n "__fish_seen_subcommand_from 'analytics'" -s "h" -l "help" -d "display help for command" # global
complete -c "vibekit" -n "__fish_seen_subcommand_from 'clean'" -l "logs" -d "Clean logs only" # global
complete -c "vibekit" -n "__fish_seen_subcommand_from 'clean'" -l "analytics" -d "Clean analytics data only" # global
complete -c "vibekit" -n "__fish_seen_subcommand_from 'clean'" -s "h" -l "help" -d "display help for command" # global
complete -c "vibekit" -n "__fish_seen_subcommand_from 'help'" -s "V" -l "version" -d "output the version number" # global
complete -c "vibekit" -n "__fish_seen_subcommand_from 'help'" -l "proxy" -d "HTTP/HTTPS proxy URL for all agents" # global
complete -c "vibekit" -n "__fish_seen_subcommand_from 'help'" -s "h" -l "help" -d "display help for command" # global
complete -f -c "vibekit" -n "__fish_seen_subcommand_from 'help'" -a "claude" -d "Run Claude Code CLI" # sub
complete -f -c "vibekit" -n "__fish_seen_subcommand_from 'help'" -a "gemini" -d "Run Gemini CLI" # sub
complete -f -c "vibekit" -n "__fish_seen_subcommand_from 'help'" -a "codex" -d "Run Codex CLI" # sub
complete -f -c "vibekit" -n "__fish_seen_subcommand_from 'help'" -a "cursor-agent" -d "Run Cursor Agent" # sub
complete -f -c "vibekit" -n "__fish_seen_subcommand_from 'help'" -a "opencode" -d "Run OpenCode CLI" # sub
complete -f -c "vibekit" -n "__fish_seen_subcommand_from 'help'" -a "grok" -d "Run Grok CLI" # sub
complete -f -c "vibekit" -n "__fish_seen_subcommand_from 'help'" -a "sandbox" -d "Manage sandbox environment" # sub
complete -f -c "vibekit" -n "__fish_seen_subcommand_from 'help'" -a "auth" -d "Manage authentication" # sub
complete -f -c "vibekit" -n "__fish_seen_subcommand_from 'help'" -a "logs" -d "View vibekit logs" # sub
complete -f -c "vibekit" -n "__fish_seen_subcommand_from 'help'" -a "dashboard" -d "Manage analytics dashboard" # sub
complete -f -c "vibekit" -n "__fish_seen_subcommand_from 'help'" -a "setup-aliases" -d "Install or remove global aliases based on settings" # sub
complete -f -c "vibekit" -n "__fish_seen_subcommand_from 'help'" -a "diagnose-aliases" -d "Diagnose alias setup and conflicts" # sub
complete -f -c "vibekit" -n "__fish_seen_subcommand_from 'help'" -a "analytics" -d "View agent analytics and usage statistics" # sub
complete -f -c "vibekit" -n "__fish_seen_subcommand_from 'help'" -a "clean" -d "Clean logs and analytics" # sub
complete -f -c "vibekit" -n "__fish_seen_subcommand_from 'help'" -a "help" -d "display help for command" # sub
complete -c "vibekit" -n "__fish_seen_subcommand_from 'help claude'" -l "proxy" -d "HTTP/HTTPS proxy URL for all agents" # subcommands flags
complete -c "vibekit" -n "__fish_seen_subcommand_from 'help gemini'" -l "proxy" -d "HTTP/HTTPS proxy URL for all agents" # subcommands flags
complete -c "vibekit" -n "__fish_seen_subcommand_from 'help codex'" -l "proxy" -d "HTTP/HTTPS proxy URL for all agents" # subcommands flags
complete -c "vibekit" -n "__fish_seen_subcommand_from 'help cursor-agent'" -l "proxy" -d "HTTP/HTTPS proxy URL for all agents" # subcommands flags
complete -c "vibekit" -n "__fish_seen_subcommand_from 'help opencode'" -l "proxy" -d "HTTP/HTTPS proxy URL for all agents" # subcommands flags
complete -c "vibekit" -n "__fish_seen_subcommand_from 'help grok'" -l "proxy" -d "HTTP/HTTPS proxy URL for all agents" # subcommands flags
complete -c "vibekit" -n "__fish_seen_subcommand_from 'help sandbox'" -l "proxy" -d "HTTP/HTTPS proxy URL for all agents" # subcommands flags
complete -c "vibekit" -n "__fish_seen_subcommand_from 'help auth'" -l "proxy" -d "HTTP/HTTPS proxy URL for all agents" # subcommands flags
complete -c "vibekit" -n "__fish_seen_subcommand_from 'help logs'" -l "proxy" -d "HTTP/HTTPS proxy URL for all agents" # subcommands flags
complete -c "vibekit" -n "__fish_seen_subcommand_from 'help dashboard'" -l "proxy" -d "HTTP/HTTPS proxy URL for all agents" # subcommands flags
complete -c "vibekit" -n "__fish_seen_subcommand_from 'help setup-aliases'" -l "proxy" -d "HTTP/HTTPS proxy URL for all agents" # subcommands flags
complete -c "vibekit" -n "__fish_seen_subcommand_from 'help diagnose-aliases'" -l "proxy" -d "HTTP/HTTPS proxy URL for all agents" # subcommands flags
complete -c "vibekit" -n "__fish_seen_subcommand_from 'help analytics'" -l "proxy" -d "HTTP/HTTPS proxy URL for all agents" # subcommands flags
complete -c "vibekit" -n "__fish_seen_subcommand_from 'help clean'" -l "proxy" -d "HTTP/HTTPS proxy URL for all agents" # subcommands flags
complete -c "vibekit" -n "__fish_seen_subcommand_from 'help help'" -l "proxy" -d "HTTP/HTTPS proxy URL for all agents" # subcommands flags