function uniqby
    while read -l line l
        set cmd (string replace '{}' "$line" "$argv" )
        echo (set_color --dim ) $cmd
    end
end
