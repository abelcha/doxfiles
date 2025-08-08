function rm
    #argparse -i f/force r/recursive -- $argv
    #if set --query _flag_f
    #urm -rf -v $argv
    #return
    #end
    #if string match --regex --quiet node_modules -- "$argv"
    #/bin/rm -fr $argv
    #return
    #
    if not type -q rm 
        command rm $argv
    end
    if string match -rq '\-[frv]+' -- $argv
        /bin/rm $argv
        return
    end
    if status is-interactive
        #echo interactiiiiive
        set cnt (find $argv -type f 2>/dev/null | head -n 101 | wc -l)
        #fset cnt
        if test $cnt -gt 100
            echo (set_color cyan --dim) Removing silently ...
            trash $argv
        else
            trash --verbose $argv
        end
    else
        #echo noninterrrrrr
        /bin/rm $argv
    end
end
