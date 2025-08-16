function rm
    if not type -q rm
        command rm $argv
    end
    if string match -rq '\-[frv]+' -- $argv
        command rm $argv
        return
    end
    if not type -q trash
        command rm -fr $argv
        return
    end
    if status is-interactive
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
