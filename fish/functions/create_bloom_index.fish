function create_bloom_index --argument database dsid id fpath rowcount
    hr
    set -l destpath "bloom/$dsid.bloom.index"
    bloom create $destpath -n $rowcount -p 0.001
    #from $fpath select DISTINCT $id
    echo "creating $destpath"
    sqlite-utils query "$database" "select link_id from records WHERE dsid='$dsid'" --csv | bloom insert $destpath
    echo OK
    #echo "results insertion: "
    #gcat1 "/tmp/$dsid.real.csv" | gshuf | sd 8 6 | bloom check $destpath >"/tmp/$dsid.results.csv"
    #echo (wcl /tmp/$dsid.results.csv)"resultats sur $rowcount"
    #duckdb -c "select ratio(total, checked), * FROM (select  count(*) as total, count(*) FILTER(COLUMNS(*) IN (SELECT * FROM read_csv('/tmp/$dsid.real.csv', all_varchar=true))) as checked FROM read_csv('/tmp/$dsid.results.csv', all_varchar=true))"
end
