function hrtime --argument ts level
    #return
    test $ts -gt 1000000; and echo ( math -s3 "$ts/(10^9)") " s"

    #set levelValues
    #set -l notation µs ms s m h
    #set v ()
    #set -l m (math "ceil(log10($ts)/3)")
    #if test $m -eq 1
    #echo (math -s2 "$ts/(10^(3 x $m - 2))") $notation[$m]
    #for i in µ ms s m
    #echo $i
    #end
    #test $ts -gt 1000;hr
    #set -l notation µs ms s m h
    #set -l depth 1000 1000 1000 60 60
    #test -gt $a 1100

    #test $argv[1] -lt 1000; and µ; or 42
    #end)
    #else if test "$argv[]"
    #end
    # 0 -> 1000 nano 
    # 1 -> 1000 milli
    # 2 -> 1000 sec
    # 3 -> 60 minutes
    # 4 -> 60 hour
    #set -l
end
