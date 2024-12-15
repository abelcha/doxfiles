function _reload_fish
    set cmd (commandline -o)
    #history save
    #history merge
    echo
    echo
    hr "¸.·´¯`·.¸><((((º>  "
    echo
    exec fish
    history merge
    commandline -i repaint
end
