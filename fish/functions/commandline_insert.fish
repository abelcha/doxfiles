function commandline_insert
    for result in $argv

        commandline -it -- " $(string escape $result)"
        #commandline -it -- " "
    end
    commandline -f repaint
    commandline --cursor 0
end
