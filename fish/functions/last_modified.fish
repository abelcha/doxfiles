function last_modified
    echo (ls -l1 -t -r $argv)[-1]
end
