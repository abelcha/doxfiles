function _gh_list_repos
    set tmpfile (gmktemp)
    duckdb -init "" --list -separator \t -c '.headers off' -c "FROM '/me/dev/fsimrep/repos.parquet' select full_name, concat(stargazers_count, '⭐︎', left(description, 30)) WHERE stargazers_count>100 AND name ILIKE '$argv[1]%'" | tee $tmpfile
    if test (wcl < $tmpfile) -lt 1
        echo (gh search repos --json 'fullName,description' --stars '>100' --jq '.[] |.fullName+"\\t"+.description' -- $argv[1]|string collect )
    end
end
