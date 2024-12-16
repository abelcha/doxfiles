function sqlite_pick_table
    sqlite-utils tables $argv[1] --tsv --no-headers | gum choose
end
