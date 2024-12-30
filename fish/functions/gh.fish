function gh --wraps=rg
    GH_TOKEN=$GITHUB_TOKEN command gh $argv
end
