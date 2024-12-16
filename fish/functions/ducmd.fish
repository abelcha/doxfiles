function ducmd
    set -l tempfile (mktemp)
    /bin/cat - >$tempfile

    if string match -q -r '^[\{\[]' -- "$(head -n 1 $tempfile)"
        echo $fl | /bin/cat - | duckdb -cmd "CREATE TABLE temp AS (SELECT * FROM read_json('$tempfile'))"
    else
        echo $fl | /bin/cat | duckdb -cmd "CREATE TABLE temp AS (SELECT * FROM read_csv('$tempfile'))"
        #set -l cmd "FROM '$argv[1]' $args"
    end
end
