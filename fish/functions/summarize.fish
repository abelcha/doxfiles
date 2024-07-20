function summarize --wraps=duckdb
    #set _FLAG_n ouiiii
    #set -l _flag_n
    #set --prepend _FLAG_n -n 93
    #argparse 'n/num=!_validate_int --min 0 --max 100' -- $argv; or return
    #set -l -p _FLAG_num 99
    #set options $options (fish_opt --short=m --long=max --required-val -h )
    #echo "went throught |$_FLAG_n|$_FLAG_num|"
    set -l cmd "SELECT column_name, column_type, null_percentage as nullpx,approx_unique as a_uniq, round(avg::FLOAT, 2) AS avg, round(std::FLOAT, 2) as avg, round(q25::FLOAT, 2) as q25, rounD(q75::FLOAT, 2) as q75, count FROM (SUMMARIZE SELECT * FROM \"$argv[1]\" ) $argv[2]"
    duck $DUCK_DISPLAY $DD -c "$cmd"
end
