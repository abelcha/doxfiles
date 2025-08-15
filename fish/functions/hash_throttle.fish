function hash_throttle --argument-names dur
    test -z $argv[1]; and set dur 1ms
    set now (date +%s)000
    set pd (parse-duration $dur)
    #fset now pd
    set xdurr (math "$(parse-duration $dur) + 1")
    #fset xdurr
    math -s0 "$now / $xdurr"
    #echo math -s0 $now $xdurr
    #echo math -s0 "$now / ( $(duration $dur) +1 )" 
end
