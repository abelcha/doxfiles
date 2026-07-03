function __pi_complete_models
    bun ~/.config/fish/pi-models.mjs 2>/dev/null
end

function __pi_thinking_levels
    echo -e "off\tNo thinking"
    echo -e "minimal\tBare minimum"
    echo -e "low\tLow effort"
    echo -e "medium\tBalanced"
    echo -e "high\tStrong reasoning"
    echo -e "xhigh\tMaximum effort"
end

complete -c pi -l provider -d '<name> Provider name (default: google)' -r -f -a "(__pi_complete_models | cut -d/ -f1 | sort -u)"
complete -c pi -l model -d '<pattern> Model pattern or ID (supports "provider/id" and optional ":<thinking>")' -r -f -a "(__pi_complete_models)"
complete -c pi -l api-key -d '<key> API key (defaults to env vars)'
complete -c pi -l system-prompt -d '<text> System prompt (default: coding assistant prompt)'
complete -c pi -l append-system-prompt -d '<text> Append text or file contents to the system prompt (can be used multiple times)'
complete -c pi -l mode -d '<mode> Output mode: text (default), json, or rpc'
complete -c pi -s p -l print -d 'Non-interactive mode: process prompt and exit'
complete -c pi -s c -l continue -d 'Continue previous session'
complete -c pi -s r -l resume -d 'Select a session to resume'
complete -c pi -l session -d '<path|id> Use specific session file or partial UUID'
complete -c pi -l session-id -d '<id> Use exact project session ID, creating it if missing'
complete -c pi -l fork -d '<path|id> Fork specific session file or partial UUID into a new session'
complete -c pi -l session-dir -d '<dir> Directory for session storage and lookup'
complete -c pi -l no-session -d "Don't save session (ephemeral)"
complete -c pi -s n -l name -d '<name> Set session display name'
complete -c pi -l models -d '<patterns> Comma-separated model patterns for Ctrl+P cycling'
complete -c pi -s t -l tools -d '<tools> Comma-separated allowlist of tool names to enable'
complete -c pi -l thinking -d '<level> Set thinking level' -r -f -a "(__pi_thinking_levels)"
complete -c pi -s e -l extension -d '<path> Load an extension file (can be used multiple times)'
complete -c pi -l skill -d '<path> Load a skill file or directory (can be used multiple times)'
complete -c pi -l prompt-template -d '<path> Load a prompt template file or directory (can be used multiple times)'
complete -c pi -l theme -d '<path> Load a theme file or directory (can be used multiple times)'
complete -c pi -l no-themes -d 'Disable theme discovery and loading'
complete -c pi -l export -d '<file> Export session file to HTML and exit'
complete -c pi -l list-models -d '[search] List available models (with optional fuzzy search)'
complete -c pi -l verbose -d 'Force verbose startup (overrides quietStartup setting)'
complete -c pi -s a -l approve -d 'Trust project-local files for this run'
complete -c pi -l offline -d 'Disable startup network operations (same as PI_OFFLINE=1)'
complete -c pi -s h -l help -d 'Show this help'
complete -c pi -n __fish_no_arguments -s v -l version -d 'Show version number'
