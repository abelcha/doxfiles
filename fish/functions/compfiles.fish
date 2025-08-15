function compfiles --wraps=type
    fd "^$argv[1].fish" $fish_complete_path
    
end
