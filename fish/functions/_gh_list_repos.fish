function _gh_list_repos
    bkt -- duckdb -list -c "from '/opt/datasets/repos.parquet' select concat(full_name,'"\t"', stargazers_count, ' ★ : ', deburr(description[:30]))  where stargazers_count>50 ORDER BY stargazers_count DESC"
end
