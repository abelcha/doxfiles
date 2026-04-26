function lastedited
    date -r $(stat -f %m $argv ) "+%Y-%m-%dT%H:%M:%SZ"
end
