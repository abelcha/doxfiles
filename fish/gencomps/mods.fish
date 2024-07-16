

complete -c mods -s M -l ask-model -d 'Ask which model to use with an interactive prompt.'
complete -c mods -s a -l api -d 'OpenAI compatible REST API (openai, localai).'
complete -c mods -s x -l http-proxy -d 'HTTP proxy to use for API requests.'
complete -c mods -s f -l format -d 'Ask for the response to be formatted as markdown unless otherwise set.'
complete -c mods -l format-as
complete -c mods -s r -l raw -d 'Render output as raw text when connected to a TTY.'
complete -c mods -s P -l prompt -d 'Include the prompt from the arguments and stdin, truncate stdin to specified number of lines.'
complete -c mods -s p -l prompt-args -d 'Include the prompt from the arguments in the response.'
complete -c mods -s c -l continue -d 'Continue from the last response or a given save title.'
complete -c mods -s C -l continue-last -d 'Continue from the last response.'
complete -c mods -s l -l list -d 'Lists saved conversations.'
complete -c mods -s t -l title -d 'Saves the current conversation with the given title.'
complete -c mods -s d -l delete -d 'Deletes a saved conversation with the given title or ID.'
complete -c mods -l delete-older-than -d 'Deletes all saved conversations older than the specified duration. Valid units are: ns, us, µs, μs, ms, s, m, h, d, w, mo, and y.'
complete -c mods -s s -l show -d 'Show a saved conversation with the given title or ID.'
complete -c mods -s S -l show-last -d 'Show the last saved conversation.'
complete -c mods -s q -l quiet -d 'Quiet mode (hide the spinner while loading and stderr messages for success).'
complete -c mods -s h -l help -d 'Show help and exit.'
complete -c mods -n __fish_no_arguments -s v -l version -d 'Show version and exit.'
complete -c mods -l max-retries -d 'Maximum number of times to retry API calls.'
complete -c mods -l no-limit -d 'Turn off the client-side limit on the size of the input into the model.'
complete -c mods -l max-tokens -d 'Maximum number of tokens in response.'
complete -c mods -l word-wrap -d 'Wrap formatted output at specific width (default is 80)'
complete -c mods -l temp -d 'Temperature (randomness) of results, from 0.0 to 2.0.'
complete -c mods -l stop -d 'Up to 4 sequences where the API will stop generating further tokens.'
complete -c mods -l topp -d 'TopP, an alternative to temperature that narrows response, from 0.0 to 1.0.'
complete -c mods -l fanciness -d 'Your desired level of fanciness.'
complete -c mods -l status-text -d 'Text to show while generating.'
complete -c mods -l no-cache -d 'Disables caching of the prompt/response.'
complete -c mods -l reset-settings -d 'Backup your old settings file and reset everything to the defaults.'
complete -c mods -l settings -d 'Open settings in your $EDITOR.'
complete -c mods -l dirs -d 'Print the directories in which mods store its data'
complete -c mods -l role -d 'System role to use.'

complete -c mods -s m -l model -d 'Default model' -x -a '(_mods_list_models)'