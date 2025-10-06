function hr
    if test -z "$argv[1]"
        string repeat -n (colwidth) '#' > /dev/stderr 
    else
        set -l psize (math floor (colwidth) / (string length --visible $argv[1]))
        string repeat -n $psize $argv[1] > /dev/stderr 
    end
end
