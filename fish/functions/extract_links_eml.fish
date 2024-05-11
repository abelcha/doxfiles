function extract_links_eml
    cat $argv | pup 'a json{}'
end
