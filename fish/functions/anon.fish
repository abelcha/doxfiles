function anon

    if isatty stdin
        echo $argv | sd '/Users/a\w{9}r' /me | sd /opt/a /me
    else
        /bin/cat - | sd '/Users/a\w{9}r' /me | sd /opt/a /me
    end
end
