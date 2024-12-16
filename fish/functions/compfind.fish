function compfind --wraps='compfiles |skp --query ' --wraps=sk
        #bfs (compfiles) | sk
    
        set results (bfs (compfiles \*) | sk --preview '_fzf_preview_file {1}'  --select-1 --query "$argv.fish\$")
    
        commandline_insert $results
end
