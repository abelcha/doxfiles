function compfind --wraps='sk'

    set results (find $fish_complete_path | sk --preview '_fzf_preview_file {1}'  --select-1 --query "/$argv.fish\$")

    commandline_insert $results
end
