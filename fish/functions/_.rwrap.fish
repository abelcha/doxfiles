function _.rwrap
    read in
    #echo "zaa |$in|"
    #set -S in
    set -l rtn $argv
    for i in (string match --groups-only -ar '\{(.*?(:.:)?)\}' -- $argv )
        if test -z "$in"
            return -4
        end
        #echo looop $i == $a
        #h1 $i
        if test -z "$i"
            set rtn (string replace "{}" "$in" -- "$rtn")
            continue
        end
        set spl (string split ':' -- "$i")
        set index (echo $spl[1] |§ "1..")
        set delimiter (echo $spl[2] |§ ' ')
        set newspl (string split "$delimiter" -- "$in")
        set newtext $newspl[$index]
        #set -S newspl newtext delimiter index
        #echo string replace "{$i}" "$newtext" -- "$rtn"
        set rtn (string replace "{$i}" "$newtext" -- "$rtn")
        #echo "==> $rtn"
        #echo "tottl=$spl == index: $index delim: $delimiter"
        #string replace "{}" "$in" -- "$argv[1]"
    end
    
    for expr in (string match --groups-only -ar '\<\((?<captured>.+?)\)\>' -- "$rtn")
        #fset expr
        set res (eval $expr)
        #fset res expr
        set rtn (string replace "<($expr)>" "$res" -- "$rtn")
    end
    echo $rtn
end
