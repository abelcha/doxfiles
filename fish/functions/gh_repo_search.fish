function gh_repo_search
    gh search repos  --json 'fullName,description' --stars '>100'  --jq '.[] |.fullName+"\\t"+.description'  -- $argv[1]|/bin/cat 
end
