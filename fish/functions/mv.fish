function mv --wraps=uu-mv
    #echo ppp
    if not type -q uu-mv
        command mv $argv
    end
    if test (count $argv) -eq 1; and test -e "$argv[1]"
        set destdir (path dirname $argv[1])
        set basen (path basename $argv[1])
        set pstr (echo (set_color cyan)mv(set_color normal --dim) $argv[1] (set_color normal) "$(path dirname $argv[1])/" )
        read --local destraw --prompt-str "$pstr" --shell --command "$basen"; or echo "aborded..." && return
        set destname (string trim -c '' "$destraw")
        set destpath (path resolve "$destdir/$destname")
        dryrun mv \"$argv[1]\" \"$destpath\"
    else if type -q uu-mv
        uu-mv --interactive --progress --verbose $argv
    else
        command mv $argv
    end
end
