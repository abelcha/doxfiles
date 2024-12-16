complete -c aider -s h -l help -d 'show this help message and exit'
complete -c aider -l openai-api-key -d OPENAI_API_KEY
complete -c aider -l model -d 'MODEL         Specify the model to use for the main chat (default:'
complete -c aider -l skip-model-availability-check -d SKIP_MODEL_AVAILABILITY_CHECK
complete -c aider -l voice-language -d VOICE_LANGUAGE
complete -c aider -l openai-api-base -d OPENAI_API_BASE
complete -c aider -l openai-api-type -d OPENAI_API_TYPE
complete -c aider -l openai-api-version -d OPENAI_API_VERSION
complete -c aider -l openai-api-deployment-id -d OPENAI_API_DEPLOYMENT_ID
complete -c aider -l openai-organization-id -d OPENAI_ORGANIZATION_ID
complete -c aider -l openrouter -d 'Specify the api base url as'
complete -c aider -l edit-format -d EDIT_FORMAT
complete -c aider -l map-tokens -d MAP_TOKENS
complete -c aider -l input-history-file -d INPUT_HISTORY_FILE
complete -c aider -l chat-history-file -d CHAT_HISTORY_FILE
complete -c aider -l dark-mode -d 'Use colors suitable for a dark terminal background'
complete -c aider -l light-mode -d 'Use colors suitable for a light terminal background'
complete -c aider -l user-input-color -d USER_INPUT_COLOR
complete -c aider -l tool-output-color -d TOOL_OUTPUT_COLOR
complete -c aider -l tool-error-color -d TOOL_ERROR_COLOR
complete -c aider -l assistant-output-color -d ASSISTANT_OUTPUT_COLOR
complete -c aider -l code-theme -d CODE_THEME
complete -c aider -l show-diffs -d 'Show diffs when committing changes (default: False)'
complete -c aider -l aiderignore -d AIDERIGNORE
complete -c aider -l commit -d 'Commit all pending changes with a suitable commit'
complete -c aider -n __fish_no_arguments -l version -d 'Show the version number and exit'
complete -c aider -l check-update -d 'Check for updates and return status in the exit code'
complete -c aider -l skip-check-update -d 'Skips checking for the update when the program runs'
complete -c aider -l apply -d 'FILE          Apply the changes from the given file instead of'
complete -c aider -l yes -d 'Always say yes to every confirmation [env var:'
complete -c aider -s v -l verbose -d 'Enable verbose output [env var: AIDER_VERBOSE]'
complete -c aider -l show-repo-map -d 'Print the repo map and exit (debug) [env var:'
complete -c aider -l message -d 'COMMAND, --msg COMMAND, -m COMMAND'
complete -c aider -l message-file -d 'MESSAGE_FILE, -f MESSAGE_FILE'
complete -c aider -l encoding -d 'ENCODING   Specify the encoding for input and output (default:'
complete -c aider -s c -d 'CONFIG_FILE, --config CONFIG_FILE'
