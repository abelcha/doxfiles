#!/usr/bin/env fish
# Fish completion script for Helix editor

# set -l models (aichat --list-models|awk -F: { print \$2 })
# set -m roles (aichat --list-roles|awk -F: { print \$2 })
# set -m roles (aichat --list-roles|awk -F: { print \$2 })

complete -c aichat --no-files
complete -c aichat -s m -l model -x -a '(aichat --list-models)'
# complete -c aichat -s r -l role -x -a (echo $roles)
# complete -c aichat -s s -l session  -x -a (echo $session)
complete -c aichat -s e -l execute -d 'Execute commands using natural language'
complete -c aichat --force-files -s f -l file -d 'Attach files to the message to be sent'  -r
complete -c aichat -s c -l code -d 'Generate only code'
complete -c aichat -s H -l no-highlight -d 'Disable syntax highlighting'
complete -c aichat -s S -l no-stream -d 'No stream output'
complete -c aichat -s w -l wrap -d 'Specify the text-wrapping mode (no, auto, <max-width>)'
complete -c aichat -l light-theme -d 'Use light theme'
complete -c aichat -l dry-run -d 'Run in dry run mode'
complete -c aichat -l info -d 'Print related information'
complete -c aichat -l list-models -d 'List all available models'
complete -c aichat -l list-roles -d 'List all available roles' 
complete -c aichat -l list-sessions -d 'List all available sessions'
complete -c aichat -s h -l help -d 'Print help'
# complete -c aichat -n __fish_no_arguments -s V -l version -d 'Print version'

#     complete -c aichat -s m -l model -d 'Choose a LLM model'
#     complete -c aichat -s r -l role -d 'Choose a role'
#     complete -c aichat -s s -l session -d 'Create or reuse a session'
#     complete -c aichat -s e -l execute -d 'Execute commands using natural language' -x
#     complete -c aichat -s c -l code -d 'Generate only code' -x
#     complete -c aichat -s f -l file -d 'Attach files to the message to be sent' -a '(ls)' -r
#     complete -c aichat -s H -l no-highlight -d 'Disable syntax highlighting' -x
#     complete -c aichat -s S -l no-stream -d 'No stream output' -x
#     complete -c aichat -s w -l wrap -d 'Specify the text-wrapping mode (no, auto, <max-width>)'
#     complete -c aichat -l light-theme -d 'Use light theme' -x
#     complete -c aichat -l dry-run -d 'Run in dry run mode' -x
#     complete -c aichat -l info -d 'Print related information' -x
#     complete -c aichat -l list-models -d 'List all available models' -x
#     complete -c aichat -l list-roles -d 'List all available roles' -x
#     complete -c aichat -l list-sessions -d 'List all available sessions' -x

# complete -c aichat -s h -l help -d "Prints help information"
# complete -c hx -l tutor -d "Loads the tutorial"
# complete -c hx -l health -x -a "$langs" -d "Checks for errors in editor setup"
# complete -c hx -s g -l grammar -x -a "fetch build" -d "Fetches or builds tree-sitter grammars"
# complete -c hx -s v -o vv -o vvv -d "Increases logging verbosity"
# complete -c hx -s V -l version -d "Prints version information"
# complete -c hx -l vsplit -d "Splits all given files vertically into different windows"
# complete -c hx -l hsplit -d "Splits all given files horizontally into different windows"
# complete -c hx -s c -l config -r -d "Specifies a file to use for completion"
# complete -c hx -l log -r -d "Specifies a file to write log data into"


# function _aichat_completions
#     # Define completions for your CLI tool named `aichat`

#     # Global options
#     complete -c aichat -s m -l model -d 'Choose a LLM model'
#     complete -c aichat -s r -l role -d 'Choose a role'
#     complete -c aichat -s s -l session -d 'Create or reuse a session'
#     complete -c aichat -s e -l execute -d 'Execute commands using natural language' -x
#     complete -c aichat -s c -l code -d 'Generate only code' -x
#     complete -c aichat -s f -l file -d 'Attach files to the message to be sent' -a '(ls)' -r
#     complete -c aichat -s H -l no-highlight -d 'Disable syntax highlighting' -x
#     complete -c aichat -s S -l no-stream -d 'No stream output' -x
#     complete -c aichat -s w -l wrap -d 'Specify the text-wrapping mode (no, auto, <max-width>)'
#     complete -c aichat -l light-theme -d 'Use light theme' -x
#     complete -c aichat -l dry-run -d 'Run in dry run mode' -x
#     complete -c aichat -l info -d 'Print related information' -x
#     complete -c aichat -l list-models -d 'List all available models' -x
#     complete -c aichat -l list-roles -d 'List all available roles' -x
#     complete -c aichat -l list-sessions -d 'List all available sessions' -x

#     # The trailing arguments (text)
#     # complete -c aichat -f
# end

# # Register the completions function to be invoked when the shell interacts with your CLI tool
# complete -F _aichat_completions aichat