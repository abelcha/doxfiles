complete -c zli -s h -l help -d "Display this help message." # global
complete -c zli -l version -d "Display version." # global
complete -c zli -s v -l verbose -d "Set log level (0=NOTHING, 1=ERROR, 2=WARNING, 3=INFO, 4=VERBOSE1, 5=VERBOSE2, 6=VERBOSE3, 7=EVERYTHING). Default is INFO. Levels above INFO can be set with -v, -vv, -vvv, -vvvv" # global
complete -c zli -s r -l recursive -d "Traverse input directories recursively." # global
complete -f -c zli -n __fish_use_subcommand -a compress # sub
complete -f -c zli -n __fish_use_subcommand -a decompress # sub
complete -f -c zli -n __fish_use_subcommand -a train # sub
complete -f -c zli -n __fish_use_subcommand -a benchmark # sub
complete -f -c zli -n __fish_use_subcommand -a inspect # sub
complete -f -c zli -n __fish_use_subcommand -a list-profiles # sub
complete -c zli -n "__fish_seen_subcommand_from 'compress'" -s v -l verbose -d "Set log level (0=NOTHING, 1=ERROR, 2=WARNING, 3=INFO, 4=VERBOSE1, 5=VERBOSE2, 6=VERBOSE3, 7=EVERYTHING). Default is INFO. Levels above INFO can be set with -v, -vv, -vvv, -vvvv" # subcommands flags
complete -c zli -n "__fish_seen_subcommand_from 'compress'" -s r -l recursive -d "Traverse input directories recursively." # subcommands flags
complete -c zli -n "__fish_seen_subcommand_from 'decompress'" -s v -l verbose -d "Set log level (0=NOTHING, 1=ERROR, 2=WARNING, 3=INFO, 4=VERBOSE1, 5=VERBOSE2, 6=VERBOSE3, 7=EVERYTHING). Default is INFO. Levels above INFO can be set with -v, -vv, -vvv, -vvvv" # subcommands flags
complete -c zli -n "__fish_seen_subcommand_from 'decompress'" -s r -l recursive -d "Traverse input directories recursively." # subcommands flags
complete -c zli -n "__fish_seen_subcommand_from 'train'" -s v -l verbose -d "Set log level (0=NOTHING, 1=ERROR, 2=WARNING, 3=INFO, 4=VERBOSE1, 5=VERBOSE2, 6=VERBOSE3, 7=EVERYTHING). Default is INFO. Levels above INFO can be set with -v, -vv, -vvv, -vvvv" # subcommands flags
complete -c zli -n "__fish_seen_subcommand_from 'train'" -s r -l recursive -d "Traverse input directories recursively." # subcommands flags
complete -c zli -n "__fish_seen_subcommand_from 'benchmark'" -s v -l verbose -d "Set log level (0=NOTHING, 1=ERROR, 2=WARNING, 3=INFO, 4=VERBOSE1, 5=VERBOSE2, 6=VERBOSE3, 7=EVERYTHING). Default is INFO. Levels above INFO can be set with -v, -vv, -vvv, -vvvv" # subcommands flags
complete -c zli -n "__fish_seen_subcommand_from 'benchmark'" -s r -l recursive -d "Traverse input directories recursively." # subcommands flags
complete -c zli -n "__fish_seen_subcommand_from 'inspect'" -s v -l verbose -d "Set log level (0=NOTHING, 1=ERROR, 2=WARNING, 3=INFO, 4=VERBOSE1, 5=VERBOSE2, 6=VERBOSE3, 7=EVERYTHING). Default is INFO. Levels above INFO can be set with -v, -vv, -vvv, -vvvv" # subcommands flags
complete -c zli -n "__fish_seen_subcommand_from 'inspect'" -s r -l recursive -d "Traverse input directories recursively." # subcommands flags
complete -c zli -n "__fish_seen_subcommand_from 'list-profiles'" -s v -l verbose -d "Set log level (0=NOTHING, 1=ERROR, 2=WARNING, 3=INFO, 4=VERBOSE1, 5=VERBOSE2, 6=VERBOSE3, 7=EVERYTHING). Default is INFO. Levels above INFO can be set with -v, -vv, -vvv, -vvvv" # subcommands flags
complete -c zli -n "__fish_seen_subcommand_from 'list-profiles'" -s r -l recursive -d "Traverse input directories recursively." # subcommands flags
complete -c zli -n "__fish_seen_subcommand_from 'compress'" -s h -l help -d "Display this help message." # global
complete -c zli -n "__fish_seen_subcommand_from 'compress'" -l version -d "Display version." # global
complete -c zli -n "__fish_seen_subcommand_from 'compress'" -s v -l verbose -d "Set log level (0=NOTHING, 1=ERROR, 2=WARNING, 3=INFO, 4=VERBOSE1, 5=VERBOSE2, 6=VERBOSE3, 7=EVERYTHING). Default is INFO. Levels above INFO can be set with -v, -vv, -vvv, -vvvv" # global
complete -c zli -n "__fish_seen_subcommand_from 'compress'" -s r -l recursive -d "Traverse input directories recursively." # global
complete -c zli -n "__fish_seen_subcommand_from 'compress'" -s o -l output -d "Output file path." # global
complete -c zli -n "__fish_seen_subcommand_from 'compress'" -s f -l force -d "Overwrite output file." # global
complete -c zli -n "__fish_seen_subcommand_from 'compress'" -s p -l profile -d "Compress with the given profile." -f -x -a '(zli list-profiles 2&|cut -w -f3,5|grep -E .)'
complete -c zli -n "__fish_seen_subcommand_from 'compress'" -l profile-arg -d "Pass the given value as an argument to constructing the profile." # global
complete -c zli -n "__fish_seen_subcommand_from 'compress'" -s c -l compressor -d "Compress with the given serialized compressor file." # global
complete -c zli -n "__fish_seen_subcommand_from 'compress'" -l train-inline -d "Train the compressor on the input file before compressing." # global
complete -c zli -n "__fish_seen_subcommand_from 'compress'" -l trace -d "Record a trace of the compression to be visualized with streamdump. Writes a CBOR file to the provided path." # global
complete -c zli -n "__fish_seen_subcommand_from 'compress'" -l trace-streams-dir -d "Directory to write trace streamdump to." # global
complete -c zli -n "__fish_seen_subcommand_from 'decompress'" -s h -l help -d "Display this help message." # global
complete -c zli -n "__fish_seen_subcommand_from 'decompress'" -l version -d "Display version." # global
complete -c zli -n "__fish_seen_subcommand_from 'decompress'" -s v -l verbose -d "Set log level (0=NOTHING, 1=ERROR, 2=WARNING, 3=INFO, 4=VERBOSE1, 5=VERBOSE2, 6=VERBOSE3, 7=EVERYTHING). Default is INFO. Levels above INFO can be set with -v, -vv, -vvv, -vvvv" # global
complete -c zli -n "__fish_seen_subcommand_from 'decompress'" -s r -l recursive -d "Traverse input directories recursively." # global
complete -c zli -n "__fish_seen_subcommand_from 'decompress'" -s o -l output -d "Output file path." # global
complete -c zli -n "__fish_seen_subcommand_from 'decompress'" -s f -l force -d "Overwrite output file." # global
complete -c zli -n "__fish_seen_subcommand_from 'train'" -s h -l help -d "Display this help message." # global
complete -c zli -n "__fish_seen_subcommand_from 'train'" -l version -d "Display version." # global
complete -c zli -n "__fish_seen_subcommand_from 'train'" -s v -l verbose -d "Set log level (0=NOTHING, 1=ERROR, 2=WARNING, 3=INFO, 4=VERBOSE1, 5=VERBOSE2, 6=VERBOSE3, 7=EVERYTHING). Default is INFO. Levels above INFO can be set with -v, -vv, -vvv, -vvvv" # global
complete -c zli -n "__fish_seen_subcommand_from 'train'" -s r -l recursive -d "Traverse input directories recursively." # global
complete -c zli -n "__fish_seen_subcommand_from 'train'" -s p -l profile -d "Train with the given profile." -f -x -a '(zli list-profiles 2&|cut -w -f3,5|grep -E .)' # global
complete -c zli -n "__fish_seen_subcommand_from 'train'" -l profile-arg -d "Pass the given value as an argument to constructing the profile." # global
complete -c zli -n "__fish_seen_subcommand_from 'train'" -s c -l compressor -d "Train with the given serialized compressor file." # global
complete -c zli -n "__fish_seen_subcommand_from 'train'" -s o -l output -d "Output file path for the trained compressor." # global
complete -c zli -n "__fish_seen_subcommand_from 'train'" -s f -l force -d "Overwrite output file." # global
complete -c zli -n "__fish_seen_subcommand_from 'train'" -s t -l trainer -d "The trainer picked to use for training(full-split|greedy|bottom-up). By default uses greedy as the trainer. See {algo_name}_trainer.h for information on when to use each trainer." -xa "full-split greedy bottom-up" # global
complete -c zli -n "__fish_seen_subcommand_from 'train'" -l threads -d "Number of threads to allocate to the thread pool. If blank, defaults to hardware concurrency limit." # global
complete -c zli -n "__fish_seen_subcommand_from 'train'" -l num-samples -d "Chooses N samples from the directory provided where each file is smaller than the default file size limit (500Mb)." # global
complete -c zli -n "__fish_seen_subcommand_from 'train'" -l use-all-samples -d "Use all samples in the directory provided for training, ignoring any size limits." # global
complete -c zli -n "__fish_seen_subcommand_from 'train'" -l no-ace-successors -d "Disable ACE successors during training." # global
complete -c zli -n "__fish_seen_subcommand_from 'train'" -l no-clustering -d "Skip clustering during training." # global
complete -c zli -n "__fish_seen_subcommand_from 'train'" -l max-time-secs -d "Adds a duration limit to how long training will run for. Training will stop early and return the current best result if the duration is exceeded." # global
complete -c zli -n "__fish_seen_subcommand_from 'train'" -l max-file-size-mb -d "Specifies the maximum file size in megabytes to use for training. If flag is not passed in, defaults to 150MiB." # global
complete -c zli -n "__fish_seen_subcommand_from 'train'" -l max-total-size-mb -d "Specifies the maximum size of all samples in megabytes to use for training. If flag is not passed in, defaults to 300MiB." # global
complete -c zli -n "__fish_seen_subcommand_from 'train'" -l pareto-frontier -d "Enables pareto frontier training. This will output a directory containing all compressors in the pareto frontier." # global
complete -c zli -n "__fish_seen_subcommand_from 'benchmark'" -s h -l help -d "Display this help message." # global
complete -c zli -n "__fish_seen_subcommand_from 'benchmark'" -l version -d "Display version." # global
complete -c zli -n "__fish_seen_subcommand_from 'benchmark'" -s v -l verbose -d "Set log level (0=NOTHING, 1=ERROR, 2=WARNING, 3=INFO, 4=VERBOSE1, 5=VERBOSE2, 6=VERBOSE3, 7=EVERYTHING). Default is INFO. Levels above INFO can be set with -v, -vv, -vvv, -vvvv" # global
complete -c zli -n "__fish_seen_subcommand_from 'benchmark'" -s r -l recursive -d "Traverse input directories recursively." # global
complete -c zli -n "__fish_seen_subcommand_from 'benchmark'" -l output-csv -d "Output file path for CSV-formatted sumamry statistic." # global
complete -c zli -n "__fish_seen_subcommand_from 'benchmark'" -s p -l profile -d "Benchmark the given profile." -f -x -a '(zli list-profiles 2&|cut -w -f3,5|grep -E .)' # global
complete -c zli -n "__fish_seen_subcommand_from 'benchmark'" -l profile-arg -d "Pass the given value as an argument to constructing the profile." # global
complete -c zli -n "__fish_seen_subcommand_from 'benchmark'" -s c -l compressor -d "Benchmark the given serialized compressor file." # global
complete -c zli -n "__fish_seen_subcommand_from 'benchmark'" -s l -l level -d "Benchmark the given compression level." # global
complete -c zli -n "__fish_seen_subcommand_from 'benchmark'" -s n -l num-iters -d "Number of benchmark iterations." # global
complete -c zli -n "__fish_seen_subcommand_from 'benchmark'" -l strict -d "Enforce strict mode compression. This will fail the compression in cases of errors, instead of falling back." # global
complete -c zli -n "__fish_seen_subcommand_from 'inspect'" -s h -l help -d "Display this help message." # global
complete -c zli -n "__fish_seen_subcommand_from 'inspect'" -l version -d "Display version." # global
complete -c zli -n "__fish_seen_subcommand_from 'inspect'" -s v -l verbose -d "Set log level (0=NOTHING, 1=ERROR, 2=WARNING, 3=INFO, 4=VERBOSE1, 5=VERBOSE2, 6=VERBOSE3, 7=EVERYTHING). Default is INFO. Levels above INFO can be set with -v, -vv, -vvv, -vvvv" # global
complete -c zli -n "__fish_seen_subcommand_from 'inspect'" -s r -l recursive -d "Traverse input directories recursively." # global
complete -c zli -n "__fish_seen_subcommand_from 'inspect'" -s o -l output -d "Output file path." # global
complete -c zli -n "__fish_seen_subcommand_from 'list-profiles'" -s h -l help -d "Display this help message." # global
complete -c zli -n "__fish_seen_subcommand_from 'list-profiles'" -l version -d "Display version." # global
complete -c zli -n "__fish_seen_subcommand_from 'list-profiles'" -s v -l verbose -d "Set log level (0=NOTHING, 1=ERROR, 2=WARNING, 3=INFO, 4=VERBOSE1, 5=VERBOSE2, 6=VERBOSE3, 7=EVERYTHING). Default is INFO. Levels above INFO can be set with -v, -vv, -vvv, -vvvv" # global
complete -c zli -n "__fish_seen_subcommand_from 'list-profiles'" -s r -l recursive -d "Traverse input directories recursively." # global
