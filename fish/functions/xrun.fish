function xrun
    for i in (seq 0 25 )
        set query "CREATE TABLE final as  (select * REPLACE (unnest(formality,  max_depth := 2) AS  formality) from read_json('/Volumes/done/stock_000$i**.json',records=auto,union_by_name=true) WHERE formality.content.natureCessation IS NULL
· );"
        echo $query
    end
end
