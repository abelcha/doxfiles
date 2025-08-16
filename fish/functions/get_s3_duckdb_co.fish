function get_s3_duckdb_co --argument-names uri
    set prov (string split ':' -f1 -- "$uri")
    if test -z "$prov"; or contains $prov "" https http s3
        return -1
    end
    rclone config show $prov | rg '(region|secret_access_key|access_key_id|endpoint)\s=\s(.+)' -r 'SET s3_$1 = \'$2\' ;' && echo "SET s3_url_style='path';"
end
