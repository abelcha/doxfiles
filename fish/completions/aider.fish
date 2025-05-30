complete -c aider -s h -l help -d 'show this help message and exit'
complete -c aider -l model -d 'MODEL         Specify the model to use for the main chat [env var:'
complete -c aider -l opus -d 'Use claude-3-opus-20240229 model for the main chat'
complete -c aider -l sonnet -d 'Use claude-3-5-sonnet-20241022 model for the main chat'
complete -c aider -l haiku -d 'Use claude-3-5-haiku-20241022 model for the main chat'
complete -c aider -l 4o -d 'Use gpt-4o model for the main chat [env var: AIDER_4O]'
complete -c aider -l mini -d 'Use gpt-4o-mini model for the main chat [env var:'
complete -c aider -l 4-turbo -d 'Use gpt-4-1106-preview model for the main chat [env'
complete -c aider -l deepseek -d 'Use deepseek/deepseek-chat model for the main chat'
complete -c aider -l o1-mini -d 'Use o1-mini model for the main chat [env var:'
complete -c aider -l o1-preview -d 'Use o1-preview model for the main chat [env var:'
complete -c aider -l openai-api-key -d OPENAI_API_KEY
complete -c aider -l anthropic-api-key -d ANTHROPIC_API_KEY
complete -c aider -l openai-api-base -d OPENAI_API_BASE
complete -c aider -l openai-api-type -d OPENAI_API_TYPE
complete -c aider -l openai-api-version -d OPENAI_API_VERSION
complete -c aider -l openai-api-deployment-id -d OPENAI_API_DEPLOYMENT_ID
complete -c aider -l openai-organization-id -d OPENAI_ORGANIZATION_ID
complete -c aider -l set-env -d ENV_VAR_NAME=value
complete -c aider -l api-key -d PROVIDER=KEY
complete -c aider -l list-models -d 'MODEL, --models MODEL'
complete -c aider -l model-settings-file -d MODEL_SETTINGS_FILE
complete -c aider -l model-metadata-file -d MODEL_METADATA_FILE
complete -c aider -l alias -d 'ALIAS:MODEL   Add a model alias (can be used multiple times) [env'
complete -c aider -l timeout -d 'TIMEOUT     Timeout in seconds for API calls (default: None) [env'
complete -c aider -l edit-format -d 'EDIT_FORMAT, --chat-mode EDIT_FORMAT'
complete -c aider -l architect -d 'Use architect edit format for the main chat [env var:'
complete -c aider -l weak-model -d WEAK_MODEL
complete -c aider -l editor-model -d EDITOR_MODEL
complete -c aider -l editor-edit-format -d EDITOR_EDIT_FORMAT
complete -c aider -l max-chat-history-tokens -d MAX_CHAT_HISTORY_TOKENS
complete -c aider -l cache-keepalive-pings -d CACHE_KEEPALIVE_PINGS
complete -c aider -l map-tokens -d MAP_TOKENS
complete -c aider -l map-refresh -d '{auto,always,files,manual}'
complete -c aider -l map-multiplier-no-files -d MAP_MULTIPLIER_NO_FILES
complete -c aider -l input-history-file -d INPUT_HISTORY_FILE
complete -c aider -l chat-history-file -d CHAT_HISTORY_FILE
complete -c aider -l llm-history-file -d LLM_HISTORY_FILE
complete -c aider -l dark-mode -d 'Use colors suitable for a dark terminal background'
complete -c aider -l light-mode -d 'Use colors suitable for a light terminal background'
complete -c aider -l user-input-color -d USER_INPUT_COLOR
complete -c aider -l tool-output-color -d TOOL_OUTPUT_COLOR
complete -c aider -l tool-error-color -d TOOL_ERROR_COLOR
complete -c aider -l tool-warning-color -d TOOL_WARNING_COLOR
complete -c aider -l assistant-output-color -d ASSISTANT_OUTPUT_COLOR
complete -c aider -l completion-menu-color -d COLOR
complete -c aider -l completion-menu-bg-color -d COLOR
complete -c aider -l completion-menu-current-color -d COLOR
complete -c aider -l completion-menu-current-bg-color -d COLOR
complete -c aider -l code-theme -d CODE_THEME
complete -c aider -l show-diffs -d 'Show diffs when committing changes (default: False)'
complete -c aider -l aiderignore -d AIDERIGNORE
complete -c aider -l subtree-only -d 'Only consider files in the current subtree of the git'
complete -c aider -l commit -d 'Commit all pending changes with a suitable commit'
complete -c aider -l commit-prompt -d PROMPT
complete -c aider -l lint -d 'Lint and fix provided files, or dirty files if none'
complete -c aider -l lint-cmd -d 'LINT_CMD   Specify lint commands to run for different languages,'
complete -c aider -l test-cmd -d 'TEST_CMD   Specify command to run tests [env var: AIDER_TEST_CMD]'
complete -c aider -l test -d 'Run tests, fix problems found and then exit [env var:'
complete -c aider -l analytics-log -d ANALYTICS_LOG_FILE
complete -c aider -l analytics-disable -d 'Permanently disable analytics [env var:'
complete -c aider -l just-check-update -d 'Check for updates and return status in the exit code'
complete -c aider -n __fish_no_arguments -l version -d 'Show the version number and exit'
complete -c aider -l message -d 'COMMAND, --msg COMMAND, -m COMMAND'
complete -c aider -l message-file -d 'MESSAGE_FILE, -f MESSAGE_FILE'
complete -c aider -l apply -d 'FILE          Apply the changes from the given file instead of'
complete -c aider -l exit -d 'Do all startup activities then exit before accepting'
complete -c aider -l show-repo-map -d 'Print the repo map and exit (debug) [env var:'
complete -c aider -l show-prompts -d 'Print the system prompts and exit (debug) [env var:'
complete -c aider -l voice-format -d VOICE_FORMAT
complete -c aider -l voice-language -d VOICE_LANGUAGE
complete -c aider -l voice-input-device -d VOICE_INPUT_DEVICE
complete -c aider -l file -d 'FILE           specify a file to edit (can be used multiple times)'
complete -c aider -l read -d 'FILE           specify a read-only file (can be used multiple times)'
complete -c aider -l vim -d 'Use VI editing mode in the terminal (default: False)'
complete -c aider -l chat-language -d CHAT_LANGUAGE
complete -c aider -l yes-always -d 'Always say yes to every confirmation [env var:'
complete -c aider -s v -l verbose -d 'Enable verbose output [env var: AIDER_VERBOSE]'
complete -c aider -l load -d 'LOAD_FILE      Load and execute /commands from a file on launch [env'
complete -c aider -l encoding -d 'ENCODING   Specify the encoding for input and output (default:'
complete -c aider -l line-endings -d '{platform,lf,crlf}'
complete -c aider -s c -d 'CONFIG_FILE, --config CONFIG_FILE'
complete -c aider -l env-file -d 'ENV_FILE   Specify the .env file to load (default: .env in git'
complete -c aider -l editor -d 'EDITOR       Specify which editor to use for the /editor command'
