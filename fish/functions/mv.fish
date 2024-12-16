function mv --wraps='advmv -gi' --wraps=umv
    #echo ppp
    if test (count $argv) -eq 1; and test -e "$argv[1]"
        #echo uuu
        set destdir (path dirname $argv[1])
        set basen (path basename $argv[1])
        set pstr (echo (set_color cyan)mv(set_color normal --dim) $argv[1] (set_color normal) "$(path dirname $argv[1])/" )
        read --local destname --prompt-str "$pstr" --shell --command "$basen"; or echo "aborded..." && return
        dryrun mv \"$argv[1]\" "$(path resolve "$destdir/$(string trim -c '' "$destname")")"
    else
        umv --interactive --progress --verbose $argv
    end
end
