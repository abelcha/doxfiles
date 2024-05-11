function compath --argument cmd
fd  --glob  $cmd.fish --search-path=$fish_complete_path
end
