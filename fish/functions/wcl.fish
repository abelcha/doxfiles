function wcl
    #set -l ext (get_ext $argv[1])
    #if string match -r '\.parquet$' -- $argv[1]
    if endsWith $argv[1] '.parquet'
        #echo yy
        pqrs row-count $argv[1]
    else
        #echo oo
        wc -l $argv | choose 0
    end
end
