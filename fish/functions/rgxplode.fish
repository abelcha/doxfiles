function rgxplode
    set file
    for i in $argv
        test -f "$i"; and set file $i
    end
    set base (path basename --no-extension $file)
    rg $argv >"$base.ok.txt"
    set --append argv -v
    rg $argv >"$base.ko.txt"
    #fset file
end
