function copy
    if command -q pbcopy
        command pbcopy $argv
    else
        fish_clipboard_copy $argv
    end
end
