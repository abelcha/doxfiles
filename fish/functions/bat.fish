function bat
    if isatty
        command bat $argv
    else
        command bat --style full --decorations always $argv
    end
end
