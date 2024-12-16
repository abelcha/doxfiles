function mi --wraps=hx --description 'alias mi hx'
    if test -e "$argv[1]"; and not test -w "$argv[1]"
        if gum confirm "$argv[1] not writeable run with sudo ?"
            sudo hx $argv
            return
        end

    end
    hx $argv

end
