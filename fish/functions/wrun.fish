function wrun
     
    if string match -qr '\.test\.' -- "$argv"
        fexec bun --watch test $argv
    else
        fexec bun --watch run $argv
    end
end
