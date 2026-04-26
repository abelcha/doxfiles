complete -c "nail" -s "h" -l "help" -d "Print help" # global
complete -c "nail" -s "V" -l "version" -d "Print version" # global
complete -f -c "nail" -n "__fish_use_subcommand" -a "append" -d "Concatenate multiple datasets" # sub
complete -f -c "nail" -n "__fish_use_subcommand" -a "binning" -d "Bin continuous variables into categories" # sub
complete -f -c "nail" -n "__fish_use_subcommand" -a "convert" -d "Convert between file formats" # sub
complete -f -c "nail" -n "__fish_use_subcommand" -a "correlations" -d "Calculate correlation matrices" # sub
complete -f -c "nail" -n "__fish_use_subcommand" -a "count" -d "Count total rows" # sub
complete -f -c "nail" -n "__fish_use_subcommand" -a "create" -d "Create new columns with expressions" # sub
complete -f -c "nail" -n "__fish_use_subcommand" -a "dedup" -d "Remove duplicate rows or columns" # sub
complete -f -c "nail" -n "__fish_use_subcommand" -a "describe" -d "Show global file overview and metadata" # sub
complete -f -c "nail" -n "__fish_use_subcommand" -a "diff" -d "Compare two datasets and show differences" # sub
complete -f -c "nail" -n "__fish_use_subcommand" -a "drop" -d "Remove columns or rows" # sub
complete -f -c "nail" -n "__fish_use_subcommand" -a "fill" -d "Fill missing values" # sub
complete -f -c "nail" -n "__fish_use_subcommand" -a "filter" -d "Filter rows by conditions" # sub
complete -f -c "nail" -n "__fish_use_subcommand" -a "frequency" -d "Calculate frequency distributions" # sub
complete -f -c "nail" -n "__fish_use_subcommand" -a "head" -d "Display first N rows" # sub
complete -f -c "nail" -n "__fish_use_subcommand" -a "headers" -d "Display column headers" # sub
complete -f -c "nail" -n "__fish_use_subcommand" -a "id" -d "Add unique identifier column" # sub
complete -f -c "nail" -n "__fish_use_subcommand" -a "merge" -d "Join two datasets" # sub
complete -f -c "nail" -n "__fish_use_subcommand" -a "metadata" -d "Show Parquet file metadata" # sub
complete -f -c "nail" -n "__fish_use_subcommand" -a "optimize" -d "Optimize Parquet files for better performance" # sub
complete -f -c "nail" -n "__fish_use_subcommand" -a "outliers" -d "Detect outliers in data" # sub
complete -f -c "nail" -n "__fish_use_subcommand" -a "pivot" -d "Create pivot tables with aggregations" # sub
complete -f -c "nail" -n "__fish_use_subcommand" -a "preview" -d "Preview random N rows" # sub
complete -f -c "nail" -n "__fish_use_subcommand" -a "rename" -d "Rename columns" # sub
complete -f -c "nail" -n "__fish_use_subcommand" -a "sample" -d "Extract data samples" # sub
complete -f -c "nail" -n "__fish_use_subcommand" -a "schema" -d "Display schema information" # sub
complete -f -c "nail" -n "__fish_use_subcommand" -a "search" -d "Search for values in data" # sub
complete -f -c "nail" -n "__fish_use_subcommand" -a "select" -d "Select specific columns or rows" # sub
complete -f -c "nail" -n "__fish_use_subcommand" -a "shuffle" -d "Randomly shuffle rows" # sub
complete -f -c "nail" -n "__fish_use_subcommand" -a "size" -d "Show data size information" # sub
complete -f -c "nail" -n "__fish_use_subcommand" -a "sort" -d "Sort data by columns with various strategies" # sub
complete -f -c "nail" -n "__fish_use_subcommand" -a "split" -d "Split data into multiple files" # sub
complete -f -c "nail" -n "__fish_use_subcommand" -a "stats" -d "Calculate descriptive statistics" # sub
complete -f -c "nail" -n "__fish_use_subcommand" -a "tail" -d "Display last N rows" # sub
complete -f -c "nail" -n "__fish_use_subcommand" -a "update" -d "Check for newer versions" # sub
complete -c "nail" -n "__fish_seen_subcommand_from 'append'" -s "o" -l "output" -d "Output file (if not specified, prints to console)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'append'" -s "f" -l "format" -d "Output format (auto-detect by default)" -xa "json text csv parquet xlsx" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'append'" -l "random" -d "Random seed for reproducible results" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'append'" -s "v" -l "verbose" -d "Enable verbose output" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'append'" -s "j" -l "jobs" -d "Number of parallel jobs" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'append'" -l "files" -d "Files to append (comma-separated)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'append'" -l "ignore-schema" -d "Ignore schema mismatches" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'binning'" -s "o" -l "output" -d "Output file (if not specified, prints to console)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'binning'" -s "f" -l "format" -d "Output format (auto-detect by default)" -xa "json text csv parquet xlsx" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'binning'" -l "random" -d "Random seed for reproducible results" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'binning'" -s "v" -l "verbose" -d "Enable verbose output" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'binning'" -s "j" -l "jobs" -d "Number of parallel jobs" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'binning'" -s "c" -l "columns" -d "Columns to bin (comma-separated)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'binning'" -s "b" -l "bins" -d "Number of bins or custom edges (e.g., \"5\" or \"0,10,50,100\")" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'binning'" -l "method" -d "Binning method" -xa "equal-width equal-frequency custom" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'binning'" -l "labels" -d "Custom bin labels (comma-separated)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'binning'" -l "suffix" -d "Suffix for new columns" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'binning'" -l "drop-original" -d "Drop original columns after binning" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'binning'" -l "include-lowest" -d "Include lowest value in first bin" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'binning'" -s "h" -l "help" -d "Print help" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'convert'" -s "o" -l "output" -d "Output file." # global
complete -c "nail" -n "__fish_seen_subcommand_from 'convert'" -l "random" -d "Random seed for reproducible results" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'convert'" -s "v" -l "verbose" -d "Enable verbose output" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'convert'" -s "j" -l "jobs" -d "Number of parallel jobs" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'convert'" -s "h" -l "help" -d "Print help" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'correlations'" -s "o" -l "output" -d "Output file (if not specified, prints to console)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'correlations'" -s "f" -l "format" -d "Output format (auto-detect by default)" -xa "json text csv parquet xlsx" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'correlations'" -l "random" -d "Random seed for reproducible results" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'correlations'" -s "v" -l "verbose" -d "Enable verbose output" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'correlations'" -s "j" -l "jobs" -d "Number of parallel jobs" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'correlations'" -s "c" -l "columns" -d "Comma-separated column names or regex patterns" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'correlations'" -s "t" -l "type" -d "Correlation type [default: pearson]" -xa "pearson kendall spearman" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'correlations'" -l "matrix" -d "Output correlation matrix format" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'correlations'" -l "tests" -d "Statistical tests to include (comma-separated)" -xa "fisher-exact chi-sqr t-test" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'correlations'" -l "digits" -d "Number of decimal places for correlation values [default: 4]" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'correlations'" -s "h" -l "help" -d "Print help" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'count'" -s "o" -l "output" -d "Output file (if not specified, prints to console)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'count'" -s "f" -l "format" -d "Output format (auto-detect by default)" -xa "json text csv parquet xlsx" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'count'" -l "random" -d "Random seed for reproducible results" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'count'" -s "v" -l "verbose" -d "Enable verbose output" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'count'" -s "j" -l "jobs" -d "Number of parallel jobs" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'count'" -s "h" -l "help" -d "Print help" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'create'" -s "o" -l "output" -d "Output file (if not specified, prints to console)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'create'" -s "f" -l "format" -d "Output format (auto-detect by default)" -xa "json text csv parquet xlsx" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'create'" -l "random" -d "Random seed for reproducible results" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'create'" -s "v" -l "verbose" -d "Enable verbose output" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'create'" -s "j" -l "jobs" -d "Number of parallel jobs" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'create'" -s "c" -l "column" -d "Column creation specs (name=expression), comma-separated" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'create'" -s "r" -l "row" -d "Row filter expression" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'create'" -s "h" -l "help" -d "Print help" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'dedup'" -s "o" -l "output" -d "Output file (if not specified, prints to console)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'dedup'" -s "f" -l "format" -d "Output format (auto-detect by default)" -xa "json text csv parquet xlsx" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'dedup'" -l "random" -d "Random seed for reproducible results" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'dedup'" -s "v" -l "verbose" -d "Enable verbose output" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'dedup'" -s "j" -l "jobs" -d "Number of parallel jobs" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'dedup'" -l "row-wise" -d "Remove duplicate rows" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'dedup'" -l "col-wise" -d "Remove duplicate columns" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'dedup'" -s "c" -l "columns" -d "Columns to consider for row-wise deduplication" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'dedup'" -l "keep" -d "Keep first occurrence (default) vs last" -xa "first" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'describe'" -s "o" -l "output" -d "Output file (if not specified, prints to console)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'describe'" -s "f" -l "format" -d "Output format (auto-detect by default)" -xa "json text csv parquet xlsx" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'describe'" -l "random" -d "Random seed for reproducible results" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'describe'" -s "v" -l "verbose" -d "Enable verbose output" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'describe'" -s "j" -l "jobs" -d "Number of parallel jobs" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'describe'" -s "h" -l "help" -d "Print help" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'diff'" -s "o" -l "output" -d "Output file (if not specified, prints to console)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'diff'" -s "f" -l "format" -d "Output format (auto-detect by default)" -xa "json text csv parquet xlsx" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'diff'" -l "random" -d "Random seed for reproducible results" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'diff'" -s "v" -l "verbose" -d "Enable verbose output" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'diff'" -s "j" -l "jobs" -d "Number of parallel jobs" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'diff'" -s "c" -l "compare" -d "Second file to compare with" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'diff'" -s "k" -l "keys" -d "Columns to use as primary key for comparison (comma-separated)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'diff'" -l "changes-only" -d "Show only rows that differ" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'diff'" -l "left-only" -d "Show only rows in left file" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'diff'" -l "right-only" -d "Show only rows in right file" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'diff'" -s "h" -l "help" -d "Print help" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'drop'" -s "o" -l "output" -d "Output file (if not specified, prints to console)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'drop'" -s "f" -l "format" -d "Output format (auto-detect by default)" -xa "json text csv parquet xlsx" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'drop'" -l "random" -d "Random seed for reproducible results" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'drop'" -s "v" -l "verbose" -d "Enable verbose output" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'drop'" -s "j" -l "jobs" -d "Number of parallel jobs" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'drop'" -s "c" -l "columns" -d "Column names or regex patterns to drop (comma-separated)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'drop'" -s "r" -l "rows" -d "Row numbers/ranges to drop (e.g., 1,3,5-10) OR column conditions (e.g., 'name=John', 'age>25', 'status!=active,score<=50'). Without -o/--output, acts as dry run showing remaining records" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'drop'" -s "h" -l "help" -d "Print help" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'fill'" -s "o" -l "output" -d "Output file (if not specified, prints to console)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'fill'" -s "f" -l "format" -d "Output format (auto-detect by default)" -xa "json text csv parquet xlsx" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'fill'" -l "random" -d "Random seed for reproducible results" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'fill'" -s "v" -l "verbose" -d "Enable verbose output" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'fill'" -s "j" -l "jobs" -d "Number of parallel jobs" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'fill'" -l "method" -d "Fill method" -xa "value mean median mode forward backward" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'fill'" -l "value" -d "Fill value (required for 'value' method)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'fill'" -s "c" -l "columns" -d "Comma-separated column names to fill" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'filter'" -s "o" -l "output" -d "Output file (if not specified, prints to console)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'filter'" -s "f" -l "format" -d "Output format (auto-detect by default)" -xa "json text csv parquet xlsx" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'filter'" -l "random" -d "Random seed for reproducible results" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'filter'" -s "v" -l "verbose" -d "Enable verbose output" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'filter'" -s "j" -l "jobs" -d "Number of parallel jobs" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'filter'" -s "c" -l "columns" -d "Column filter conditions (comma-separated)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'filter'" -s "r" -l "rows" -d "Row filter type" -xa "no-nan numeric-only char-only no-zeros" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'frequency'" -s "o" -l "output" -d "Output file (if not specified, prints to console)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'frequency'" -s "f" -l "format" -d "Output format (auto-detect by default)" -xa "json text csv parquet xlsx" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'frequency'" -l "random" -d "Random seed for reproducible results" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'frequency'" -s "v" -l "verbose" -d "Enable verbose output" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'frequency'" -s "j" -l "jobs" -d "Number of parallel jobs" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'frequency'" -s "c" -l "columns" -d "Comma-separated column names to analyze" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'frequency'" -s "h" -l "help" -d "Print help" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'head'" -s "o" -l "output" -d "Output file (if not specified, prints to console)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'head'" -s "f" -l "format" -d "Output format (auto-detect by default)" -xa "json text csv parquet xlsx" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'head'" -l "random" -d "Random seed for reproducible results" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'head'" -s "v" -l "verbose" -d "Enable verbose output" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'head'" -s "j" -l "jobs" -d "Number of parallel jobs" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'head'" -s "n" -l "number" -d "Number of rows to display" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'head'" -s "h" -l "help" -d "Print help" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'headers'" -s "o" -l "output" -d "Output file (if not specified, prints to console)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'headers'" -s "f" -l "format" -d "Output format (auto-detect by default)" -xa "json text csv parquet xlsx" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'headers'" -l "random" -d "Random seed for reproducible results" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'headers'" -s "v" -l "verbose" -d "Enable verbose output" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'headers'" -s "j" -l "jobs" -d "Number of parallel jobs" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'headers'" -l "filter" -d "Filter headers with regex pattern" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'headers'" -s "h" -l "help" -d "Print help" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'id'" -s "o" -l "output" -d "Output file (if not specified, prints to console)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'id'" -s "f" -l "format" -d "Output format (auto-detect by default)" -xa "json text csv parquet xlsx" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'id'" -l "random" -d "Random seed for reproducible results" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'id'" -s "v" -l "verbose" -d "Enable verbose output" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'id'" -s "j" -l "jobs" -d "Number of parallel jobs" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'id'" -l "create" -d "Create new ID column" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'id'" -l "prefix" -d "Prefix for ID values" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'id'" -l "id-col-name" -d "ID column name" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'id'" -s "h" -l "help" -d "Print help" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'merge'" -s "o" -l "output" -d "Output file (if not specified, prints to console)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'merge'" -s "f" -l "format" -d "Output format (auto-detect by default)" -xa "json text csv parquet xlsx" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'merge'" -s "v" -l "verbose" -d "Enable verbose output" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'merge'" -s "j" -l "jobs" -d "Number of parallel jobs" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'merge'" -s "r" -l "right" -d "Right table file to merge with" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'merge'" -l "left-join" -d "Perform left join" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'merge'" -l "right-join" -d "Perform right join" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'merge'" -l "key" -d "Join key column name" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'merge'" -l "key-mapping" -d "Key mapping for different column names (format: left_col=right_col)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'merge'" -s "h" -l "help" -d "Print help" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'merge'" -l "random" -d "Random seed for reproducible results" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'metadata'" -s "o" -l "output" -d "Output file (if not specified, prints to console)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'metadata'" -s "f" -l "format" -d "Output format (auto-detect by default)" -xa "json text csv parquet xlsx" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'metadata'" -l "random" -d "Random seed for reproducible results" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'metadata'" -s "v" -l "verbose" -d "Enable verbose output" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'metadata'" -s "j" -l "jobs" -d "Number of parallel jobs" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'metadata'" -l "schema" -d "Show detailed schema information" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'metadata'" -l "row-groups" -d "Show row group information" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'metadata'" -l "column-chunks" -d "Show column chunk information" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'metadata'" -l "compression" -d "Show compression information" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'metadata'" -l "encoding" -d "Show encoding information" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'metadata'" -l "statistics" -d "Show statistics information" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'metadata'" -l "all" -d "Show all available metadata" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'metadata'" -l "detailed" -d "Show metadata in detailed format" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'metadata'" -s "h" -l "help" -d "Print help" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'optimize'" -s "o" -l "output" -d "Output file (if not specified, prints to console)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'optimize'" -s "f" -l "format" -d "Output format (auto-detect by default)" -xa "json text csv parquet xlsx" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'optimize'" -l "random" -d "Random seed for reproducible results" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'optimize'" -s "v" -l "verbose" -d "Enable verbose output" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'optimize'" -s "j" -l "jobs" -d "Number of parallel jobs" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'optimize'" -l "compression" -d "Compression type" -xa "snappy gzip zstd brotli" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'optimize'" -l "compression-level" -d "Compression level (1-9)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'optimize'" -l "sort-by" -d "Sort by columns for better compression (comma-separated)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'optimize'" -l "row-group-size" -d "Row group size" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'optimize'" -l "dictionary" -d "Enable dictionary encoding" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'optimize'" -l "no-dictionary" -d "Disable dictionary encoding" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'optimize'" -l "validate" -d "Validate optimized file after creation" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'optimize'" -s "h" -l "help" -d "Print help" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'outliers'" -s "o" -l "output" -d "Output file (if not specified, prints to console)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'outliers'" -s "f" -l "format" -d "Output format (auto-detect by default)" -xa "json text csv parquet xlsx" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'outliers'" -l "random" -d "Random seed for reproducible results" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'outliers'" -s "v" -l "verbose" -d "Enable verbose output" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'outliers'" -s "j" -l "jobs" -d "Number of parallel jobs" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'outliers'" -s "c" -l "columns" -d "Comma-separated column names or regex patterns for outlier detection" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'outliers'" -s "m" -l "method" -d "Outlier detection method" -xa "{iqr\\tInterquartile Range method,z-score\\tZ-score method,modified-z-score\\tModified Z-score method,isolation-forest\\tIsolation Forest (simplified implementation)}" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'outliers'" -l "iqr-multiplier" -d "IQR multiplier for outlier detection (default: 1.5)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'outliers'" -l "z-score-threshold" -d "Z-score threshold for outlier detection (default: 3.0)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'outliers'" -l "show-values" -d "Show outlier values instead of just flagging them" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'outliers'" -l "include-row-numbers" -d "Include row numbers in output" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'outliers'" -l "remove" -d "Remove outliers from dataset and save cleaned data" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'pivot'" -s "o" -l "output" -d "Output file (if not specified, prints to console)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'pivot'" -s "f" -l "format" -d "Output format (auto-detect by default)" -xa "json text csv parquet xlsx" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'pivot'" -l "random" -d "Random seed for reproducible results" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'pivot'" -s "v" -l "verbose" -d "Enable verbose output" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'pivot'" -s "j" -l "jobs" -d "Number of parallel jobs" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'pivot'" -s "i" -l "index" -d "Row index columns (comma-separated)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'pivot'" -s "c" -l "columns" -d "Column pivot columns (comma-separated)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'pivot'" -s "l" -l "values" -d "Value columns to aggregate (comma-separated)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'pivot'" -s "a" -l "agg" -d "Aggregation function" -xa "sum mean count min max" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'pivot'" -l "fill" -d "Fill missing values" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'pivot'" -s "h" -l "help" -d "Print help" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'preview'" -s "o" -l "output" -d "Output file (if not specified, prints to console)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'preview'" -s "f" -l "format" -d "Output format (auto-detect by default)" -xa "json text csv parquet xlsx" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'preview'" -l "random" -d "Random seed for reproducible results" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'preview'" -s "v" -l "verbose" -d "Enable verbose output" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'preview'" -s "j" -l "jobs" -d "Number of parallel jobs" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'preview'" -s "n" -l "number" -d "Number of rows to display" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'preview'" -s "I" -l "interactive" -d "Interactive mode with scrolling (use arrow keys, q to quit)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'preview'" -s "h" -l "help" -d "Print help" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'rename'" -s "o" -l "output" -d "Output file (if not specified, prints to console)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'rename'" -s "f" -l "format" -d "Output format (auto-detect by default)" -xa "json text csv parquet xlsx" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'rename'" -l "random" -d "Random seed for reproducible results" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'rename'" -s "v" -l "verbose" -d "Enable verbose output" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'rename'" -s "j" -l "jobs" -d "Number of parallel jobs" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'rename'" -s "c" -l "column" -d "Column rename specs (before=after), comma-separated" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'rename'" -s "h" -l "help" -d "Print help" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'sample'" -s "o" -l "output" -d "Output file (if not specified, prints to console)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'sample'" -s "f" -l "format" -d "Output format (auto-detect by default)" -xa "json text csv parquet xlsx" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'sample'" -l "random" -d "Random seed for reproducible results" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'sample'" -s "v" -l "verbose" -d "Enable verbose output" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'sample'" -s "j" -l "jobs" -d "Number of parallel jobs" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'sample'" -s "n" -l "number" -d "Number of samples [default: 10]" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'sample'" -l "method" -d "Sampling method [default: random]" -xa "random stratified first last" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'sample'" -l "stratify-by" -d "Column name for stratified sampling" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'schema'" -s "o" -l "output" -d "Output file (if not specified, prints to console)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'schema'" -s "f" -l "format" -d "Output format (auto-detect by default)" -xa "json text csv parquet xlsx" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'schema'" -l "random" -d "Random seed for reproducible results" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'schema'" -s "v" -l "verbose" -d "Enable verbose output" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'schema'" -s "j" -l "jobs" -d "Number of parallel jobs" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'schema'" -s "h" -l "help" -d "Print help" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'search'" -s "o" -l "output" -d "Output file (if not specified, prints to console)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'search'" -s "f" -l "format" -d "Output format (auto-detect by default)" -xa "json text csv parquet xlsx" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'search'" -l "random" -d "Random seed for reproducible results" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'search'" -s "v" -l "verbose" -d "Enable verbose output" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'search'" -s "j" -l "jobs" -d "Number of parallel jobs" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'search'" -l "value" -d "Value to search for" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'search'" -s "c" -l "columns" -d "Comma-separated column names to search in" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'search'" -s "r" -l "rows" -d "Return matching row numbers only" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'search'" -l "ignore-case" -d "Case-insensitive search" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'search'" -l "exact" -d "Exact match only (no partial matches)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'select'" -s "o" -l "output" -d "Output file (if not specified, prints to console)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'select'" -s "f" -l "format" -d "Output format (auto-detect by default)" -xa "json text csv parquet xlsx" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'select'" -l "random" -d "Random seed for reproducible results" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'select'" -s "v" -l "verbose" -d "Enable verbose output" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'select'" -s "j" -l "jobs" -d "Number of parallel jobs" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'select'" -s "c" -l "columns" -d "Column names or regex patterns (comma-separated)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'select'" -s "r" -l "rows" -d "Row numbers or ranges (e.g., 1,3,5-10)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'select'" -s "h" -l "help" -d "Print help" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'shuffle'" -s "o" -l "output" -d "Output file (if not specified, prints to console)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'shuffle'" -s "f" -l "format" -d "Output format (auto-detect by default)" -xa "json text csv parquet xlsx" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'shuffle'" -l "random" -d "Random seed for reproducible results" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'shuffle'" -s "v" -l "verbose" -d "Enable verbose output" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'shuffle'" -s "j" -l "jobs" -d "Number of parallel jobs" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'shuffle'" -s "h" -l "help" -d "Print help" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'size'" -s "o" -l "output" -d "Output file (if not specified, prints to console)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'size'" -s "f" -l "format" -d "Output format (auto-detect by default)" -xa "json text csv parquet xlsx" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'size'" -l "random" -d "Random seed for reproducible results" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'size'" -s "v" -l "verbose" -d "Enable verbose output" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'size'" -s "j" -l "jobs" -d "Number of parallel jobs" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'size'" -s "c" -l "columns" -d "Show per-column sizes" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'size'" -s "r" -l "rows" -d "Show per-row analysis" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'size'" -l "bits" -d "Show raw bits without human-friendly conversion" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'size'" -s "h" -l "help" -d "Print help" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'sort'" -s "o" -l "output" -d "Output file (if not specified, prints to console)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'sort'" -s "f" -l "format" -d "Output format (auto-detect by default)" -xa "json text csv parquet xlsx" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'sort'" -l "random" -d "Random seed for reproducible results" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'sort'" -s "v" -l "verbose" -d "Enable verbose output" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'sort'" -s "j" -l "jobs" -d "Number of parallel jobs" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'sort'" -s "c" -l "column" -d "Columns to sort by (comma-separated or 'all')" -xa "all" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'sort'" -s "s" -l "strategy" -d "Sort strategy per column (comma-separated)" -xa "numeric date alphabetic alphabetic-numeric numeric-alphabetic hour" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'sort'" -l "nulls" -d "Null value handling" -xa "first last skip" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'sort'" -l "date-format" -d "Date format pattern" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'sort'" -l "hour-format" -d "Hour/time format pattern" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'sort'" -s "d" -l "descending" -d "Sort in descending order (per column, comma-separated true/false)" -xa "true false" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'sort'" -l "case-insensitive" -d "Case-insensitive alphabetic sorting" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'sort'" -s "h" -l "help" -d "Print help" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'split'" -s "o" -l "output" -d "Output file (if not specified, prints to console)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'split'" -s "f" -l "format" -d "Output format (auto-detect by default)" -xa "json text csv parquet xlsx" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'split'" -l "random" -d "Random seed for reproducible results" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'split'" -s "v" -l "verbose" -d "Enable verbose output" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'split'" -s "j" -l "jobs" -d "Number of parallel jobs" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'split'" -l "ratio" -d "Split ratios (e.g., '0.7,0.2,0.1' or '70,20,10')" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'split'" -l "names" -d "Output file names (comma-separated)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'split'" -l "splits-prefix" -d "Prefix for auto-generated split file names" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'split'" -l "output-dir" -d "Output directory for split files" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'split'" -l "stratified-by" -d "Column for stratified splitting" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'stats'" -s "o" -l "output" -d "Output file (if not specified, prints to console)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'stats'" -s "f" -l "format" -d "Output format (auto-detect by default)" -xa "json text csv parquet xlsx" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'stats'" -l "random" -d "Random seed for reproducible results" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'stats'" -s "v" -l "verbose" -d "Enable verbose output" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'stats'" -s "j" -l "jobs" -d "Number of parallel jobs" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'stats'" -s "c" -l "columns" -d "Comma-separated column names or regex patterns" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'stats'" -s "t" -l "stats-type" -d "Statistics type" -xa "basic exhaustive hypothesis" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'stats'" -l "numeric-only" -d "Include only numeric columns" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'stats'" -l "categorical-only" -d "Include only categorical (string) columns" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'stats'" -s "p" -l "percentiles" -d "Custom percentiles (comma-separated, e.g., '0.1,0.5,0.9')" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'tail'" -s "o" -l "output" -d "Output file (if not specified, prints to console)" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'tail'" -s "f" -l "format" -d "Output format (auto-detect by default)" -xa "json text csv parquet xlsx" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'tail'" -l "random" -d "Random seed for reproducible results" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'tail'" -s "v" -l "verbose" -d "Enable verbose output" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'tail'" -s "j" -l "jobs" -d "Number of parallel jobs" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'tail'" -s "n" -l "number" -d "Number of rows to display" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'tail'" -s "h" -l "help" -d "Print help" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'update'" -s "v" -l "verbose" -d "Enable verbose output" # global
complete -c "nail" -n "__fish_seen_subcommand_from 'update'" -s "h" -l "help" -d "Print help" # global