function _reload_fish
    set cmd (commandline -o)
    history save
    #history merge
    echo
    hr -
    fish
    history merge
    commandline -i repaint
end
