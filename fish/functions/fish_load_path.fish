function fish_load_path -a path_file
    fish_add_path (command cat <? $path_file)
end
