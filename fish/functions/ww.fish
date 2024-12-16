function ww --wraps='type '
        set resfunc (functions -q -D $argv[1] | grep -v n/a)
        if [ "$resfunc" = \- ]
                rg --files-with-matches "(function|alias)\s$argv[1]" /opt/c/fish/conf.d/
        else if test -n "$resfunc"
                echo (set_color magenta) (anon $resfunc) (set_color normal )
        end
        echo '============='
        set --path uniquepaths
        for file in (command which -a "$argv[1]") #   | /me/abin/map "realpath %" | sort -u)
                set source $file
                set realsource (realpath $source)
                set rasource (anon $realsource)
                set asource (anon $source)
                if contains $uniquepaths "$realsource"
                        #echo (set_color --dim )"duplicate $asource\t$source\t$realsource"(set_color normal )
                        continue
                end
                set --append uniquepaths "$realsource"
                if test -L $source #; and [ $file != $asource ]
                        echo $asource " -> "(set_color brcyan )$rasource" $(set_color  --dim ) #($(file -b $source))"
                else if test -e "$file"
                        echo (set_color --bold normal )"$asource" # $(set_color  --dim )($(file -b $source))"
                end
        end
end
