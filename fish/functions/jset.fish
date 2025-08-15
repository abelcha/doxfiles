function jset --wraps=jj
    set nkey (string split '.' -- $argv[1])
    set basekey $nkey[1]
    set rkey (string join '.' -- $nkey[2..])
    #echo "|$basekey|$$basekey"
    set newval (echo $$basekey |§ "{}" | jj -O $rkey -v $argv[2])
    #set -S newval
    #set -gx $basekey "$newval"
    #set -S abbr
end
