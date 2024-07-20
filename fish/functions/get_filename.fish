function get_filename
    if test -d $argv[1]
        basename (realpath $argv[1])
    else
        basename $argv[1]
    end
end
