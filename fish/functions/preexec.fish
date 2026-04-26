function preexec --on-event fish_preexec
    if test -d . 
        return 
    end
    if test -d (path resolve .)
        fexec (path resolve .)
    else
        echo (set_color red )'❌ '(set_color white --dim )'DIR REMOVED'(set_color normal )
    end
    echo (set_color normal )
end
