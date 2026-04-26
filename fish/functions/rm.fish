function rm
    if not type -q rm
        command rm -fr $argv
    end
    if contains -- -fr $argv
        command rm $argv
        return
    end
    if not type -q trash
        command rm -fr $argv
        return
    end
    if status is-interactive
        if not test -e $argv[-1]
            echo2 (set_color red ) "'$argv[-1]' doesnt exists"(set_color normal )
            return
        end
        set cnt (find $argv -type f 2>/dev/null | head -n 101 | wc -l)
        if test $cnt -gt 100
            echo (set_color cyan --dim) Removing silently ...
            trash $argv
        else
            trash --verbose $argv
        end
    else
        command rm -fr $argv
    end
end
