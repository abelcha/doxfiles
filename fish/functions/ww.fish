function ww --wraps='type '
    args --init $argv
    set wargs (args --words)
    #echo "AAAA $(args 1 )"
    set resfunc (functions -q -D $wargs | grep -v n/a)
    if [ "$resfunc" = \- ]
        rg --files-with-matches "(function|alias)\s$wargs" /opt/c/fish/conf.d/
    else if test -n "$resfunc"
        echo (set_color magenta) (anon $resfunc) (set_color normal )
    end
    echo '============='
    #return
    set --path uniquepaths
    for file in (command which -a $wargs) #   | /me/abin/map "realpath %" | sort -u)
        set source $file
        set realsource (realpath $source)
        set rasource (anon $realsource)
        set asource (anon $source)
        if contains $uniquepaths "$realsource"
            #echo (set_color --dim )"duplicate $asource\t$source\t$realsource"(set_color normal )
            continue
        end
        set --append uniquepaths "$realsource"
        #if args --has v/version
        #if args --has
        if args v/version
            set vers (args v/version --format "[<(wv $asource --only-matching)>]")
        end
        if test -L $source #; and [ $file != $asource ]
            echo $asource $vers " -> "(set_color brcyan )$rasource" $(set_color  --dim ) #($(file -b $source))"(set_color normal)
        else if test -e "$file"
            echo (set_color --bold normal )"$asource" $vers # $(set_color  --dim )($(file -b $source))
        end
    end
end
