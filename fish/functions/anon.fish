function anon

    if isatty stdin
        echo $argv | sd '/Users/a\w+[lr]' /me | sd /opt/a /me |string replace -r '/Volumes/(datasets|mods|datalake)' '/$1' --
    else
        command cat - | sd '/Users/a\w+[lr]' /me | sd /opt/a /me|string replace -r '/Volumes/(datasets|mods|datalake)' '/$1' --
    end
end
