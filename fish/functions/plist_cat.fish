function plist_cat --wraps=catplist
    echo (catplist --format json $argv )[2]
end
