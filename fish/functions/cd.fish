function cd --description 'Change directory'
 if  test -d "$argv[1]"
    __cd $argv
    else
# if current dir name is same as $argv[1]
    set current_dir (basename (pwd))
    set target_dir (basename $argv[1])
    if test "$current_dir" = "$target_dir"
        echo2 (set_color --dim) "Already in directory: $current_dir"
    else
        __cd $argv
    end
    end
end
