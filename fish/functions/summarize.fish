function summarize --wraps=duckdb
    test -e $argv[1]; and set argv[1] "\"$argv[1]\""
    set -l cmd "SELECT column_name, column_type, null_percentage as nullpx,approx_unique as a_uniq, round(avg::FLOAT, 2) AS avg, round(std::FLOAT, 2) as avg, q25,  q75, count FROM (SUMMARIZE SELECT * FROM $argv[1] ) $argv[2]"
    duck $DUCK_DISPLAY $DD -c "$cmd"
end
