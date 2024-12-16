#list subcommands
complete -c clickhouse -f      -l help                           -d 'print usage summary, combine with --verbose to display all options'
complete -c clickhouse -f      -l verbose                        -d 'print query and other debugging info'
complete -c clickhouse -f -s V -l version                        -d ' print version information and exit'
complete -c clickhouse -f      -l version-clean                  -d 'print version in machine-readable format and exit'
complete -c clickhouse    -s C -l config-file                    -d '<arg>  config-file path'
complete -c clickhouse -f -s q -l query                          -d "<arg> query; can be specified multiple times (--query \"SELECT 1\" --query \"SELECT 2\"...)"
complete -c clickhouse         -l queries-file                   -d "<arg> file path with queries to execute; multiple files can be specified (--queries-file file1 file2...)"
complete -c clickhouse -f -s n -l multiquery                     -d 'If specified, multiple queries separated by semicolons can be listed after --query. For convenience, it is also possible to omit --query and pass'
complete -c clickhouse -f -s m -l multiline                      -d 'If specified, allow multiline queries (do not send the query on Enter)'
complete -c clickhouse -f -s d -l database                       -d 'database'
complete -c clickhouse -f      -l query_kind                     -d '<initial_query> One of initial_query/secondary_query/no_query'
complete -c clickhouse -f      -l query_id                       -d '<query_id>'
complete -c clickhouse         -l history_file                   -d '<arg> path to history file'
complete -c clickhouse -f      -l stage                          -d '<complete> Request query processing up to specified stage' -x -a "complete fetch_columns with_mergeable_state with_mergeable_state_after_aggregation with_mergeable_s"
complete -c clickhouse -f      -l progress                       -d 'Print progress of queries execution - to TTY: tty|on|1|true|yes; to STDERR non-interactive mode: err; OFF: off|0|false|no; DEFAULT - interactive to'
complete -c clickhouse -f -s A -l disable_suggestion             -d 'Disable loading suggestion data. Note that suggestion data is loaded asynchronously through a second connection to ClickHouse server. Also it is'
complete -c clickhouse -f      -l wait_for_suggestions_to_load   -d 'Load suggestion data synchonously.'
complete -c clickhouse -f -s t -l 'time'                         -d  'print query execution time to stderr in non-interactive mode (for benchmarks)'
complete -c clickhouse -f      -l echo                           -d 'in batch mode, print query before execution'
complete -c clickhouse -f      -l log-level                      -d '<arg> log level'
complete -c clickhouse         -l server_logs_file               -d '<arg> put server logs into specified file'
complete -c clickhouse -f      -l suggestion_limit               -d '<arg> (=10000)    Suggestion limit for how many databases, tables and columns to fetch.'
complete -c clickhouse -f -s f -l format                         -d "<arg> default output format (and input format for clickhouse-local)"
complete -c clickhouse -f      -l output-format                  -d '<arg> default output format (this option has preference over --format)'
complete -c clickhouse -f -s E -l vertical                       -d 'vertical output format, same as --format=Vertical or FORMAT Vertical or G at end of command'
complete -c clickhouse -f      -l highlight                      -d "<arg>  eg :1 enable or disable basic syntax highlight in interactive command line"
complete -c clickhouse -f      -l ignore-error                   -d "do not stop processing in multiquery mode"
complete -c clickhouse -f      -l stacktrace                     -d 'print stack traces of exceptions'
complete -c clickhouse -f      -l hardware-utilization           -d 'print hardware utilization information in progress bar'
complete -c clickhouse         -l print-profile-events           -d 'Printing ProfileEvents packets'
complete -c clickhouse         -l profile-events                 -d "<delay-ms> =0 Delay between printing ProfileEvents packets (-1 - print only totals, 0 - print every single packet)"
complete -c clickhouse -f      -l processed-rows                 -d 'print the number of locally processed rows'
complete -c clickhouse         -l interactive                    -d 'Process queries-file or --query query and start interactive mode'
complete -c clickhouse -f      -l pager                          -d '<arg> Pipe all output into this command (less or similar)'
complete -c clickhouse -f      -l max_memory_usage_in_client     -d '<arg>   Set memory limit in client/local server'
complete -c clickhouse -f      -l fuzzer-args                    -d '<arg> Command line arguments for the LLVM‘s libFuzzer driver. Only relevant if the application is compiled with libFuzzer.'
complete -c clickhouse -f -s N -l table                          -d "<arg> name of the initial table"
complete -c clickhouse -f -s S -l structure                      -d "<arg> structure of the initial table (list of column and type names)"
complete -c clickhouse    -s F -l file                           -d "<arg>  path to file with data of the initial table (stdin if not specified)"
complete -c clickhouse -f      -l input-format                   -d "<arg> input format of the initial table data"
complete -c clickhouse -f      -l no-system-tables               -d "do not attach system tables better startup time"
complete -c clickhouse -f      -l path                           -d "<arg>  Storage path"
complete -c clickhouse -f      -l only-system-tables             -d "attach only system tables from specified path"
complete -c clickhouse -f      -l top_level_domains_path         -d "<arg Path to lists with custom TLDs"
