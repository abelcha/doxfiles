source "/opt/homebrew/share/fish/vendor_completions.d/fd.fish"

complete --command fd -s x -l exec -x -a '(__fish_complete_command)'
