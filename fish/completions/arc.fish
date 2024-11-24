function __fish_arc_list_archives
    # List files with supported archive extensions
    ls *.zip *.tar *.tar.* *.rar *.bz2 *.gz *.lz4 *.sz *.xz 2>/dev/null
end

function __fish_arc_list_formats
    # List supported archive formats for completion
    string split ' ' "zip tar tar.br tbr tar.gz tgz tar.bz2 tbz2 tar.xz txz tar.lz4 tlz4 tar.sz tsz zst tar.zst rar bz2 gz lz4 sz xz"
end

# complete --no-files -c arc 
# complete -f -c decomp -n '__fish_use_subcommand' -a 'bz2' -d 'decompress from bzip2 using lbzip2'

complete -c arc -a archive -d "Create a new archive file" --condition __fish_use_subcommand
complete -c arc -a unarchive -d "Extract an archive file" --condition __fish_use_subcommand
complete -c arc -a extract -d "Extract a single file/folder from an archive" --condition __fish_use_subcommand
complete -c arc -a ls -d "List the contents of an archive" --condition __fish_use_subcommand
complete -c arc -a compress -d "Compress a file" --condition __fish_use_subcommand
complete -c arc -a decompress -d "Decompress a file" --condition __fish_use_subcommand
complete -c arc -s h -l help -d "Display help text"
# complete -c arc -a "(__fish_arc_list_archives)" --condition '__fish_seen_subcommand_from unarchive'
# complete -c arc -a "(__fish_arc_list_archives)" --condition '__fish_seen_subcommand_from extract'
# complete -c arc -a "(__fish_arc_list_archives)" --condition '__fish_seen_subcommand_from ls'
# complete -c arc -a "(__fish_arc_list_archives)" --condition '__fish_seen_subcommand_from decompress'

# Include all possible archive formats for the --ext flag
complete -c arc -s f -l ext -d "Specify file type" -x -a '(__fish_arc_list_formats)'
# complete -c mods -s m -l model -d 'Default model' -x -a '(_mods_list_models)'
# Global flags
complete -c arc -l allow-errors -d "Log errors and continue processing (default true)"
complete -c arc -l folder-safe -d "Create a top-level folder if missing (default true)"
complete -c arc -l level -d "Set compression level"
complete -c arc -l mkdirs -d "Make all necessary directories"
complete -c arc -l overwrite -d "Overwrite existing files"
complete -c arc -l smart -d "Only compress files not already compressed (zip only, default true)"
complete -c arc -l strip-components -d "Strip number of leading paths"
