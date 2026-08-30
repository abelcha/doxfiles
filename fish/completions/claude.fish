# Ordered, flag-ignoring subcommand-path matcher.
# True when the non-option tokens after the command equal the args in order.
function __fish_seen_subcommand_path
    set -l subs
    for t in (commandline -pxc)[2..]
        string match -q -- '-*' $t; and continue
        set -a subs $t
    end
    test "$subs" = "$argv"
end
complete -c "claude" -l "add-dir" -xa "'(directories...)'" # global
complete -c "claude" -l "agent" -xa "'(agent)'" # global
complete -c "claude" -l "agents" -xa "'(json)'" # global
complete -c "claude" -l "allow-dangerously-skip-permissions" # global
complete -c "claude" -o "allowed-tools" -xa "'(tools...)'" # global
complete -c "claude" -l "append-system-prompt" -xa "'(prompt)'" # global
complete -c "claude" -l "autocompact" -xa "auto tokens" # global
complete -c "claude" -l "ax-screen-reader" # global
complete -c "claude" -s "bg" -l "background" # global
complete -c "claude" -l "bare" # global
complete -c "claude" -l "betas" -xa "'(betas...)'" # global
complete -c "claude" -l "brief" # global
complete -c "claude" -l "chrome" # global
complete -c "claude" -l "cloud" -xa "description session_id url" # global
complete -c "claude" -s "c" -l "continue" -d "Continue the most recent conversation in the current directory" # global
complete -c "claude" -l "dangerously-skip-permissions" # global
complete -c "claude" -s "d" -l "debug" -d "Enable debug mode with optional category filtering" -xa "'(filter)'" # global
complete -c "claude" -l "debug-file" -xa "'(path)'" # global
complete -c "claude" -l "disable-slash-commands" # global
complete -c "claude" -o "disallowed-tools" -xa "'(tools...)'" # global
complete -c "claude" -l "effort" -xa "'(level)'" # global
complete -c "claude" -l "environment" -xa "'(environment_id)'" # global
complete -c "claude" -l "exclude-dynamic-system-prompt-sections" # global
complete -c "claude" -l "fallback-model" -xa "'(model)'" # global
complete -c "claude" -l "file" -xa "'(specs...)'" # global
complete -c "claude" -l "fork-session" # global
complete -c "claude" -l "forward-subagent-text" # global
complete -c "claude" -l "from-pr" -xa "'(value)'" # global
complete -c "claude" -s "h" -l "help" -d "Display help for command" # global
complete -c "claude" -l "ide" # global
complete -c "claude" -l "include-hook-events" # global
complete -c "claude" -l "include-partial-messages" # global
complete -c "claude" -l "input-format" -xa "'(format)'" # global
complete -c "claude" -l "json-schema" -xa "'(schema)'" # global
complete -c "claude" -l "max-budget-usd" -xa "'(amount)'" # global
complete -c "claude" -l "mcp-config" -xa "'(configs...)'" # global
complete -c "claude" -l "model" -xa "'(model)'" # global
complete -c "claude" -s "n" -l "name" -d "Set a display name for this session" -xa "'(name)'" # global
complete -c "claude" -l "no-chrome" # global
complete -c "claude" -l "no-session-persistence" # global
complete -c "claude" -l "output-format" -xa "'(format)'" # global
complete -c "claude" -l "permission-mode" -xa "'(mode)'" # global
complete -c "claude" -l "plugin-dir" -xa "'(path)'" # global
complete -c "claude" -l "plugin-url" -xa "'(url)'" # global
complete -c "claude" -s "p" -l "print" -d "Print response and exit (useful for pipes)" # global
complete -c "claude" -l "prompt-suggestions" -xa "true false 1 0 yes no on off" # global
complete -c "claude" -l "remote-control" -xa "'(name)'" # global
complete -c "claude" -l "remote-control-session-name-prefix" -xa "'(prefix)'" # global
complete -c "claude" -l "replay-user-messages" # global
complete -c "claude" -s "r" -l "resume" -d "Resume a conversation by session ID, or open interactive picker with optional search term" -xa "'(value)'" # global
complete -c "claude" -l "safe-mode" # global
complete -c "claude" -l "session-id" -xa "'(uuid)'" # global
complete -c "claude" -l "setting-sources" -xa "'(sources)'" # global
complete -c "claude" -l "settings" -xa "'(file-or-json)'" # global
complete -c "claude" -l "strict-mcp-config" # global
complete -c "claude" -l "system-prompt" -xa "'(prompt)'" # global
complete -c "claude" -l "teleport" -xa "'(session)'" # global
complete -c "claude" -l "tmux" # global
complete -c "claude" -l "tools" -xa "'(tools...)'" # global
complete -c "claude" -l "verbose" # global
complete -c "claude" -s "v" -l "version" -d "Output the version number" # global
complete -c "claude" -s "w" -l "worktree" -d "Create a new git worktree for this session" -xa "'(name)'" # global
complete -f -c "claude" -n "__fish_use_subcommand" -a "agents" -d "Manage background agents" # sub
complete -f -c "claude" -n "__fish_use_subcommand" -a "auth" -d "Manage authentication" # sub
complete -f -c "claude" -n "__fish_use_subcommand" -a "auto-mode" -d "Inspect or reset auto mode classifier configuration" # sub
complete -f -c "claude" -n "__fish_use_subcommand" -a "doctor" -d "Check the health of your Claude Code installation" # sub
complete -f -c "claude" -n "__fish_use_subcommand" -a "gateway" -d "Run the enterprise auth/telemetry gateway" # sub
complete -f -c "claude" -n "__fish_use_subcommand" -a "import" -d "Import config from another AI coding agent into Claude Code" # sub
complete -f -c "claude" -n "__fish_use_subcommand" -a "install" -d "Install Claude Code native build" # sub
complete -f -c "claude" -n "__fish_use_subcommand" -a "mcp" -d "Configure and manage MCP servers" # sub
complete -f -c "claude" -n "__fish_use_subcommand" -a "plugin" -d "Manage Claude Code plugins" # sub
complete -f -c "claude" -n "__fish_use_subcommand" -a "project" -d "Manage Claude Code project state" # sub
complete -f -c "claude" -n "__fish_use_subcommand" -a "setup-token" -d "Set up a long-lived authentication token (requires Claude subscription)" # sub
complete -f -c "claude" -n "__fish_use_subcommand" -a "ultrareview" -d "Run a cloud-hosted multi-agent code review of the current branch (or a PR number / base branch) and print the findings" # sub
complete -f -c "claude" -n "__fish_use_subcommand" -a "update" -d "Check for updates and install if available" # sub
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "add-dir" -xa "'(directories...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "agent" -xa "'(agent)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "agents" -xa "'(json)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "allow-dangerously-skip-permissions" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -o "allowed-tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "append-system-prompt" -xa "'(prompt)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "autocompact" -xa "auto tokens" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "ax-screen-reader" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -s "bg" -l "background" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "bare" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "betas" -xa "'(betas...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "brief" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "chrome" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "cloud" -xa "description session_id url" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -s "c" -l "continue" -d "Continue the most recent conversation in the current directory" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "dangerously-skip-permissions" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -s "d" -l "debug" -d "Enable debug mode with optional category filtering" -xa "'(filter)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "debug-file" -xa "'(path)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "disable-slash-commands" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -o "disallowed-tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "effort" -xa "'(level)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "environment" -xa "'(environment_id)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "exclude-dynamic-system-prompt-sections" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "fallback-model" -xa "'(model)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "file" -xa "'(specs...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "fork-session" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "forward-subagent-text" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "from-pr" -xa "'(value)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "ide" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "include-hook-events" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "include-partial-messages" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "input-format" -xa "'(format)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "json-schema" -xa "'(schema)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "max-budget-usd" -xa "'(amount)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "mcp-config" -xa "'(configs...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "model" -xa "'(model)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -s "n" -l "name" -d "Set a display name for this session" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "no-chrome" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "no-session-persistence" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "output-format" -xa "'(format)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "permission-mode" -xa "'(mode)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "plugin-dir" -xa "'(path)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "plugin-url" -xa "'(url)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -s "p" -l "print" -d "Print response and exit (useful for pipes)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "prompt-suggestions" -xa "true false 1 0 yes no on off" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "remote-control" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "remote-control-session-name-prefix" -xa "'(prefix)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "replay-user-messages" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -s "r" -l "resume" -d "Resume a conversation by session ID, or open interactive picker with optional search term" -xa "'(value)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "safe-mode" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "session-id" -xa "'(uuid)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "setting-sources" -xa "'(sources)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "settings" -xa "'(file-or-json)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "strict-mcp-config" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "system-prompt" -xa "'(prompt)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "teleport" -xa "'(session)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "tmux" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "verbose" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -s "w" -l "worktree" -d "Create a new git worktree for this session" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "add-dir" -xa "'(directories...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "agent" -xa "'(agent)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "agents" -xa "'(json)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "allow-dangerously-skip-permissions" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -o "allowed-tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "append-system-prompt" -xa "'(prompt)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "autocompact" -xa "auto tokens" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "ax-screen-reader" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -s "bg" -l "background" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "bare" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "betas" -xa "'(betas...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "brief" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "chrome" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "cloud" -xa "description session_id url" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -s "c" -l "continue" -d "Continue the most recent conversation in the current directory" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "dangerously-skip-permissions" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -s "d" -l "debug" -d "Enable debug mode with optional category filtering" -xa "'(filter)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "debug-file" -xa "'(path)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "disable-slash-commands" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -o "disallowed-tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "effort" -xa "'(level)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "environment" -xa "'(environment_id)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "exclude-dynamic-system-prompt-sections" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "fallback-model" -xa "'(model)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "file" -xa "'(specs...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "fork-session" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "forward-subagent-text" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "from-pr" -xa "'(value)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "ide" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "include-hook-events" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "include-partial-messages" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "input-format" -xa "'(format)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "json-schema" -xa "'(schema)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "max-budget-usd" -xa "'(amount)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "mcp-config" -xa "'(configs...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "model" -xa "'(model)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -s "n" -l "name" -d "Set a display name for this session" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "no-chrome" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "no-session-persistence" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "output-format" -xa "'(format)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "permission-mode" -xa "'(mode)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "plugin-dir" -xa "'(path)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "plugin-url" -xa "'(url)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -s "p" -l "print" -d "Print response and exit (useful for pipes)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "prompt-suggestions" -xa "true false 1 0 yes no on off" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "remote-control" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "remote-control-session-name-prefix" -xa "'(prefix)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "replay-user-messages" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -s "r" -l "resume" -d "Resume a conversation by session ID, or open interactive picker with optional search term" -xa "'(value)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "safe-mode" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "session-id" -xa "'(uuid)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "setting-sources" -xa "'(sources)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "settings" -xa "'(file-or-json)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "strict-mcp-config" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "system-prompt" -xa "'(prompt)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "teleport" -xa "'(session)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "tmux" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -l "verbose" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -s "w" -l "worktree" -d "Create a new git worktree for this session" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "add-dir" -xa "'(directories...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "agent" -xa "'(agent)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "agents" -xa "'(json)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "allow-dangerously-skip-permissions" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -o "allowed-tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "append-system-prompt" -xa "'(prompt)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "autocompact" -xa "auto tokens" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "ax-screen-reader" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -s "bg" -l "background" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "bare" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "betas" -xa "'(betas...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "brief" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "chrome" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "cloud" -xa "description session_id url" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -s "c" -l "continue" -d "Continue the most recent conversation in the current directory" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "dangerously-skip-permissions" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -s "d" -l "debug" -d "Enable debug mode with optional category filtering" -xa "'(filter)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "debug-file" -xa "'(path)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "disable-slash-commands" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -o "disallowed-tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "effort" -xa "'(level)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "environment" -xa "'(environment_id)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "exclude-dynamic-system-prompt-sections" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "fallback-model" -xa "'(model)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "file" -xa "'(specs...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "fork-session" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "forward-subagent-text" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "from-pr" -xa "'(value)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "ide" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "include-hook-events" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "include-partial-messages" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "input-format" -xa "'(format)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "json-schema" -xa "'(schema)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "max-budget-usd" -xa "'(amount)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "mcp-config" -xa "'(configs...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "model" -xa "'(model)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -s "n" -l "name" -d "Set a display name for this session" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "no-chrome" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "no-session-persistence" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "output-format" -xa "'(format)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "permission-mode" -xa "'(mode)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "plugin-dir" -xa "'(path)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "plugin-url" -xa "'(url)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -s "p" -l "print" -d "Print response and exit (useful for pipes)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "prompt-suggestions" -xa "true false 1 0 yes no on off" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "remote-control" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "remote-control-session-name-prefix" -xa "'(prefix)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "replay-user-messages" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -s "r" -l "resume" -d "Resume a conversation by session ID, or open interactive picker with optional search term" -xa "'(value)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "safe-mode" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "session-id" -xa "'(uuid)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "setting-sources" -xa "'(sources)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "settings" -xa "'(file-or-json)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "strict-mcp-config" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "system-prompt" -xa "'(prompt)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "teleport" -xa "'(session)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "tmux" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -l "verbose" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -s "w" -l "worktree" -d "Create a new git worktree for this session" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "add-dir" -xa "'(directories...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "agent" -xa "'(agent)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "agents" -xa "'(json)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "allow-dangerously-skip-permissions" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -o "allowed-tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "append-system-prompt" -xa "'(prompt)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "autocompact" -xa "auto tokens" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "ax-screen-reader" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -s "bg" -l "background" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "bare" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "betas" -xa "'(betas...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "brief" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "chrome" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "cloud" -xa "description session_id url" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -s "c" -l "continue" -d "Continue the most recent conversation in the current directory" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "dangerously-skip-permissions" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -s "d" -l "debug" -d "Enable debug mode with optional category filtering" -xa "'(filter)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "debug-file" -xa "'(path)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "disable-slash-commands" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -o "disallowed-tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "effort" -xa "'(level)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "environment" -xa "'(environment_id)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "exclude-dynamic-system-prompt-sections" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "fallback-model" -xa "'(model)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "file" -xa "'(specs...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "fork-session" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "forward-subagent-text" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "from-pr" -xa "'(value)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "ide" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "include-hook-events" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "include-partial-messages" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "input-format" -xa "'(format)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "json-schema" -xa "'(schema)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "max-budget-usd" -xa "'(amount)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "mcp-config" -xa "'(configs...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "model" -xa "'(model)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -s "n" -l "name" -d "Set a display name for this session" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "no-chrome" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "no-session-persistence" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "output-format" -xa "'(format)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "permission-mode" -xa "'(mode)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "plugin-dir" -xa "'(path)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "plugin-url" -xa "'(url)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -s "p" -l "print" -d "Print response and exit (useful for pipes)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "prompt-suggestions" -xa "true false 1 0 yes no on off" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "remote-control" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "remote-control-session-name-prefix" -xa "'(prefix)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "replay-user-messages" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -s "r" -l "resume" -d "Resume a conversation by session ID, or open interactive picker with optional search term" -xa "'(value)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "safe-mode" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "session-id" -xa "'(uuid)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "setting-sources" -xa "'(sources)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "settings" -xa "'(file-or-json)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "strict-mcp-config" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "system-prompt" -xa "'(prompt)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "teleport" -xa "'(session)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "tmux" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -l "verbose" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -s "w" -l "worktree" -d "Create a new git worktree for this session" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "add-dir" -xa "'(directories...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "agent" -xa "'(agent)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "agents" -xa "'(json)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "allow-dangerously-skip-permissions" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -o "allowed-tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "append-system-prompt" -xa "'(prompt)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "autocompact" -xa "auto tokens" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "ax-screen-reader" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -s "bg" -l "background" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "bare" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "betas" -xa "'(betas...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "brief" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "chrome" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "cloud" -xa "description session_id url" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -s "c" -l "continue" -d "Continue the most recent conversation in the current directory" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "dangerously-skip-permissions" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -s "d" -l "debug" -d "Enable debug mode with optional category filtering" -xa "'(filter)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "debug-file" -xa "'(path)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "disable-slash-commands" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -o "disallowed-tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "effort" -xa "'(level)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "environment" -xa "'(environment_id)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "exclude-dynamic-system-prompt-sections" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "fallback-model" -xa "'(model)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "file" -xa "'(specs...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "fork-session" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "forward-subagent-text" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "from-pr" -xa "'(value)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "ide" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "include-hook-events" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "include-partial-messages" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "input-format" -xa "'(format)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "json-schema" -xa "'(schema)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "max-budget-usd" -xa "'(amount)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "mcp-config" -xa "'(configs...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "model" -xa "'(model)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -s "n" -l "name" -d "Set a display name for this session" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "no-chrome" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "no-session-persistence" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "output-format" -xa "'(format)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "permission-mode" -xa "'(mode)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "plugin-dir" -xa "'(path)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "plugin-url" -xa "'(url)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -s "p" -l "print" -d "Print response and exit (useful for pipes)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "prompt-suggestions" -xa "true false 1 0 yes no on off" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "remote-control" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "remote-control-session-name-prefix" -xa "'(prefix)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "replay-user-messages" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -s "r" -l "resume" -d "Resume a conversation by session ID, or open interactive picker with optional search term" -xa "'(value)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "safe-mode" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "session-id" -xa "'(uuid)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "setting-sources" -xa "'(sources)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "settings" -xa "'(file-or-json)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "strict-mcp-config" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "system-prompt" -xa "'(prompt)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "teleport" -xa "'(session)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "tmux" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "verbose" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -s "w" -l "worktree" -d "Create a new git worktree for this session" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "add-dir" -xa "'(directories...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "agent" -xa "'(agent)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "agents" -xa "'(json)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "allow-dangerously-skip-permissions" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -o "allowed-tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "append-system-prompt" -xa "'(prompt)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "autocompact" -xa "auto tokens" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "ax-screen-reader" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -s "bg" -l "background" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "bare" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "betas" -xa "'(betas...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "brief" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "chrome" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "cloud" -xa "description session_id url" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -s "c" -l "continue" -d "Continue the most recent conversation in the current directory" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "dangerously-skip-permissions" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -s "d" -l "debug" -d "Enable debug mode with optional category filtering" -xa "'(filter)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "debug-file" -xa "'(path)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "disable-slash-commands" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -o "disallowed-tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "effort" -xa "'(level)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "environment" -xa "'(environment_id)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "exclude-dynamic-system-prompt-sections" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "fallback-model" -xa "'(model)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "file" -xa "'(specs...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "fork-session" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "forward-subagent-text" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "from-pr" -xa "'(value)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "ide" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "include-hook-events" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "include-partial-messages" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "input-format" -xa "'(format)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "json-schema" -xa "'(schema)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "max-budget-usd" -xa "'(amount)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "mcp-config" -xa "'(configs...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "model" -xa "'(model)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -s "n" -l "name" -d "Set a display name for this session" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "no-chrome" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "no-session-persistence" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "output-format" -xa "'(format)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "permission-mode" -xa "'(mode)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "plugin-dir" -xa "'(path)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "plugin-url" -xa "'(url)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -s "p" -l "print" -d "Print response and exit (useful for pipes)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "prompt-suggestions" -xa "true false 1 0 yes no on off" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "remote-control" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "remote-control-session-name-prefix" -xa "'(prefix)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "replay-user-messages" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -s "r" -l "resume" -d "Resume a conversation by session ID, or open interactive picker with optional search term" -xa "'(value)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "safe-mode" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "session-id" -xa "'(uuid)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "setting-sources" -xa "'(sources)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "settings" -xa "'(file-or-json)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "strict-mcp-config" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "system-prompt" -xa "'(prompt)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "teleport" -xa "'(session)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "tmux" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "verbose" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -s "w" -l "worktree" -d "Create a new git worktree for this session" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "add-dir" -xa "'(directories...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "agent" -xa "'(agent)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "agents" -xa "'(json)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "allow-dangerously-skip-permissions" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -o "allowed-tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "append-system-prompt" -xa "'(prompt)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "autocompact" -xa "auto tokens" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "ax-screen-reader" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -s "bg" -l "background" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "bare" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "betas" -xa "'(betas...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "brief" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "chrome" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "cloud" -xa "description session_id url" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -s "c" -l "continue" -d "Continue the most recent conversation in the current directory" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "dangerously-skip-permissions" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -s "d" -l "debug" -d "Enable debug mode with optional category filtering" -xa "'(filter)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "debug-file" -xa "'(path)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "disable-slash-commands" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -o "disallowed-tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "effort" -xa "'(level)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "environment" -xa "'(environment_id)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "exclude-dynamic-system-prompt-sections" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "fallback-model" -xa "'(model)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "file" -xa "'(specs...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "fork-session" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "forward-subagent-text" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "from-pr" -xa "'(value)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "ide" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "include-hook-events" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "include-partial-messages" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "input-format" -xa "'(format)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "json-schema" -xa "'(schema)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "max-budget-usd" -xa "'(amount)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "mcp-config" -xa "'(configs...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "model" -xa "'(model)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -s "n" -l "name" -d "Set a display name for this session" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "no-chrome" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "no-session-persistence" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "output-format" -xa "'(format)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "permission-mode" -xa "'(mode)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "plugin-dir" -xa "'(path)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "plugin-url" -xa "'(url)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -s "p" -l "print" -d "Print response and exit (useful for pipes)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "prompt-suggestions" -xa "true false 1 0 yes no on off" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "remote-control" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "remote-control-session-name-prefix" -xa "'(prefix)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "replay-user-messages" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -s "r" -l "resume" -d "Resume a conversation by session ID, or open interactive picker with optional search term" -xa "'(value)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "safe-mode" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "session-id" -xa "'(uuid)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "setting-sources" -xa "'(sources)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "settings" -xa "'(file-or-json)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "strict-mcp-config" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "system-prompt" -xa "'(prompt)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "teleport" -xa "'(session)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "tmux" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "verbose" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -s "w" -l "worktree" -d "Create a new git worktree for this session" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "add-dir" -xa "'(directories...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "agent" -xa "'(agent)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "agents" -xa "'(json)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "allow-dangerously-skip-permissions" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -o "allowed-tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "append-system-prompt" -xa "'(prompt)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "autocompact" -xa "auto tokens" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "ax-screen-reader" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -s "bg" -l "background" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "bare" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "betas" -xa "'(betas...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "brief" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "chrome" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "cloud" -xa "description session_id url" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -s "c" -l "continue" -d "Continue the most recent conversation in the current directory" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "dangerously-skip-permissions" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -s "d" -l "debug" -d "Enable debug mode with optional category filtering" -xa "'(filter)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "debug-file" -xa "'(path)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "disable-slash-commands" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -o "disallowed-tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "effort" -xa "'(level)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "environment" -xa "'(environment_id)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "exclude-dynamic-system-prompt-sections" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "fallback-model" -xa "'(model)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "file" -xa "'(specs...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "fork-session" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "forward-subagent-text" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "from-pr" -xa "'(value)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "ide" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "include-hook-events" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "include-partial-messages" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "input-format" -xa "'(format)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "json-schema" -xa "'(schema)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "max-budget-usd" -xa "'(amount)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "mcp-config" -xa "'(configs...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "model" -xa "'(model)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -s "n" -l "name" -d "Set a display name for this session" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "no-chrome" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "no-session-persistence" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "output-format" -xa "'(format)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "permission-mode" -xa "'(mode)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "plugin-dir" -xa "'(path)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "plugin-url" -xa "'(url)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -s "p" -l "print" -d "Print response and exit (useful for pipes)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "prompt-suggestions" -xa "true false 1 0 yes no on off" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "remote-control" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "remote-control-session-name-prefix" -xa "'(prefix)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "replay-user-messages" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -s "r" -l "resume" -d "Resume a conversation by session ID, or open interactive picker with optional search term" -xa "'(value)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "safe-mode" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "session-id" -xa "'(uuid)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "setting-sources" -xa "'(sources)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "settings" -xa "'(file-or-json)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "strict-mcp-config" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "system-prompt" -xa "'(prompt)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "teleport" -xa "'(session)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "tmux" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -l "verbose" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -s "w" -l "worktree" -d "Create a new git worktree for this session" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "add-dir" -xa "'(directories...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "agent" -xa "'(agent)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "agents" -xa "'(json)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "allow-dangerously-skip-permissions" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -o "allowed-tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "append-system-prompt" -xa "'(prompt)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "autocompact" -xa "auto tokens" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "ax-screen-reader" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -s "bg" -l "background" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "bare" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "betas" -xa "'(betas...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "brief" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "chrome" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "cloud" -xa "description session_id url" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -s "c" -l "continue" -d "Continue the most recent conversation in the current directory" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "dangerously-skip-permissions" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -s "d" -l "debug" -d "Enable debug mode with optional category filtering" -xa "'(filter)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "debug-file" -xa "'(path)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "disable-slash-commands" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -o "disallowed-tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "effort" -xa "'(level)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "environment" -xa "'(environment_id)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "exclude-dynamic-system-prompt-sections" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "fallback-model" -xa "'(model)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "file" -xa "'(specs...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "fork-session" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "forward-subagent-text" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "from-pr" -xa "'(value)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "ide" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "include-hook-events" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "include-partial-messages" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "input-format" -xa "'(format)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "json-schema" -xa "'(schema)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "max-budget-usd" -xa "'(amount)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "mcp-config" -xa "'(configs...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "model" -xa "'(model)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -s "n" -l "name" -d "Set a display name for this session" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "no-chrome" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "no-session-persistence" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "output-format" -xa "'(format)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "permission-mode" -xa "'(mode)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "plugin-dir" -xa "'(path)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "plugin-url" -xa "'(url)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -s "p" -l "print" -d "Print response and exit (useful for pipes)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "prompt-suggestions" -xa "true false 1 0 yes no on off" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "remote-control" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "remote-control-session-name-prefix" -xa "'(prefix)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "replay-user-messages" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -s "r" -l "resume" -d "Resume a conversation by session ID, or open interactive picker with optional search term" -xa "'(value)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "safe-mode" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "session-id" -xa "'(uuid)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "setting-sources" -xa "'(sources)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "settings" -xa "'(file-or-json)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "strict-mcp-config" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "system-prompt" -xa "'(prompt)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "teleport" -xa "'(session)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "tmux" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -l "verbose" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -s "w" -l "worktree" -d "Create a new git worktree for this session" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "add-dir" -xa "'(directories...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "agent" -xa "'(agent)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "agents" -xa "'(json)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "allow-dangerously-skip-permissions" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -o "allowed-tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "append-system-prompt" -xa "'(prompt)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "autocompact" -xa "auto tokens" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "ax-screen-reader" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -s "bg" -l "background" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "bare" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "betas" -xa "'(betas...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "brief" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "chrome" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "cloud" -xa "description session_id url" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -s "c" -l "continue" -d "Continue the most recent conversation in the current directory" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "dangerously-skip-permissions" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -s "d" -l "debug" -d "Enable debug mode with optional category filtering" -xa "'(filter)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "debug-file" -xa "'(path)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "disable-slash-commands" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -o "disallowed-tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "effort" -xa "'(level)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "environment" -xa "'(environment_id)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "exclude-dynamic-system-prompt-sections" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "fallback-model" -xa "'(model)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "file" -xa "'(specs...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "fork-session" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "forward-subagent-text" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "from-pr" -xa "'(value)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "ide" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "include-hook-events" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "include-partial-messages" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "input-format" -xa "'(format)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "json-schema" -xa "'(schema)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "max-budget-usd" -xa "'(amount)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "mcp-config" -xa "'(configs...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "model" -xa "'(model)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -s "n" -l "name" -d "Set a display name for this session" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "no-chrome" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "no-session-persistence" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "output-format" -xa "'(format)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "permission-mode" -xa "'(mode)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "plugin-dir" -xa "'(path)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "plugin-url" -xa "'(url)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -s "p" -l "print" -d "Print response and exit (useful for pipes)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "prompt-suggestions" -xa "true false 1 0 yes no on off" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "remote-control" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "remote-control-session-name-prefix" -xa "'(prefix)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "replay-user-messages" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -s "r" -l "resume" -d "Resume a conversation by session ID, or open interactive picker with optional search term" -xa "'(value)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "safe-mode" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "session-id" -xa "'(uuid)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "setting-sources" -xa "'(sources)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "settings" -xa "'(file-or-json)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "strict-mcp-config" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "system-prompt" -xa "'(prompt)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "teleport" -xa "'(session)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "tmux" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -l "verbose" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -s "w" -l "worktree" -d "Create a new git worktree for this session" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "add-dir" -xa "'(directories...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "agent" -xa "'(agent)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "agents" -xa "'(json)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "allow-dangerously-skip-permissions" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -o "allowed-tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "append-system-prompt" -xa "'(prompt)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "autocompact" -xa "auto tokens" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "ax-screen-reader" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -s "bg" -l "background" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "bare" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "betas" -xa "'(betas...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "brief" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "chrome" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "cloud" -xa "description session_id url" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -s "c" -l "continue" -d "Continue the most recent conversation in the current directory" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "dangerously-skip-permissions" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -s "d" -l "debug" -d "Enable debug mode with optional category filtering" -xa "'(filter)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "debug-file" -xa "'(path)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "disable-slash-commands" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -o "disallowed-tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "effort" -xa "'(level)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "environment" -xa "'(environment_id)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "exclude-dynamic-system-prompt-sections" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "fallback-model" -xa "'(model)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "file" -xa "'(specs...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "fork-session" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "forward-subagent-text" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "from-pr" -xa "'(value)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "ide" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "include-hook-events" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "include-partial-messages" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "input-format" -xa "'(format)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "json-schema" -xa "'(schema)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "max-budget-usd" -xa "'(amount)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "mcp-config" -xa "'(configs...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "model" -xa "'(model)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -s "n" -l "name" -d "Set a display name for this session" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "no-chrome" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "no-session-persistence" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "output-format" -xa "'(format)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "permission-mode" -xa "'(mode)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "plugin-dir" -xa "'(path)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "plugin-url" -xa "'(url)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -s "p" -l "print" -d "Print response and exit (useful for pipes)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "prompt-suggestions" -xa "true false 1 0 yes no on off" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "remote-control" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "remote-control-session-name-prefix" -xa "'(prefix)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "replay-user-messages" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -s "r" -l "resume" -d "Resume a conversation by session ID, or open interactive picker with optional search term" -xa "'(value)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "safe-mode" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "session-id" -xa "'(uuid)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "setting-sources" -xa "'(sources)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "settings" -xa "'(file-or-json)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "strict-mcp-config" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "system-prompt" -xa "'(prompt)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "teleport" -xa "'(session)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "tmux" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -l "verbose" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -s "w" -l "worktree" -d "Create a new git worktree for this session" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "add-dir" -xa "'(directories...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "agent" -xa "'(agent)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "agents" -xa "'(json)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "allow-dangerously-skip-permissions" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -o "allowed-tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "append-system-prompt" -xa "'(prompt)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "autocompact" -xa "auto tokens" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "ax-screen-reader" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -s "bg" -l "background" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "bare" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "betas" -xa "'(betas...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "brief" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "chrome" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "cloud" -xa "description session_id url" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -s "c" -l "continue" -d "Continue the most recent conversation in the current directory" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "dangerously-skip-permissions" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -s "d" -l "debug" -d "Enable debug mode with optional category filtering" -xa "'(filter)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "debug-file" -xa "'(path)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "disable-slash-commands" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -o "disallowed-tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "effort" -xa "'(level)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "environment" -xa "'(environment_id)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "exclude-dynamic-system-prompt-sections" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "fallback-model" -xa "'(model)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "file" -xa "'(specs...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "fork-session" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "forward-subagent-text" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "from-pr" -xa "'(value)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "ide" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "include-hook-events" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "include-partial-messages" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "input-format" -xa "'(format)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "json-schema" -xa "'(schema)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "max-budget-usd" -xa "'(amount)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "mcp-config" -xa "'(configs...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "model" -xa "'(model)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -s "n" -l "name" -d "Set a display name for this session" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "no-chrome" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "no-session-persistence" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "output-format" -xa "'(format)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "permission-mode" -xa "'(mode)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "plugin-dir" -xa "'(path)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "plugin-url" -xa "'(url)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -s "p" -l "print" -d "Print response and exit (useful for pipes)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "prompt-suggestions" -xa "true false 1 0 yes no on off" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "remote-control" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "remote-control-session-name-prefix" -xa "'(prefix)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "replay-user-messages" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -s "r" -l "resume" -d "Resume a conversation by session ID, or open interactive picker with optional search term" -xa "'(value)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "safe-mode" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "session-id" -xa "'(uuid)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "setting-sources" -xa "'(sources)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "settings" -xa "'(file-or-json)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "strict-mcp-config" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "system-prompt" -xa "'(prompt)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "teleport" -xa "'(session)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "tmux" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "verbose" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -s "w" -l "worktree" -d "Create a new git worktree for this session" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "add-dir" -xa "'(directories...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "agent" -xa "'(agent)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "agents" -xa "'(json)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "allow-dangerously-skip-permissions" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -o "allowed-tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "append-system-prompt" -xa "'(prompt)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "autocompact" -xa "auto tokens" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "ax-screen-reader" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -s "bg" -l "background" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "bare" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "betas" -xa "'(betas...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "brief" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "chrome" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "cloud" -xa "description session_id url" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -s "c" -l "continue" -d "Continue the most recent conversation in the current directory" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "dangerously-skip-permissions" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -s "d" -l "debug" -d "Enable debug mode with optional category filtering" -xa "'(filter)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "debug-file" -xa "'(path)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "disable-slash-commands" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -o "disallowed-tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "effort" -xa "'(level)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "environment" -xa "'(environment_id)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "exclude-dynamic-system-prompt-sections" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "fallback-model" -xa "'(model)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "file" -xa "'(specs...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "fork-session" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "forward-subagent-text" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "from-pr" -xa "'(value)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "ide" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "include-hook-events" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "include-partial-messages" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "input-format" -xa "'(format)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "json-schema" -xa "'(schema)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "max-budget-usd" -xa "'(amount)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "mcp-config" -xa "'(configs...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "model" -xa "'(model)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -s "n" -l "name" -d "Set a display name for this session" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "no-chrome" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "no-session-persistence" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "output-format" -xa "'(format)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "permission-mode" -xa "'(mode)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "plugin-dir" -xa "'(path)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "plugin-url" -xa "'(url)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -s "p" -l "print" -d "Print response and exit (useful for pipes)" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "prompt-suggestions" -xa "true false 1 0 yes no on off" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "remote-control" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "remote-control-session-name-prefix" -xa "'(prefix)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "replay-user-messages" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -s "r" -l "resume" -d "Resume a conversation by session ID, or open interactive picker with optional search term" -xa "'(value)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "safe-mode" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "session-id" -xa "'(uuid)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "setting-sources" -xa "'(sources)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "settings" -xa "'(file-or-json)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "strict-mcp-config" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "system-prompt" -xa "'(prompt)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "teleport" -xa "'(session)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "tmux" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "tools" -xa "'(tools...)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -l "verbose" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -s "w" -l "worktree" -d "Create a new git worktree for this session" -xa "'(name)'" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "add-dir" # global
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "agent" # global
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "all" -d "With --json: also include completed background sessions" # global
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "allow-dangerously-skip-permissions" -d "Make bypass-permissions mode available to dispatched sessions without defaulting to it" # global
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "cwd" # global
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "dangerously-skip-permissions" -d "Alias for --permission-mode bypassPermissions" # global
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "effort" # global
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -s "h" -l "help" -d "Display help for command" # global
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "json" -d "Print active sessions (interactive and background) as a JSON array and exit (for scripting; does not require a TTY)" # global
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "mcp-config" # global
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "model" # global
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "permission-mode" # global
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "plugin-dir" # global
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "setting-sources" -xa "user project local" # global
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "settings" # global
complete -c "claude" -n "__fish_seen_subcommand_from 'agents'" -l "strict-mcp-config" -d "Only use MCP servers from --mcp-config in dispatched sessions" # global
complete -c "claude" -n "__fish_seen_subcommand_from 'auth'" -s "h" -l "help" -d "Display help for command" # global
complete -f -c "claude" -n "__fish_seen_subcommand_path 'auth'" -a "help" -d "display help for command" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_path 'auth'" -a "login" -d "Sign in to your Anthropic account" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_path 'auth'" -a "logout" -d "Log out from your Anthropic account" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_path 'auth'" -a "status" -d "Show authentication status" # sub
complete -c "claude" -n "__fish_seen_subcommand_from 'auth help'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth login'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth logout'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auth status'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode'" -s "h" -l "help" -d "Display help for command" # global
complete -f -c "claude" -n "__fish_seen_subcommand_path 'auto-mode'" -a "config" -d "Print the effective auto mode config as JSON: your settings where set, defaults otherwise" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_path 'auto-mode'" -a "critique" -d "Get AI feedback on your custom auto mode rules" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_path 'auto-mode'" -a "defaults" -d "Print the default auto mode environment, allow, soft_deny, and hard_deny rules as JSON" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_path 'auto-mode'" -a "help" -d "display help for command" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_path 'auto-mode'" -a "reset" -d "Reset auto mode configuration to the shipped defaults by removing the autoMode section from your user settings file" # sub
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode config'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode critique'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode defaults'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode help'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'auto-mode reset'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'doctor'" -s "h" -l "help" -d "Display help for command" # global
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -l "config" -xa "'(path)'" # global
complete -c "claude" -n "__fish_seen_subcommand_from 'gateway'" -s "h" -l "help" -d "Display help for command" # global
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "dry-run" -d "Show what would be imported without writing anything" # global
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -s "h" -l "help" -d "Display help for command" # global
complete -c "claude" -n "__fish_seen_subcommand_from 'import'" -l "yes" -d "Skip the interactive picker. On headless surfaces, pass --yes=<digest> from the `/import` preview." # global
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -l "force" -d "Force installation even if already installed" # global
complete -c "claude" -n "__fish_seen_subcommand_from 'install'" -s "h" -l "help" -d "Display help for command" # global
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp'" -s "h" -l "help" -d "Display help for command" # global
complete -f -c "claude" -n "__fish_seen_subcommand_path 'mcp'" -a "add" -d "Add an MCP server to Claude Code." # sub
complete -f -c "claude" -n "__fish_seen_subcommand_path 'mcp'" -a "add-from-claude-desktop" -d "Import MCP servers from Claude Desktop (Mac and WSL only)" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_path 'mcp'" -a "add-json" -d "Add an MCP server (stdio or SSE) with a JSON string" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_path 'mcp'" -a "get" -d "Get details about an MCP server. Unapproved .mcp.json servers are shown as ⏸ Pending approval and not connected to; approved servers are health-checked." # sub
complete -f -c "claude" -n "__fish_seen_subcommand_path 'mcp'" -a "help" -d "display help for command" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_path 'mcp'" -a "list" -d "List configured MCP servers. Unapproved .mcp.json servers are shown as ⏸ Pending approval and not connected to; approved servers are health-checked." # sub
complete -f -c "claude" -n "__fish_seen_subcommand_path 'mcp'" -a "login" -d "Authenticate with an MCP server (HTTP, SSE, or claude.ai connector)" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_path 'mcp'" -a "logout" -d "Clear stored OAuth credentials for an MCP server" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_path 'mcp'" -a "remove" -d "Remove an MCP server" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_path 'mcp'" -a "reset-project-choices" -d "Reset all approved and rejected project-scoped (.mcp.json) servers within this project" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_path 'mcp'" -a "serve" -d "Start the Claude Code MCP server" # sub
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp add'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp add-from-claude-desktop'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp add-json'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp get'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp help'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp list'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp login'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp logout'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp remove'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp reset-project-choices'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'mcp serve'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin'" -s "h" -l "help" -d "Display help for command" # global
complete -f -c "claude" -n "__fish_seen_subcommand_path 'plugin'" -a "details" -d "Show a plugin's component inventory and projected token cost" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_path 'plugin'" -a "disable" -d "Disable an enabled plugin" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_path 'plugin'" -a "enable" -d "Enable a disabled plugin" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_path 'plugin'" -a "eval" -d "Run eval cases (evals/**/case.yaml or evals/**/prompt.md + graders/*.md) against a plugin and report scored results. Target is a path, a plugin name, or a `plugin@marketplace` id — installed and skills-dir plugins both resolve (and add a no-plugin baseline arm)" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_path 'plugin'" -a "help" -d "display help for command" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_path 'plugin'" -a "initnew" -d "Scaffold a new plugin at ~/.claude/skills/<name>/ (auto-loads next session as <name>@skills-dir)" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_path 'plugin'" -a "installi" -d "Install a plugin from available marketplaces (use plugin@marketplace for specific marketplace)" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_path 'plugin'" -a "list" -d "List installed plugins" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_path 'plugin'" -a "marketplace" -d "Manage Claude Code marketplaces" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_path 'plugin'" -a "pruneautoremove" -d "Remove auto-installed dependencies that are no longer needed" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_path 'plugin'" -a "tag" -d "Create a {name}--v{version} git tag for a plugin release, validating that plugin.json and any enclosing marketplace entry agree" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_path 'plugin'" -a "uninstallremove" -d "Uninstall an installed plugin" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_path 'plugin'" -a "update" -d "Update a plugin to the latest version (restart required to apply)" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_path 'plugin'" -a "validate" -d "Validate a plugin or marketplace manifest, or the skills, agents, and commands in a directory" # sub
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin details'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin disable'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin enable'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin eval'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin help'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin initnew'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin installi'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin list'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin marketplace'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin pruneautoremove'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin tag'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin uninstallremove'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin update'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'plugin validate'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project'" -s "h" -l "help" -d "Display help for command" # global
complete -f -c "claude" -n "__fish_seen_subcommand_path 'project'" -a "help" -d "display help for command" # sub
complete -f -c "claude" -n "__fish_seen_subcommand_path 'project'" -a "purge" -d "Delete all Claude Code state for a project (transcripts, tasks, file history, config entry)" # sub
complete -c "claude" -n "__fish_seen_subcommand_from 'project help'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'project purge'" -s "h" -l "help" -d "Display help for command" # subcommands flags
complete -c "claude" -n "__fish_seen_subcommand_from 'setup-token'" -s "h" -l "help" -d "Display help for command" # global
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -s "h" -l "help" -d "Display help for command" # global
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "json" -d "Print the raw bugs.json payload instead of formatted findings" # global
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "no-post" -d "Do not post the findings to the PR (the default; accepted for parity with the /ultrareview and /code-review ultra flags)" # global
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "post" -d "Post the finished review's findings to the PR as you (PR targets only; one plain comment, not a review)" # global
complete -c "claude" -n "__fish_seen_subcommand_from 'ultrareview'" -l "timeout" # global
complete -c "claude" -n "__fish_seen_subcommand_from 'update'" -s "h" -l "help" -d "Display help for command" # global
