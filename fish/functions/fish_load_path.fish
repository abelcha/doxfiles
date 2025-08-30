function fish_load_path --argument-names path_file
    fish_add_path (command cat <? $path_file)
end
