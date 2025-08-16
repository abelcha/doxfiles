function _gh_list_repos
    bkt -- duckdb -list -c "from '/datasets/repos.parquet' select concat(repo,'"\t"', description[:30])"
end
