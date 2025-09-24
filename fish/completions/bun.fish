source /opt/homebrew/share/fish/vendor_completions.d/bun.fish

function __cursor_token_match_file_path
    string match -q -- '*/*' (commandline -t | string collect)
end

complete -c bun -n __cursor_token_match_file_path --force-files
