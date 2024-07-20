function duck --wraps=duckdb\ -c\ \'.maxrows\ 100\;\' --description alias\ duck=duckdb\ -c\ \'.maxrows\ 100\;\'
    if not isatty 1
        #echo ISATYYYYYYY
        set output -csv
    end
    duckdb $output -c '.maxrows 100;' $argv

end
