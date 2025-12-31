function __cursor_token_match_file_path
    string match -q -- '*/*' (commandline -t | string collect)
end
