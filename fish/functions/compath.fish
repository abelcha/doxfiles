function compath --argument-names cmd
    fd  -tf --glob $cmd.fish --search-path=$fish_complete_path
end
