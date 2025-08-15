function wcl
    #set -l ext (get_ext $argv[1])
    #if string match -r '\.parquet$' -- $argv[1]
    if test -n "$argv[1]"; and test -d "$argv[1]"
        ls -l1 $argv[1] | wc -l
        #echo oo
        wc -l $argv | choose 0
    end
end
