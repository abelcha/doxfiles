function mi --wraps=hx

    if test -e "$argv[1]"; and not test -w "$argv[1]"
        echo $argv[1] is not writeable:
        command sudo $EDITOR $argv
    else
        command $EDITOR $argv
    end
end
