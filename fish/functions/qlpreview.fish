function qlpreview
    for i in (commandline -op)
        echo trying $i ...
        if test -f "$i"
            qlmanage -p "$i"
            return
        end
    end &| sponge /tmp/qlmanage.log
end
