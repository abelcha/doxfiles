# Completions for p7zzip

# Commands
complete -f -c 7zz -n __fish_use_subcommand -a a -d Add
complete -f -c 7zz -n __fish_use_subcommand -a b -d Benchmark
complete -f -c 7zz -n __fish_use_subcommand -a d -d Delete
complete -f -c 7zz -n __fish_use_subcommand -a e -d Extract
complete -f -c 7zz -n __fish_use_subcommand -a h -d Hash
complete -f -c 7zz -n __fish_use_subcommand -a i -d "Show information about supported formats"
complete -f -c 7zz -n __fish_use_subcommand -a l -d List
complete -f -c 7zz -n __fish_use_subcommand -a rn -d Rename
complete -f -c 7zz -n __fish_use_subcommand -a t -d Test
complete -f -c 7zz -n __fish_use_subcommand -a u -d Update
complete -f -c 7zz -n __fish_use_subcommand -a x -d "Extract with full paths"

# Switches
complete -c 7zzv -o ai -n "__fish_seen_subcommand_from e l t x" -d "Include archives"
complete -c 7zzv -o an -n "__fish_seen_subcommand_from e l t x" -d "Disable archive_name field"
complete -c 7zzv -o ao -n "__fish_seen_subcommand_from e x" -d "Overwrite mode"
complete -c 7zzv -o ax -n "__fish_seen_subcommand_from e l t x" -d "Exclude archives"
complete -c 7zzv -o bb -n "__fish_seen_subcommand_from a d e u x" -d "Set output log level"
complete -c 7zzv -o bd -d "Disable progress indicator"
complete -c 7zzv -o bs -n "__fish_seen_subcommand_from a d e h l u x" -d "Set output stream"
complete -c 7zzv -o bt -d "Show execution time statistics"
complete -c 7zzv -o i -n "__fish_seen_subcommand_from a d e h l rn t u x" -d "Include filenames"
complete -c 7zzv -o m -n "__fish_seen_subcommand_from a d h rn u" -d "Set compression method"
complete -c 7zzv -o o -n "__fish_seen_subcommand_from e x" -d "Set output directory"
complete -c 7zzv -o p -n "__fish_seen_subcommand_from a d e rn t u x" -d "Set password"
complete -c 7zzv -o r -n "__fish_seen_subcommand_from a d e h l rn t u x" -d "Recurse subdirectories"
complete -c 7zzv -o sa -n "__fish_seen_subcommand_from a" -d "Set archive name mode"
complete -c 7zzv -o scc -d "Set charset for console I/O"
complete -c 7zzv -o scrc -n "__fish_seen_subcommand_from e h x" -d "Set hash function"
complete -c 7zzv -o scs -n "__fish_seen_subcommand_from a u" -d "Set charset for list files"
complete -c 7zzv -o sdel -n "__fish_seen_subcommand_from a" -d "Delete files after compression"
complete -c 7zzv -o seml -n "__fish_seen_subcommand_from a u" -d "Send archive by email"
complete -c 7zzv -o sfx -n "__fish_seen_subcommand_from a d u" -d "Create SFX archive"
complete -c 7zzv -o si -n "__fish_seen_subcommand_from a e h u x" -d "Read data from stdin"
complete -c 7zzv -o slp -d "Set large pages mode"
complete -c 7zzv -o slt -n "__fish_seen_subcommand_from l" -d "Show technical information"
complete -c 7zzv -o sni -n "__fish_seen_subcommand_from a e u x" -d "Store NT security information"
complete -c 7zzv -o sns -n "__fish_seen_subcommand_from a d e h l t u x" -d "Store NTFS alternate streams"
complete -c 7zzv -o snh -d "Store hard links"
complete -c 7zzv -o snl -d "Store symbolic links"
complete -c 7zzv -o so -n "__fish_seen_subcommand_from a e u x" -d "Write data to stdout"
complete -c 7zzv -o spd -d "Disable wildcard matching"
complete -c 7zzv -o spe -d "Eliminate duplication of root folder"
complete -c 7zzv -o spf -n "__fish_seen_subcommand_from a d e u x" -d "Use fully qualified file paths"
complete -c 7zzv -o ssc -n "__fish_seen_subcommand_from a d e l t u x" -d "Set sensitive case mode"
complete -c 7zzv -o ssw -n "__fish_seen_subcommand_from a h u" -d "Compress shared files"
complete -c 7zzv -o stl -n "__fish_seen_subcommand_from a d rn u" -d "Set archive timestamp"
complete -c 7zzv -o stm -d "Set CPU thread affinity mask"
complete -c 7zzv -o stx -n "__fish_seen_subcommand_from a d e l t u x" -d "Exclude archive type"
complete -c 7zzv -o t -n "__fish_seen_subcommand_from a d e l t u x" -d "Type of archive"
complete -c 7zzv -o u -n "__fish_seen_subcommand_from a d rn u" -d "Update options"
complete -c 7zzv -o v -n "__fish_seen_subcommand_from a" -d "Create volumes"
complete -c 7zzv -o w -n "__fish_seen_subcommand_from a d rn u" -d "Assign work directory"
complete -c 7zzv -o x -n "__fish_seen_subcommand_from a d e h l rn t u x" -d "Exclude filenames"
complete -c 7zzv -o y -n "__fish_seen_subcommand_from e x" -d "Assume yes on all queries"


complete -c 7zz -o ai -d 'Include archives' #[r[-|0]][m[-|2]][w[-]]{@listfile|!wildcard}'                                    
complete -c 7zz -o ax -d 'eXclude archives' #[r[-|0]][m[-|2]][w[-]]{@listfile|!wildcard}'                                    
complete -c 7zz -o ao -d 'set Overwrite mode {a|s|t|u}'
complete -c 7zz -o an -d 'disable archive_name field'
complete -c 7zz -o bb -d 'set output log level' #[0-3]'                                        
complete -c 7zz -o bd -d 'disable progress indicator'
complete -c 7zz -o bs -d 'set output stream for output/error/progress line {o|e|p}{0|1|2}'
complete -c 7zz -o bt -d 'show execution time statistics'
complete -c 7zz -o i -d 'Include filenames' #[r[-|0]][m[-|2]][w[-]]{@listfile|!wildcard}'                                    
complete -c 7zz -o m -d 'set compression Method {Parameters}'
complete -c 7zz -o mmt -d 'set number of CPU threads' #[N]'                                                
complete -c 7zz -o mx -d 'set compression level: -mx1 (fastest) ... -mx9 (ultra)' #[N]'                                                                            
complete -c 7zz -o o -d 'set Output directory {Directory}'
complete -c 7zz -o p -d 'set Password {Password}'
complete -c 7zz -o r -d 'Recurse subdirectories for name search' #[-|0]'                                                            
complete -c 7zz -o sa -d 'set Archive name mode {a|e|s}'
complete -c 7zz -o scc -d 'set charset for console input/output {UTF-8|WIN|DOS}'
complete -c 7zz -o scs -d 'set charset for list files {UTF-8|UTF-16LE|UTF-16BE|WIN|DOS|{id}}'
complete -c 7zz -o scrc -d 'set hash function for x, e, h commands' #[CRC32|CRC64|SHA256|SHA1|XXH64|BLAKE2SP|*]'                                                            
complete -c 7zz -o sdel -d 'delete files after compression'
complete -c 7zz -o seml -d 'send archive by email' #[.]'                                            
complete -c 7zz -o sfx -d 'Create SFX archive' #[{name}]'                                        
complete -c 7zz -o si -d 'read data from stdin' #[{name}]'                                        
complete -c 7zz -o slp -d 'set Large Pages mode'
complete -c 7zz -o slt -d 'show technical information for l (List) command'
complete -c 7zz -o snh -d 'store hard links as links'
complete -c 7zz -o snl -d 'store symbolic links as links'
complete -c 7zz -o sni -d 'store NT security information'
complete -c 7zz -o sns -d 'store NTFS alternate streams' #[-]'                                                    
complete -c 7zz -o so -d 'write data to stdout'
complete -c 7zz -o spd -d 'disable wildcard matching for file names'
complete -c 7zz -o spe -d 'eliminate duplication of root folder for extract command'
complete -c 7zz -o spf -d 'use fully qualified file paths' #[2]'                                                    
complete -c 7zz -o ssc -d 'set sensitive case mode' #[-]'                                            
complete -c 7zz -o sse -d stop\ archive\ creating,\ if\ it\ can\'t\ open\ some\ input\ file
complete -c 7zz -o ssp -d 'do not change Last Access Time of source files while archiving'
complete -c 7zz -o ssw -d 'compress shared files'
complete -c 7zz -o stl -d 'set archive timestamp from the most recently modified file'
complete -c 7zz -o stm -d 'set CPU thread affinity mask (hexadecimal number) {HexMask}'
complete -c 7zz -o stx -d 'exclude archive type {Type}'
complete -c 7zz -o t -d 'Set type of archive {Type}'
complete -c 7zz -o u -d 'Update options' #[-][p#][q#][r#][x#][y#][z#][!newArchiveName]'                                    
complete -c 7zz -o v -d 'Create volumes {Size}[b|k|m|g]'
complete -c 7zz -o w -d 'assign Work directory. Empty path means a temporary directory' #[{path}]'                                                                                
complete -c 7zz -o x -d 'eXclude filenames' #[r[-|0]][m[-|2]][w[-]]{@listfile|!wildcard}'                                    
complete -c 7zz -o y -d 'assume Yes on all queries'
