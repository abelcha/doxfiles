function taz --wraps=pzstd
    if test -f $argv[1]
        
        zstd --fast --rm $argv[1]
        return
    end
    # pv $argv[1] | tar -c - |
    # pakz $argv[1]
    #    tar -c - | pzstd -o $argv[1].tzst $argv[2..] && trash $argv[1]
    # tar -cf '$argv[1].tar' $argv[1] && pzstdc  $argv[1..] --
    #  tar cf - $argv[1] | pv -s (command gdu -sb $argv[1] | cut -f 1) -N (get_filename $argv[1]).tzst | pzstd $argv[1..] >(get_filename $argv[1]).tzst
    # tcar -c - $argv[1] | pzstd $argv[1..] && trash $argv[1]
    # comp tar.zst $argv && trash $argv
    if type -q aarpack
        aarpack compress --rm $argv
    else
        set p (path normalize "$argv[1]" )
        ouch compress --fast "$p" "$p.tar.zst" && rm "$p"
    end
    
end
