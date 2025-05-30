#=#####################################################################  default list-verb  #####################################################################
complete -c mlr -n '__fish_seen_subcommand_from bar' -s f -d "<a,b,c>      Field names to convert to bars."
complete -c mlr -n '__fish_seen_subcommand_from bar' -l lo -d "<lo>         Lower-limit value for min-width bar: default '0.000000'."
complete -c mlr -n '__fish_seen_subcommand_from bar' -l hi -d "<hi>         Upper-limit value for max-width bar: default '100.000000'."
complete -c mlr -n '__fish_seen_subcommand_from bar' -s w -d "<n>          Bar-field width: default '40'."
complete -c mlr -n '__fish_seen_subcommand_from bar' -l auto -d "Automatically computes limits, ignoring --lo and --hi."
complete -c mlr -n '__fish_seen_subcommand_from bar' -s c -d "<character>  Fill character: default '*'."
complete -c mlr -n '__fish_seen_subcommand_from bar' -s x -d "<character>  Out-of-bounds character: default '#'."
complete -c mlr -n '__fish_seen_subcommand_from bar' -s b -d "<character>  Blank character: default '.'."
complete -c mlr -n '__fish_seen_subcommand_from bootstrap' -s n -d "Number of samples to output. Defaults to number of input records."
complete -c mlr -n '__fish_seen_subcommand_from case' -s k -d "Case only keys, not keys and values."
complete -c mlr -n '__fish_seen_subcommand_from case' -s v -d "Case only values, not keys and values."
complete -c mlr -n '__fish_seen_subcommand_from case' -s f -d "<a,b,c> Specify which field names to case (default: all)"
complete -c mlr -n '__fish_seen_subcommand_from case' -s u -d "Convert to uppercase"
complete -c mlr -n '__fish_seen_subcommand_from case' -s l -d "Convert to lowercase"
complete -c mlr -n '__fish_seen_subcommand_from case' -s s -d "Convert to sentence case (capitalize first letter)"
complete -c mlr -n '__fish_seen_subcommand_from case' -s t -d "Convert to title case (capitalize words)"
complete -c mlr -n '__fish_seen_subcommand_from cat' -s n -d "Prepend field 'n' to each record with record-counter starting at 1."
complete -c mlr -n '__fish_seen_subcommand_from cat' -s N -d "<name>  Prepend field <name> to each record with record-counter starting at 1."
complete -c mlr -n '__fish_seen_subcommand_from cat' -s g -d "<a,b,c> Optional group-by-field names for counters, e.g. a,b,c"
complete -c mlr -n '__fish_seen_subcommand_from cat' -l filename -d "Prepend current filename to each record."
complete -c mlr -n '__fish_seen_subcommand_from cat' -l filenum -d "Prepend current filenum (1-up) to each record."
complete -c mlr -n '__fish_seen_subcommand_from count-distinct' -s f -d "<a,b,c>    Field names for distinct count."
complete -c mlr -n '__fish_seen_subcommand_from count-distinct' -s x -d "<a,b,c>    Field names to exclude for distinct count: use each record's others instead."
complete -c mlr -n '__fish_seen_subcommand_from count-distinct' -s n -d "Show only the number of distinct values. Not compatible with -u."
complete -c mlr -n '__fish_seen_subcommand_from count-distinct' -s o -d "<name>     Field name for output count. Default 'count'."
complete -c mlr -n '__fish_seen_subcommand_from count-distinct' -s u -d "Do unlashed counts for multiple field names. With -f a,b and"
complete -c mlr -n '__fish_seen_subcommand_from count' -s g -d "<a,b,c> Optional group-by-field names for counts, e.g. a,b,c"
complete -c mlr -n '__fish_seen_subcommand_from count' -s n -d "<n> Show only the number of distinct values. Not interesting without -g."
complete -c mlr -n '__fish_seen_subcommand_from count' -s o -d "<name> Field name for output-count. Default 'count'."
complete -c mlr -n '__fish_seen_subcommand_from count-similar' -s g -d "<a,b,c> Group-by-field names for counts, e.g. a,b,c"
complete -c mlr -n '__fish_seen_subcommand_from count-similar' -s o -d "<name> Field name for output-counts. Defaults to 'count'."
complete -c mlr -n '__fish_seen_subcommand_from cut' -s f -d "<a,b,c> Comma-separated field names for cut, e.g. a,b,c."
complete -c mlr -n '__fish_seen_subcommand_from cut' -s o -d "Retain fields in the order specified here in the argument list."
complete -c mlr -n '__fish_seen_subcommand_from cut' -s r -d "Treat field names as regular expressions. 'ab', 'a.*b' will"
complete -c mlr -n '__fish_seen_subcommand_from decimate' -s b -d "Decimate by printing first of every n."
complete -c mlr -n '__fish_seen_subcommand_from decimate' -s e -d "Decimate by printing last of every n (default)."
complete -c mlr -n '__fish_seen_subcommand_from decimate' -s g -d "<a,b,c> Optional group-by-field names for decimate counts, e.g. a,b,c."
complete -c mlr -n '__fish_seen_subcommand_from decimate' -s n -d "<n> Decimation factor (default 10)."
complete -c mlr -n '__fish_seen_subcommand_from fill-down' -l all -d "Operate on all fields in the input."
complete -c mlr -n '__fish_seen_subcommand_from fill-down' -s f -d "Field names for fill-down."
complete -c mlr -n '__fish_seen_subcommand_from fill-empty' -s v -d "<string> Fill-value: defaults to 'N/A'"
complete -c mlr -n '__fish_seen_subcommand_from fill-empty' -s S -d "Don't infer type -- so '-v 0' would fill string 0 not int 0."
complete -c mlr -n '__fish_seen_subcommand_from filter' -s f -d "<file name> File containing a DSL expression (see examples below). If the filename"
complete -c mlr -n '__fish_seen_subcommand_from filter' -s e -d "<expression> You can use this after -f to add an expression. Example use"
complete -c mlr -n '__fish_seen_subcommand_from filter' -s s -d "name=value: Predefines out-of-stream variable @name to have"
complete -c mlr -n '__fish_seen_subcommand_from filter' -s x -d "(default false) Prints records for which <expression> evaluates to false, not true,"
complete -c mlr -n '__fish_seen_subcommand_from filter' -s q -d "Does not include the modified record in the output stream."
complete -c mlr -n '__fish_seen_subcommand_from filter' -s S -d "and -F: There are no-ops in Miller 6 and above, since now type-inferencing is done"
complete -c mlr -n '__fish_seen_subcommand_from filter' -s w -d "Print warnings about things like uninitialized variables."
complete -c mlr -n '__fish_seen_subcommand_from filter' -s W -d "Same as -w, but exit the process if there are any warnings."
complete -c mlr -n '__fish_seen_subcommand_from filter' -s p -d "Prints the expressions's AST (abstract syntax tree), which gives full"
complete -c mlr -n '__fish_seen_subcommand_from filter' -s d -d "Like -p but uses a parenthesized-expression format for the AST."
complete -c mlr -n '__fish_seen_subcommand_from filter' -s D -d "Like -d but with output all on one line."
complete -c mlr -n '__fish_seen_subcommand_from filter' -s E -d "Echo DSL expression before printing parse-tree"
complete -c mlr -n '__fish_seen_subcommand_from filter' -s v -d "Same as -E -p."
complete -c mlr -n '__fish_seen_subcommand_from filter' -s X -d "Exit after parsing but before stream-processing. Useful with -v/-d/-D, if you"
complete -c mlr -n '__fish_seen_subcommand_from flatten' -s f -d "Comma-separated list of field names to flatten (default all)."
complete -c mlr -n '__fish_seen_subcommand_from flatten' -s s -d "Separator, defaulting to mlr --flatsep value."
complete -c mlr -n '__fish_seen_subcommand_from format-values' -s i -d "<integer format> Defaults to '%d'."
complete -c mlr -n '__fish_seen_subcommand_from format-values' -s f -d "<float format>   Defaults to '%f'."
complete -c mlr -n '__fish_seen_subcommand_from format-values' -s s -d "<string format>  Defaults to '%s'."
complete -c mlr -n '__fish_seen_subcommand_from format-values' -s n -d "Coerce field values autodetected as int to float, and then"
complete -c mlr -n '__fish_seen_subcommand_from fraction' -s f -d "<a,b,c>    Field name(s) for fraction calculation"
complete -c mlr -n '__fish_seen_subcommand_from fraction' -s g -d "<d,e,f>    Optional group-by-field name(s) for fraction counts"
complete -c mlr -n '__fish_seen_subcommand_from fraction' -s p -d "Produce percents [0..100], not fractions [0..1]. Output field names"
complete -c mlr -n '__fish_seen_subcommand_from fraction' -s c -d "Produce cumulative distributions, i.e. running sums: each output"
complete -c mlr -n '__fish_seen_subcommand_from gap' -s g -d "<a,b,c> Print a gap whenever values of these fields (e.g. a,b,c) changes."
complete -c mlr -n '__fish_seen_subcommand_from gap' -s n -d "<n> Print a gap every n records."
complete -c mlr -n '__fish_seen_subcommand_from gap' -s n -d "is ignored if -g is present."
complete -c mlr -n '__fish_seen_subcommand_from grep' -s i -d "Use case-insensitive search."
complete -c mlr -n '__fish_seen_subcommand_from grep' -s v -d "Invert: pass through records which do not match the regex."
complete -c mlr -n '__fish_seen_subcommand_from grep' -s a -d "Only grep for values, not keys and values."
complete -c mlr -n '__fish_seen_subcommand_from gsub' -s f -d "<a,b,c>  Field names to convert."
complete -c mlr -n '__fish_seen_subcommand_from having-fields' -l at-least -d "<comma-separated names>"
complete -c mlr -n '__fish_seen_subcommand_from having-fields' -l which-are -d "<comma-separated names>"
complete -c mlr -n '__fish_seen_subcommand_from having-fields' -l at-most -d "<comma-separated names>"
complete -c mlr -n '__fish_seen_subcommand_from having-fields' -l all-matching -d "<regular expression>"
complete -c mlr -n '__fish_seen_subcommand_from having-fields' -l any-matching -d "<regular expression>"
complete -c mlr -n '__fish_seen_subcommand_from having-fields' -l none-matching -d "<regular expression>"
complete -c mlr -n '__fish_seen_subcommand_from head' -s g -d "<a,b,c> Optional group-by-field names for head counts, e.g. a,b,c."
complete -c mlr -n '__fish_seen_subcommand_from head' -s n -d "<n> Head-count to print. Default 10."
complete -c mlr -n '__fish_seen_subcommand_from histogram' -s f -d "<a,b,c>    Value-field names for histogram counts"
complete -c mlr -n '__fish_seen_subcommand_from histogram' -l lo -d "<lo>     Histogram low value"
complete -c mlr -n '__fish_seen_subcommand_from histogram' -l hi -d "<hi>     Histogram high value"
complete -c mlr -n '__fish_seen_subcommand_from histogram' -l nbins -d "<n>   Number of histogram bins. Defaults to 20."
complete -c mlr -n '__fish_seen_subcommand_from histogram' -l auto -d "Automatically computes limits, ignoring --lo and --hi."
complete -c mlr -n '__fish_seen_subcommand_from histogram' -s o -d "<prefix>   Prefix for output field name. Default: no prefix."
complete -c mlr -n '__fish_seen_subcommand_from json-parse' -s f -d "<...> Comma-separated list of field names to json-parse (default all)."
complete -c mlr -n '__fish_seen_subcommand_from json-parse' -s k -d "If supplied, then on parse fail for any cell, keep the (unparsable)"
complete -c mlr -n '__fish_seen_subcommand_from json-stringify' -s f -d "<...> Comma-separated list of field names to json-parse (default all)."
complete -c mlr -n '__fish_seen_subcommand_from json-stringify' -l jvstack -d "Produce multi-line JSON output."
complete -c mlr -n '__fish_seen_subcommand_from json-stringify' -l no-jvstack -d "Produce single-line JSON output per record (default)."
complete -c mlr -n '__fish_seen_subcommand_from join' -s f -d "<left file name>"
complete -c mlr -n '__fish_seen_subcommand_from join' -s j -d "<a,b,c>   Comma-separated join-field names for output"
complete -c mlr -n '__fish_seen_subcommand_from join' -s l -d "<a,b,c>   Comma-separated join-field names for left input file;"
complete -c mlr -n '__fish_seen_subcommand_from join' -s r -d "<a,b,c>   Comma-separated join-field names for right input file(s);"
complete -c mlr -n '__fish_seen_subcommand_from join' -l lp -d "<text>  Additional prefix for non-join output field names from"
complete -c mlr -n '__fish_seen_subcommand_from join' -l rp -d "<text>  Additional prefix for non-join output field names from"
complete -c mlr -n '__fish_seen_subcommand_from join' -l np -d "Do not emit paired records"
complete -c mlr -n '__fish_seen_subcommand_from join' -l ul -d "Emit unpaired records from the left file"
complete -c mlr -n '__fish_seen_subcommand_from join' -l ur -d "Emit unpaired records from the right file(s)"
complete -c mlr -n '__fish_seen_subcommand_from join' -s u -d "Enable unsorted input. (This is the default even without -u.)"
complete -c mlr -n '__fish_seen_subcommand_from join' -l prepipe -d "<command> As in main input options; see mlr --help for details."
complete -c mlr -n '__fish_seen_subcommand_from join' -l prepipex -d "<command> Likewise."
complete -c mlr -n '__fish_seen_subcommand_from join' -s i -d "<one of csv,dkvp,nidx,pprint,xtab>"
complete -c mlr -n '__fish_seen_subcommand_from join' -l irs -d "<record-separator character>"
complete -c mlr -n '__fish_seen_subcommand_from join' -l ifs -d "<field-separator character>"
complete -c mlr -n '__fish_seen_subcommand_from join' -l ips -d "<pair-separator character>"
complete -c mlr -n '__fish_seen_subcommand_from least-frequent' -s f -d "<one or more comma-separated field names>. Required flag."
complete -c mlr -n '__fish_seen_subcommand_from least-frequent' -s n -d "<count>. Optional flag defaulting to 10."
complete -c mlr -n '__fish_seen_subcommand_from least-frequent' -s b -d "Suppress counts; show only field values."
complete -c mlr -n '__fish_seen_subcommand_from least-frequent' -s o -d "<name>   Field name for output count. Default 'count'."
complete -c mlr -n '__fish_seen_subcommand_from merge-fields' -s a -d "<sum,count,...>  Names of accumulators. One or more of:"
complete -c mlr -n '__fish_seen_subcommand_from merge-fields' -s f -d "<a,b,c>  Value-field names on which to compute statistics. Requires -o."
complete -c mlr -n '__fish_seen_subcommand_from merge-fields' -s r -d "<a,b,c>  Regular expressions for value-field names on which to compute"
complete -c mlr -n '__fish_seen_subcommand_from merge-fields' -s c -d "<a,b,c>  Substrings for collapse mode. All fields which have the same names"
complete -c mlr -n '__fish_seen_subcommand_from merge-fields' -s i -d "Use interpolated percentiles, like R's type=7; default like type=1."
complete -c mlr -n '__fish_seen_subcommand_from merge-fields' -s o -d "<name>   Output field basename for -f/-r."
complete -c mlr -n '__fish_seen_subcommand_from merge-fields' -s k -d "Keep the input fields which contributed to the output statistics;"
complete -c mlr -n '__fish_seen_subcommand_from most-frequent' -s f -d "<one or more comma-separated field names>. Required flag."
complete -c mlr -n '__fish_seen_subcommand_from most-frequent' -s n -d "<count>. Optional flag defaulting to 10."
complete -c mlr -n '__fish_seen_subcommand_from most-frequent' -s b -d "Suppress counts; show only field values."
complete -c mlr -n '__fish_seen_subcommand_from most-frequent' -s o -d "<name>   Field name for output count. Default 'count'."
complete -c mlr -n '__fish_seen_subcommand_from nest' -s f -d "<field name>       Required."
complete -c mlr -n '__fish_seen_subcommand_from nest' -l nested-fs -d "<string>  Defaults to ';'. Field separator for nested values."
complete -c mlr -n '__fish_seen_subcommand_from nest' -l nested-ps -d "<string>  Defaults to ':'. Pair separator for nested key-value pairs."
complete -c mlr -n '__fish_seen_subcommand_from nest' -l evar -d "<string>       Shorthand for --explode --values --across-records --nested-fs <string>"
complete -c mlr -n '__fish_seen_subcommand_from nest' -l ivar -d "<string>       Shorthand for --implode --values --across-records --nested-fs <string>"
complete -c mlr -n '__fish_seen_subcommand_from put' -s f -d "<file name> File containing a DSL expression (see examples below). If the filename"
complete -c mlr -n '__fish_seen_subcommand_from put' -s e -d "<expression> You can use this after -f to add an expression. Example use"
complete -c mlr -n '__fish_seen_subcommand_from put' -s s -d "name=value: Predefines out-of-stream variable @name to have"
complete -c mlr -n '__fish_seen_subcommand_from put' -s x -d "(default false) Prints records for which <expression> evaluates to false, not true,"
complete -c mlr -n '__fish_seen_subcommand_from put' -s q -d "Does not include the modified record in the output stream."
complete -c mlr -n '__fish_seen_subcommand_from put' -s S -d "and -F: There are no-ops in Miller 6 and above, since now type-inferencing is done"
complete -c mlr -n '__fish_seen_subcommand_from put' -s w -d "Print warnings about things like uninitialized variables."
complete -c mlr -n '__fish_seen_subcommand_from put' -s W -d "Same as -w, but exit the process if there are any warnings."
complete -c mlr -n '__fish_seen_subcommand_from put' -s p -d "Prints the expressions's AST (abstract syntax tree), which gives full"
complete -c mlr -n '__fish_seen_subcommand_from put' -s d -d "Like -p but uses a parenthesized-expression format for the AST."
complete -c mlr -n '__fish_seen_subcommand_from put' -s D -d "Like -d but with output all on one line."
complete -c mlr -n '__fish_seen_subcommand_from put' -s E -d "Echo DSL expression before printing parse-tree"
complete -c mlr -n '__fish_seen_subcommand_from put' -s v -d "Same as -E -p."
complete -c mlr -n '__fish_seen_subcommand_from put' -s X -d "Exit after parsing but before stream-processing. Useful with -v/-d/-D, if you"
complete -c mlr -n '__fish_seen_subcommand_from rename' -s r -d "Treat old field  names as regular expressions. 'ab', 'a.*b'"
complete -c mlr -n '__fish_seen_subcommand_from rename' -s g -d "Do global replacement within each field name rather than"
complete -c mlr -n '__fish_seen_subcommand_from reorder' -s e -d "Put specified field names at record end: default is to put them at record start."
complete -c mlr -n '__fish_seen_subcommand_from reorder' -s f -d "<a,b,c> Field names to reorder."
complete -c mlr -n '__fish_seen_subcommand_from reorder' -s b -d "<x>     Put field names specified with -f before field name specified by <x>,"
complete -c mlr -n '__fish_seen_subcommand_from reorder' -s a -d "<x>     Put field names specified with -f after field name specified by <x>,"
complete -c mlr -n '__fish_seen_subcommand_from repeat' -s n -d "<repeat count>  Repeat each input record this many times."
complete -c mlr -n '__fish_seen_subcommand_from repeat' -s f -d "<field name>    Same, but take the repeat count from the specified"
complete -c mlr -n '__fish_seen_subcommand_from reshape' -s i -d "<input field names>   -o <key-field name,value-field name>"
complete -c mlr -n '__fish_seen_subcommand_from reshape' -s r -d "<input field regex> -o <key-field name,value-field name>"
complete -c mlr -n '__fish_seen_subcommand_from reshape' -s s -d "<key-field name,value-field name>"
complete -c mlr -n '__fish_seen_subcommand_from sample' -s g -d "<a,b,c> Optional: group-by-field names for samples, e.g. a,b,c."
complete -c mlr -n '__fish_seen_subcommand_from sample' -s k -d "<k> Required: number of records to output in total, or by group if using -g."
complete -c mlr -n '__fish_seen_subcommand_from sec2gmt' -s 1 -d "through -9: format the seconds using 1..9 decimal places, respectively."
complete -c mlr -n '__fish_seen_subcommand_from sec2gmt' -l millis -d "Input numbers are treated as milliseconds since the epoch."
complete -c mlr -n '__fish_seen_subcommand_from sec2gmt' -l micros -d "Input numbers are treated as microseconds since the epoch."
complete -c mlr -n '__fish_seen_subcommand_from sec2gmt' -l nanos -d "Input numbers are treated as nanoseconds since the epoch."
complete -c mlr -n '__fish_seen_subcommand_from seqgen' -s f -d "<name> (default 'i') Field name for counters."
complete -c mlr -n '__fish_seen_subcommand_from seqgen' -l start -d "<value> (default 1) Inclusive start value."
complete -c mlr -n '__fish_seen_subcommand_from seqgen' -l step -d "<value> (default 1) Step value."
complete -c mlr -n '__fish_seen_subcommand_from seqgen' -l stop -d "<value> (default 100) Inclusive stop value."
complete -c mlr -n '__fish_seen_subcommand_from sort' -s f -d "<comma-separated field names>  Lexical ascending"
complete -c mlr -n '__fish_seen_subcommand_from sort' -s r -d "<comma-separated field names>  Lexical descending"
complete -c mlr -n '__fish_seen_subcommand_from sort' -s c -d "<comma-separated field names>  Case-folded lexical ascending"
complete -c mlr -n '__fish_seen_subcommand_from sort' -s cr -d "<comma-separated field names>  Case-folded lexical descending"
complete -c mlr -n '__fish_seen_subcommand_from sort' -s n -d "<comma-separated field names>  Numerical ascending; nulls sort last"
complete -c mlr -n '__fish_seen_subcommand_from sort' -s nf -d "<comma-separated field names>  Same as -n"
complete -c mlr -n '__fish_seen_subcommand_from sort' -s nr -d "<comma-separated field names>  Numerical descending; nulls sort first"
complete -c mlr -n '__fish_seen_subcommand_from sort' -s t -d "<comma-separated field names>  Natural ascending"
complete -c mlr -n '__fish_seen_subcommand_from sort-within-records' -s r -d "Recursively sort subobjects/submaps, e.g. for JSON input."
complete -c mlr -n '__fish_seen_subcommand_from sparsify' -s s -d "<filler string> What values to remove. Defaults to the empty string."
complete -c mlr -n '__fish_seen_subcommand_from sparsify' -s f -d "<a,b,c> Specify field names to be operated on; any other fields won't be"
complete -c mlr -n '__fish_seen_subcommand_from split' -s n -d "<n>:      Cap file sizes at N records."
complete -c mlr -n '__fish_seen_subcommand_from split' -s m -d "<m>:      Produce M files, round-robining records among them."
complete -c mlr -n '__fish_seen_subcommand_from split' -s g -d "<a,b,c>:  Write separate files with records having distinct values for fields named a,b,c."
complete -c mlr -n '__fish_seen_subcommand_from split' -l prefix -d "<p> Specify filename prefix; default 'split'."
complete -c mlr -n '__fish_seen_subcommand_from split' -l suffix -d "<s> Specify filename suffix; default is from mlr output format, e.g. 'csv'."
complete -c mlr -n '__fish_seen_subcommand_from split' -s a -d "Append to existing file(s), if any, rather than overwriting."
complete -c mlr -n '__fish_seen_subcommand_from split' -s v -d "Send records along to downstream verbs as well as splitting to files."
complete -c mlr -n '__fish_seen_subcommand_from split' -s e -d "Do NOT URL-escape names of output files."
complete -c mlr -n '__fish_seen_subcommand_from split' -s j -d "<J>       Use string J to join filename parts; default '_'."
complete -c mlr -n '__fish_seen_subcommand_from ssub' -s f -d "<a,b,c>  Field names to convert."
complete -c mlr -n '__fish_seen_subcommand_from stats1' -s a -d "<sum,count,...> Names of accumulators: one or more of:"
complete -c mlr -n '__fish_seen_subcommand_from stats1' -s f -d "<a,b,c>     Value-field names on which to compute statistics"
complete -c mlr -n '__fish_seen_subcommand_from stats1' -l fr -d "<regex>   Regex for value-field names on which to compute statistics"
complete -c mlr -n '__fish_seen_subcommand_from stats1' -l fx -d "<regex>   Inverted regex for value-field names on which to compute statistics"
complete -c mlr -n '__fish_seen_subcommand_from stats1' -s g -d "<d,e,f>     Optional group-by-field names"
complete -c mlr -n '__fish_seen_subcommand_from stats1' -l gr -d "<regex>   Regex for optional group-by-field names"
complete -c mlr -n '__fish_seen_subcommand_from stats1' -l gx -d "<regex>   Inverted regex for optional group-by-field names"
complete -c mlr -n '__fish_seen_subcommand_from stats1' -l grfx -d "<regex> Shorthand for --gr <regex> --fx <that same regex>"
complete -c mlr -n '__fish_seen_subcommand_from stats1' -s i -d "Use interpolated percentiles, like R's type=7; default like type=1."
complete -c mlr -n '__fish_seen_subcommand_from stats1' -s s -d "Print iterative stats. Useful in tail -f contexts, in which"
complete -c mlr -n '__fish_seen_subcommand_from stats2' -s a -d "<linreg-ols,corr,...>  Names of accumulators: one or more of:"
complete -c mlr -n '__fish_seen_subcommand_from stats2' -s f -d "<a,b,c,d>   Value-field name-pairs on which to compute statistics."
complete -c mlr -n '__fish_seen_subcommand_from stats2' -s g -d "<e,f,g>     Optional group-by-field names."
complete -c mlr -n '__fish_seen_subcommand_from stats2' -s v -d "Print additional output for linreg-pca."
complete -c mlr -n '__fish_seen_subcommand_from stats2' -s s -d "Print iterative stats. Useful in tail -f contexts, in which"
complete -c mlr -n '__fish_seen_subcommand_from stats2' -l fit -d "Rather than printing regression parameters, applies them to"
complete -c mlr -n '__fish_seen_subcommand_from step' -s a -d "<delta,rsum,...> Names of steppers: comma-separated, one or more of:"
complete -c mlr -n '__fish_seen_subcommand_from step' -s f -d "<a,b,c>   Value-field names on which to compute statistics"
complete -c mlr -n '__fish_seen_subcommand_from step' -s g -d "<d,e,f>   Optional group-by-field names"
complete -c mlr -n '__fish_seen_subcommand_from step' -s F -d "Computes integerable things (e.g. counter) in floating point."
complete -c mlr -n '__fish_seen_subcommand_from step' -s d -d "<x,y,z>   Weights for EWMA. 1 means current sample gets all weight (no"
complete -c mlr -n '__fish_seen_subcommand_from step' -s o -d "<a,b,c>   Custom suffixes for EWMA output fields. If omitted, these default to"
complete -c mlr -n '__fish_seen_subcommand_from sub' -s f -d "<a,b,c>  Field names to convert."
complete -c mlr -n '__fish_seen_subcommand_from summary' -s a -d "<mean,sum,etc.> Use only the specified summarizers."
complete -c mlr -n '__fish_seen_subcommand_from summary' -s x -d "<mean,sum,etc.> Use all summarizers, except the specified ones."
complete -c mlr -n '__fish_seen_subcommand_from summary' -l all -d "Use all available summarizers."
complete -c mlr -n '__fish_seen_subcommand_from summary' -l transpose -d "Show output with field names as column names.."
complete -c mlr -n '__fish_seen_subcommand_from tail' -s g -d "<a,b,c> Optional group-by-field names for head counts, e.g. a,b,c."
complete -c mlr -n '__fish_seen_subcommand_from tail' -s n -d "<n> Head-count to print. Default 10."
complete -c mlr -n '__fish_seen_subcommand_from tee' -s a -d "Append to existing file, if any, rather than overwriting."
complete -c mlr -n '__fish_seen_subcommand_from tee' -s p -d "Treat filename as a pipe-to command."
complete -c mlr -n '__fish_seen_subcommand_from template' -s f -d "<a,b,c> Comma-separated field names for template, e.g. a,b,c."
complete -c mlr -n '__fish_seen_subcommand_from template' -s t -d "<filename> CSV file whose header line will be used for template."
complete -c mlr -n '__fish_seen_subcommand_from template' -l fill-with -d "<filler string>  What to fill absent fields with. Defaults to the empty string."
complete -c mlr -n '__fish_seen_subcommand_from top' -s f -d "<a,b,c>    Value-field names for top counts."
complete -c mlr -n '__fish_seen_subcommand_from top' -s g -d "<d,e,f>    Optional group-by-field names for top counts."
complete -c mlr -n '__fish_seen_subcommand_from top' -s n -d "<count>    How many records to print per category; default 1."
complete -c mlr -n '__fish_seen_subcommand_from top' -s a -d "Print all fields for top-value records; default is"
complete -c mlr -n '__fish_seen_subcommand_from top' -l min -d "Print top smallest values; default is top largest values."
complete -c mlr -n '__fish_seen_subcommand_from top' -s F -d "Keep top values as floats even if they look like integers."
complete -c mlr -n '__fish_seen_subcommand_from top' -s o -d "<name>     Field name for output indices. Default 'top_idx'."
complete -c mlr -n '__fish_seen_subcommand_from unflatten' -s f -d "<a,b,c> Comma-separated list of field names to unflatten (default all)."
complete -c mlr -n '__fish_seen_subcommand_from unflatten' -s s -d "<string> Separator, defaulting to mlr --flatsep value."
complete -c mlr -n '__fish_seen_subcommand_from uniq' -s g -d "<d,e,f>    Group-by-field names for uniq counts."
complete -c mlr -n '__fish_seen_subcommand_from uniq' -s x -d "<a,b,c>    Field names to exclude for uniq: use each record's others instead."
complete -c mlr -n '__fish_seen_subcommand_from uniq' -s c -d "Show repeat counts in addition to unique values."
complete -c mlr -n '__fish_seen_subcommand_from uniq' -s n -d "Show only the number of distinct values."
complete -c mlr -n '__fish_seen_subcommand_from uniq' -s o -d "<name>     Field name for output count. Default 'count'."
complete -c mlr -n '__fish_seen_subcommand_from uniq' -s a -d "Output each unique record only once. Incompatible with -g."
complete -c mlr -n '__fish_seen_subcommand_from unspace' -s f -d "<x>    Replace spaces with specified filler character."
complete -c mlr -n '__fish_seen_subcommand_from unspace' -s k -d "Unspace only keys, not keys and values."
complete -c mlr -n '__fish_seen_subcommand_from unspace' -s v -d "Unspace only values, not keys and values."
complete -c mlr -n '__fish_seen_subcommand_from unsparsify' -l fill-with -d "<filler string>  What to fill absent fields with. Defaults to"
complete -c mlr -n '__fish_seen_subcommand_from unsparsify' -s f -d "<a,b,c> Specify field names to be operated on. Any other fields won't be"
#=##############################################################  mlr help compressed-data-flags  ##############################################################
complete -c mlr -l bz2in -d "Uncompress bzip2 within the Miller process. Done by"
complete -c mlr -l gzin -d "Uncompress gzip within the Miller process. Done by"
complete -c mlr -l prepipe -d "<decompression command>"
complete -c mlr -l prepipe-bz2 -d "Same as `--prepipe bz2`, except this is allowed in"
complete -c mlr -l prepipe-gunzip -d "Same as `--prepipe gunzip`, except this is allowed in"
complete -c mlr -l prepipe-zcat -d "Same as `--prepipe zcat`, except this is allowed in"
complete -c mlr -l prepipe-zstdcat -d "Same as `--prepipe zstdcat`, except this is allowed"
complete -c mlr -l prepipex -d "<decompression command>"
complete -c mlr -l zin -d "Uncompress zlib within the Miller process. Done by"
complete -c mlr -l zstdin -d "Uncompress zstd within the Miller process. Done by"
#=################################################################  mlr help file-format-flags  ################################################################
complete -c mlr -l asv -d "or --asvlite       Use ASV format for input and output data."
complete -c mlr -l csv -d "or -c              Use CSV format for input and output data."
complete -c mlr -l csvlite -d "Use CSV-lite format for input and output data."
complete -c mlr -l dkvp -d "Use DKVP format for input and output data."
complete -c mlr -l gen-field-name -d "Specify field name for --igen. Defaults to 'i'."
complete -c mlr -l gen-start -d "Specify start value for --igen. Defaults to 1."
complete -c mlr -l gen-step -d "Specify step value for --igen. Defaults to 1."
complete -c mlr -l gen-stop -d "Specify stop value for --igen. Defaults to 100."
complete -c mlr -l iasv -d "or --iasvlite     Use ASV format for input data."
complete -c mlr -l icsv -d "Use CSV format for input data."
complete -c mlr -l icsvlite -d "Use CSV-lite format for input data."
complete -c mlr -l idkvp -d "Use DKVP format for input data."
complete -c mlr -l igen -d "Ignore input files and instead generate sequential"
complete -c mlr -l ijson -d "Use JSON format for input data."
complete -c mlr -l ijsonl -d "Use JSON Lines format for input data."
complete -c mlr -l imd -d "or --imarkdown     Use markdown-tabular format for input data."
complete -c mlr -l inidx -d "Use NIDX format for input data."
complete -c mlr -l io -d "<format name>       Use format name for input and output data. For"
complete -c mlr -l ipprint -d "Use PPRINT format for input data."
complete -c mlr -l itsv -d "Use TSV format for input data."
complete -c mlr -l itsvlite -d "Use TSV-lite format for input data."
complete -c mlr -l iusv -d "or --iusvlite     Use USV format for input data."
complete -c mlr -l ixtab -d "Use XTAB format for input data."
complete -c mlr -l json -d "or -j             Use JSON format for input and output data."
complete -c mlr -l jsonl -d "Use JSON Lines format for input and output data."
complete -c mlr -l nidx -d "Use NIDX format for input and output data."
complete -c mlr -l oasv -d "or --oasvlite     Use ASV format for output data."
complete -c mlr -l ocsv -d "Use CSV format for output data."
complete -c mlr -l ocsvlite -d "Use CSV-lite format for output data."
complete -c mlr -l odkvp -d "Use DKVP format for output data."
complete -c mlr -l ojson -d "Use JSON format for output data."
complete -c mlr -l ojsonl -d "Use JSON Lines format for output data."
complete -c mlr -l omd -d "or --omarkdown     Use markdown-tabular format for output data."
complete -c mlr -l onidx -d "Use NIDX format for output data."
complete -c mlr -l opprint -d "Use PPRINT format for output data."
complete -c mlr -l otsv -d "Use TSV format for output data."
complete -c mlr -l otsvlite -d "Use TSV-lite format for output data."
complete -c mlr -l ousv -d "or --ousvlite     Use USV format for output data."
complete -c mlr -l oxtab -d "Use XTAB format for output data."
complete -c mlr -l pprint -d "Use PPRINT format for input and output data."
complete -c mlr -l tsv -d "or -t              Use TSV format for input and output data."
complete -c mlr -l tsvlite -d "Use TSV-lite format for input and output data."
complete -c mlr -l usv -d "or --usvlite       Use USV format for input and output data."
complete -c mlr -l xtab -d "Use XTAB format for input and output data."
complete -c mlr -l xvright -d "Right-justify values for XTAB format."
complete -c mlr -s i -d "<format name>         Use format name for input data. For example: `-i csv`"
complete -c mlr -s o -d "<format name>         Use format name for output data. For example: `-o"
#=#############################################################  mlr help flatten-unflatten-flags  #############################################################
complete -c mlr -l flatsep -d "or --jflatsep <string>"
complete -c mlr -l no-auto-flatten -d "When output is non-JSON, suppress the default"
complete -c mlr -l no-auto-unflatten -d "When input non-JSON and output is JSON, suppress the"
#=#####################################################  mlr help format-conversion-keystroke-saver-flags  #####################################################
complete -c mlr -s p -d "Keystroke-saver for `--nidx --fs space --repifs`."
complete -c mlr -s T -d "Keystroke-saver for `--nidx --fs tab`."
#=#################################################################  mlr help json-only-flags  #################################################################
complete -c mlr -l jlistwrap -d "or --jl      Wrap JSON output in outermost `[ ]`. This is the"
complete -c mlr -l jvquoteall -d "Force all JSON values -- recursively into lists and"
complete -c mlr -l jvstack -d "Put one key-value pair per line for JSON output"
complete -c mlr -l no-jlistwrap -d "Do not wrap JSON output in outermost `[ ]`. This is"
complete -c mlr -l no-jvstack -d "Put objects/arrays all on one line for JSON output."
#=###############################################################  mlr help miscellaneous-flags  ###############################################################
complete -c mlr -l fflush -d "Force buffered output to be written after every"
complete -c mlr -l files -d "<filename>       Use this to specify a file which itself contains, one"
complete -c mlr -l from -d "<filename>        Use this to specify an input file before the verb(s),"
complete -c mlr -l hash-records -d "This is an internal parameter which normally does not"
complete -c mlr -l infer-int-as-float -d "or -A"
complete -c mlr -l infer-none -d "or -S       Don't treat values like 123 or 456.7 in data files as"
complete -c mlr -l infer-octal -d "or -O      Treat numbers like 0123 in data files as numeric;"
complete -c mlr -l load -d "<filename>        Load DSL script file for all put/filter operations on"
complete -c mlr -l mfrom -d "<filenames>      Use this to specify one of more input files before"
complete -c mlr -l mload -d "<filenames>      Like `--load` but works with more than one filename,"
complete -c mlr -l no-dedupe-field-names -d "By default, if an input record has a field named `x`"
complete -c mlr -l no-fflush -d "Let buffered output not be written after every output"
complete -c mlr -l no-hash-records -d "See --hash-records."
complete -c mlr -l norc -d "Do not load a .mlrrc file."
complete -c mlr -l nr-progress-mod -d "<m>    With m a positive integer: print filename and record"
complete -c mlr -l ofmt -d "<format>          E.g. `%.18f`, `%.0f`, `%9.6e`. Please use"
complete -c mlr -l ofmte -d "<n>              Use --ofmte 6 as shorthand for --ofmt %.6e, etc."
complete -c mlr -l ofmtf -d "<n>              Use --ofmtf 6 as shorthand for --ofmt %.6f, etc."
complete -c mlr -l ofmtg -d "<n>              Use --ofmtg 6 as shorthand for --ofmt %.6g, etc."
complete -c mlr -l records-per-batch -d "<n>  This is an internal parameter for maximum number of"
complete -c mlr -l s-no-comment-strip -d "<file name>"
complete -c mlr -l seed -d "<n>               with `n` of the form `12345678` or `0xcafefeed`. For"
complete -c mlr -l tz -d "<timezone>          Specify timezone, overriding '\$TZ' environment"
complete -c mlr -s I -d "Process files in-place. For each file name on the"
complete -c mlr -s n -d "Process no input files, nor standard input either."
complete -c mlr -s s -d "<file name>           Take command-line flags from file name. For more"
complete -c mlr -s x -d "If any record has an error value in it, report it and"
#=############################################################  mlr help output-colorization-flags  ############################################################
complete -c mlr -l always-color -d "or -C     Instructs Miller to colorize output even when it"
complete -c mlr -l fail-color -d "Specify the color (see `--list-color-codes` and"
complete -c mlr -l help-color -d "Specify the color (see `--list-color-codes` and"
complete -c mlr -l key-color -d "Specify the color (see `--list-color-codes` and"
complete -c mlr -l list-color-codes -d "Show the available color codes in the range 0..255,"
complete -c mlr -l list-color-names -d "Show the names for the available color codes, such as"
complete -c mlr -l no-color -d "or -M         Instructs Miller to not colorize any output."
complete -c mlr -l pass-color -d "Specify the color (see `--list-color-codes` and"
complete -c mlr -l value-color -d "Specify the color (see `--list-color-codes` and"
#=################################################################  mlr help pprint-only-flags  ################################################################
complete -c mlr -l barred -d "or --barred-output"
complete -c mlr -l barred-input -d "When used in conjunction with --pprint, accepts"
complete -c mlr -l right -d "Right-justifies all fields for PPRINT output."
#=#################################################################  mlr help profiling-flags  #################################################################
complete -c mlr -l cpuprofile -d "<CPU-profile file name>"
complete -c mlr -l time -d "Print elapsed execution time in seconds to stderr at"
complete -c mlr -l traceprofile -d "Create a trace-profile file for performance analysis."
#=#################################################################  mlr help separator-flags  #################################################################
complete -c mlr -l fs -d "<string>            Specify FS for input and output."
complete -c mlr -l ifs -d "<string>           Specify FS for input."
complete -c mlr -l ifs-regex -d "<string>     Specify FS for input as a regular expression."
complete -c mlr -l ips -d "<string>           Specify PS for input."
complete -c mlr -l ips-regex -d "<string>     Specify PS for input as a regular expression."
complete -c mlr -l irs -d "<string>           Specify RS for input."
complete -c mlr -l ofs -d "<string>           Specify FS for output."
complete -c mlr -l ops -d "<string>           Specify PS for output."
complete -c mlr -l ors -d "<string>           Specify RS for output."
complete -c mlr -l ps -d "<string>            Specify PS for input and output."
complete -c mlr -l repifs -d "Let IFS be repeated: e.g. for splitting on multiple"
complete -c mlr -l rs -d "<string>            Specify RS for input and output."


 


complete -c mlr -n '__fish_seen_subcommand_from bar' -s f -d '{a,b,c}      Field names to convert to bars.'
complete -c mlr -n '__fish_seen_subcommand_from bar' -l lo -d "{lo}         Lower-limit value for min-width bar: default '0.000000'."
complete -c mlr -n '__fish_seen_subcommand_from bar' -l hi -d "{hi}         Upper-limit value for max-width bar: default '100.000000'."
complete -c mlr -n '__fish_seen_subcommand_from bar' -s w -d "{n}          Bar-field width: default '40'."
complete -c mlr -n '__fish_seen_subcommand_from bar' -l auto -d 'Automatically computes limits, ignoring --lo and --hi.'
complete -c mlr -n '__fish_seen_subcommand_from bar' -s c -d "{character}  Fill character: default '*'."
complete -c mlr -n '__fish_seen_subcommand_from bar' -s x -d "{character}  Out-of-bounds character: default '#'."
complete -c mlr -n '__fish_seen_subcommand_from bar' -s b -d "{character}  Blank character: default '.'."
complete -c mlr -n '__fish_seen_subcommand_from bootstrap' -s n -d 'Number of samples to output. Defaults to number of input records.'
complete -c mlr -n '__fish_seen_subcommand_from case' -s k -d 'Case only keys, not keys and values.'
complete -c mlr -n '__fish_seen_subcommand_from case' -s v -d 'Case only values, not keys and values.'
complete -c mlr -n '__fish_seen_subcommand_from case' -s f -d '{a,b,c} Specify which field names to case (default: all)'
complete -c mlr -n '__fish_seen_subcommand_from case' -s u -d 'Convert to uppercase'
complete -c mlr -n '__fish_seen_subcommand_from case' -s l -d 'Convert to lowercase'
complete -c mlr -n '__fish_seen_subcommand_from case' -s s -d 'Convert to sentence case (capitalize first letter)'
complete -c mlr -n '__fish_seen_subcommand_from case' -s t -d 'Convert to title case (capitalize words)'
complete -c mlr -n '__fish_seen_subcommand_from cat' -s n -d 'Prepend field "n" to each record with record-counter starting at 1.'
complete -c mlr -n '__fish_seen_subcommand_from cat' -s N -d '{name}  Prepend field {name} to each record with record-counter starting at 1.'
complete -c mlr -n '__fish_seen_subcommand_from cat' -s g -d '{a,b,c} Optional group-by-field names for counters, e.g. a,b,c'
complete -c mlr -n '__fish_seen_subcommand_from cat' -l filename -d 'Prepend current filename to each record.'
complete -c mlr -n '__fish_seen_subcommand_from cat' -l filenum -d 'Prepend current filenum (1-up) to each record.'
complete -c mlr -n '__fish_seen_subcommand_from count-distinct' -s f -d '{a,b,c}    Field names for distinct count.'
complete -c mlr -n '__fish_seen_subcommand_from count-distinct' -s x -d "{a,b,c}    Field names to exclude for distinct count: use each record's others instead."
complete -c mlr -n '__fish_seen_subcommand_from count-distinct' -s n -d 'Show only the number of distinct values. Not compatible with -u.'
complete -c mlr -n '__fish_seen_subcommand_from count-distinct' -s o -d '{name}     Field name for output count. Default "count".'
complete -c mlr -n '__fish_seen_subcommand_from count-distinct' -s u -d 'Do unlashed counts for multiple field names. With -f a,b and'
complete -c mlr -n '__fish_seen_subcommand_from count' -s g -d '{a,b,c} Optional group-by-field names for counts, e.g. a,b,c'
complete -c mlr -n '__fish_seen_subcommand_from count' -s n -d '{n} Show only the number of distinct values. Not interesting without -g.'
complete -c mlr -n '__fish_seen_subcommand_from count' -s o -d '{name} Field name for output-count. Default "count".'
complete -c mlr -n '__fish_seen_subcommand_from count-similar' -s g -d '{a,b,c} Group-by-field names for counts, e.g. a,b,c'
complete -c mlr -n '__fish_seen_subcommand_from count-similar' -s o -d '{name} Field name for output-counts. Defaults to "count".'
complete -c mlr -n '__fish_seen_subcommand_from cut' -s f -d '{a,b,c} Comma-separated field names for cut, e.g. a,b,c.'
complete -c mlr -n '__fish_seen_subcommand_from cut' -s o -d 'Retain fields in the order specified here in the argument list.'
complete -c mlr -n '__fish_seen_subcommand_from cut' -s r -d 'Treat field names as regular expressions. "ab", "a.*b" will'
complete -c mlr -n '__fish_seen_subcommand_from decimate' -s b -d 'Decimate by printing first of every n.'
complete -c mlr -n '__fish_seen_subcommand_from decimate' -s e -d 'Decimate by printing last of every n (default).'
complete -c mlr -n '__fish_seen_subcommand_from decimate' -s g -d '{a,b,c} Optional group-by-field names for decimate counts, e.g. a,b,c.'
complete -c mlr -n '__fish_seen_subcommand_from decimate' -s n -d '{n} Decimation factor (default 10).'
complete -c mlr -n '__fish_seen_subcommand_from fill-down' -l all -d 'Operate on all fields in the input.'
complete -c mlr -n '__fish_seen_subcommand_from fill-down' -s f -d 'Field names for fill-down.'
complete -c mlr -n '__fish_seen_subcommand_from fill-empty' -s v -d '{string} Fill-value: defaults to "N/A"'
complete -c mlr -n '__fish_seen_subcommand_from fill-empty' -s S -d "Don't infer type -- so '-v 0' would fill string 0 not int 0."
complete -c mlr -n '__fish_seen_subcommand_from filter' -s f -d '{file name} File containing a DSL expression (see examples below). If the filename'
complete -c mlr -n '__fish_seen_subcommand_from filter' -s e -d '{expression} You can use this after -f to add an expression. Example use'
complete -c mlr -n '__fish_seen_subcommand_from filter' -s s -d 'name=value: Predefines out-of-stream variable @name to have'
complete -c mlr -n '__fish_seen_subcommand_from filter' -s x -d '(default false) Prints records for which {expression} evaluates to false, not true,'
complete -c mlr -n '__fish_seen_subcommand_from filter' -s q -d 'Does not include the modified record in the output stream.'
complete -c mlr -n '__fish_seen_subcommand_from filter' -s S -d 'and -F: There are no-ops in Miller 6 and above, since now type-inferencing is done'
complete -c mlr -n '__fish_seen_subcommand_from filter' -s w -d 'Print warnings about things like uninitialized variables.'
complete -c mlr -n '__fish_seen_subcommand_from filter' -s W -d 'Same as -w, but exit the process if there are any warnings.'
complete -c mlr -n '__fish_seen_subcommand_from filter' -s p -d "Prints the expressions's AST (abstract syntax tree), which gives full"
complete -c mlr -n '__fish_seen_subcommand_from filter' -s d -d 'Like -p but uses a parenthesized-expression format for the AST.'
complete -c mlr -n '__fish_seen_subcommand_from filter' -s D -d 'Like -d but with output all on one line.'
complete -c mlr -n '__fish_seen_subcommand_from filter' -s E -d 'Echo DSL expression before printing parse-tree'
complete -c mlr -n '__fish_seen_subcommand_from filter' -s v -d 'Same as -E -p.'
complete -c mlr -n '__fish_seen_subcommand_from filter' -s X -d 'Exit after parsing but before stream-processing. Useful with -v/-d/-D, if you'
complete -c mlr -n '__fish_seen_subcommand_from flatten' -s f -d 'Comma-separated list of field names to flatten (default all).'
complete -c mlr -n '__fish_seen_subcommand_from flatten' -s s -d 'Separator, defaulting to mlr --flatsep value.'
complete -c mlr -n '__fish_seen_subcommand_from format-values' -s i -d '{integer format} Defaults to "%d".'
complete -c mlr -n '__fish_seen_subcommand_from format-values' -s f -d '{float format}   Defaults to "%f".'
complete -c mlr -n '__fish_seen_subcommand_from format-values' -s s -d '{string format}  Defaults to "%s".'
complete -c mlr -n '__fish_seen_subcommand_from format-values' -s n -d 'Coerce field values autodetected as int to float, and then'
complete -c mlr -n '__fish_seen_subcommand_from fraction' -s f -d '{a,b,c}    Field name(s) for fraction calculation'
complete -c mlr -n '__fish_seen_subcommand_from fraction' -s g -d '{d,e,f}    Optional group-by-field name(s) for fraction counts'
complete -c mlr -n '__fish_seen_subcommand_from fraction' -s p -d 'Produce percents [0..100], not fractions [0..1]. Output field names'
complete -c mlr -n '__fish_seen_subcommand_from fraction' -s c -d 'Produce cumulative distributions, i.e. running sums: each output'
complete -c mlr -n '__fish_seen_subcommand_from gap' -s g -d '{a,b,c} Print a gap whenever values of these fields (e.g. a,b,c) changes.'
complete -c mlr -n '__fish_seen_subcommand_from gap' -s n -d '{n} Print a gap every n records.'
complete -c mlr -n '__fish_seen_subcommand_from gap' -s n -d 'is ignored if -g is present.'
complete -c mlr -n '__fish_seen_subcommand_from grep' -s i -d 'Use case-insensitive search.'
complete -c mlr -n '__fish_seen_subcommand_from grep' -s v -d 'Invert: pass through records which do not match the regex.'
complete -c mlr -n '__fish_seen_subcommand_from grep' -s a -d 'Only grep for values, not keys and values.'
complete -c mlr -n '__fish_seen_subcommand_from gsub' -s f -d '{a,b,c}  Field names to convert.'
complete -c mlr -n '__fish_seen_subcommand_from having-fields' -l at-least -d '{comma-separated names}'
complete -c mlr -n '__fish_seen_subcommand_from having-fields' -l which-are -d '{comma-separated names}'
complete -c mlr -n '__fish_seen_subcommand_from having-fields' -l at-most -d '{comma-separated names}'
complete -c mlr -n '__fish_seen_subcommand_from having-fields' -l all-matching -d '{regular expression}'
complete -c mlr -n '__fish_seen_subcommand_from having-fields' -l any-matching -d '{regular expression}'
complete -c mlr -n '__fish_seen_subcommand_from having-fields' -l none-matching -d '{regular expression}'
complete -c mlr -n '__fish_seen_subcommand_from head' -s g -d '{a,b,c} Optional group-by-field names for head counts, e.g. a,b,c.'
complete -c mlr -n '__fish_seen_subcommand_from head' -s n -d '{n} Head-count to print. Default 10.'
complete -c mlr -n '__fish_seen_subcommand_from histogram' -s f -d '{a,b,c}    Value-field names for histogram counts'
complete -c mlr -n '__fish_seen_subcommand_from histogram' -l lo -d '{lo}     Histogram low value'
complete -c mlr -n '__fish_seen_subcommand_from histogram' -l hi -d '{hi}     Histogram high value'
complete -c mlr -n '__fish_seen_subcommand_from histogram' -l nbins -d '{n}   Number of histogram bins. Defaults to 20.'
complete -c mlr -n '__fish_seen_subcommand_from histogram' -l auto -d 'Automatically computes limits, ignoring --lo and --hi.'
complete -c mlr -n '__fish_seen_subcommand_from histogram' -s o -d '{prefix}   Prefix for output field name. Default: no prefix.'
complete -c mlr -n '__fish_seen_subcommand_from json-parse' -s f -d '{...} Comma-separated list of field names to json-parse (default all).'
complete -c mlr -n '__fish_seen_subcommand_from json-parse' -s k -d 'If supplied, then on parse fail for any cell, keep the (unparsable)'
complete -c mlr -n '__fish_seen_subcommand_from json-stringify' -s f -d '{...} Comma-separated list of field names to json-parse (default all).'
complete -c mlr -n '__fish_seen_subcommand_from json-stringify' -l jvstack -d 'Produce multi-line JSON output.'
complete -c mlr -n '__fish_seen_subcommand_from json-stringify' -l no-jvstack -d 'Produce single-line JSON output per record (default).'
complete -c mlr -n '__fish_seen_subcommand_from join' -s f -d '{left file name}'
complete -c mlr -n '__fish_seen_subcommand_from join' -s j -d '{a,b,c}   Comma-separated join-field names for output'
complete -c mlr -n '__fish_seen_subcommand_from join' -s l -d '{a,b,c}   Comma-separated join-field names for left input file;'
complete -c mlr -n '__fish_seen_subcommand_from join' -s r -d '{a,b,c}   Comma-separated join-field names for right input file(s);'
complete -c mlr -n '__fish_seen_subcommand_from join' -l lp -d '{text}  Additional prefix for non-join output field names from'
complete -c mlr -n '__fish_seen_subcommand_from join' -l rp -d '{text}  Additional prefix for non-join output field names from'
complete -c mlr -n '__fish_seen_subcommand_from join' -l np -d 'Do not emit paired records'
complete -c mlr -n '__fish_seen_subcommand_from join' -l ul -d 'Emit unpaired records from the left file'
complete -c mlr -n '__fish_seen_subcommand_from join' -l ur -d 'Emit unpaired records from the right file(s)'
complete -c mlr -n '__fish_seen_subcommand_from join' -s u -d 'Enable unsorted input. (This is the default even without -u.)'
complete -c mlr -n '__fish_seen_subcommand_from join' -l prepipe -d '{command} As in main input options; see mlr --help for details.'
complete -c mlr -n '__fish_seen_subcommand_from join' -l prepipex -d '{command} Likewise.'
complete -c mlr -n '__fish_seen_subcommand_from join' -s i -d '{one of csv,dkvp,nidx,pprint,xtab}'
complete -c mlr -n '__fish_seen_subcommand_from join' -l irs -d '{record-separator character}'
complete -c mlr -n '__fish_seen_subcommand_from join' -l ifs -d '{field-separator character}'
complete -c mlr -n '__fish_seen_subcommand_from join' -l ips -d '{pair-separator character}'
complete -c mlr -n '__fish_seen_subcommand_from least-frequent' -s f -d '{one or more comma-separated field names}. Required flag.'
complete -c mlr -n '__fish_seen_subcommand_from least-frequent' -s n -d '{count}. Optional flag defaulting to 10.'
complete -c mlr -n '__fish_seen_subcommand_from least-frequent' -s b -d 'Suppress counts; show only field values.'
complete -c mlr -n '__fish_seen_subcommand_from least-frequent' -s o -d '{name}   Field name for output count. Default "count".'
complete -c mlr -n '__fish_seen_subcommand_from merge-fields' -s a -d '{sum,count,...}  Names of accumulators. One or more of:'
complete -c mlr -n '__fish_seen_subcommand_from merge-fields' -s f -d '{a,b,c}  Value-field names on which to compute statistics. Requires -o.'
complete -c mlr -n '__fish_seen_subcommand_from merge-fields' -s r -d '{a,b,c}  Regular expressions for value-field names on which to compute'
complete -c mlr -n '__fish_seen_subcommand_from merge-fields' -s c -d '{a,b,c}  Substrings for collapse mode. All fields which have the same names'
complete -c mlr -n '__fish_seen_subcommand_from merge-fields' -s i -d "Use interpolated percentiles, like R's type=7; default like type=1."
complete -c mlr -n '__fish_seen_subcommand_from merge-fields' -s o -d '{name}   Output field basename for -f/-r.'
complete -c mlr -n '__fish_seen_subcommand_from merge-fields' -s k -d 'Keep the input fields which contributed to the output statistics;'
complete -c mlr -n '__fish_seen_subcommand_from most-frequent' -s f -d '{one or more comma-separated field names}. Required flag.'
complete -c mlr -n '__fish_seen_subcommand_from most-frequent' -s n -d '{count}. Optional flag defaulting to 10.'
complete -c mlr -n '__fish_seen_subcommand_from most-frequent' -s b -d 'Suppress counts; show only field values.'
complete -c mlr -n '__fish_seen_subcommand_from most-frequent' -s o -d '{name}   Field name for output count. Default "count".'
complete -c mlr -n '__fish_seen_subcommand_from nest' -s f -d '{field name}       Required.'
complete -c mlr -n '__fish_seen_subcommand_from nest' -l nested-fs -d '{string}  Defaults to ";". Field separator for nested values.'
complete -c mlr -n '__fish_seen_subcommand_from nest' -l nested-ps -d '{string}  Defaults to ":". Pair separator for nested key-value pairs.'
complete -c mlr -n '__fish_seen_subcommand_from nest' -l evar -d '{string}       Shorthand for --explode --values --across-records --nested-fs {string}'
complete -c mlr -n '__fish_seen_subcommand_from nest' -l ivar -d '{string}       Shorthand for --implode --values --across-records --nested-fs {string}'
complete -c mlr -n '__fish_seen_subcommand_from put' -s f -d '{file name} File containing a DSL expression (see examples below). If the filename'
complete -c mlr -n '__fish_seen_subcommand_from put' -s e -d '{expression} You can use this after -f to add an expression. Example use'
complete -c mlr -n '__fish_seen_subcommand_from put' -s s -d 'name=value: Predefines out-of-stream variable @name to have'
complete -c mlr -n '__fish_seen_subcommand_from put' -s x -d '(default false) Prints records for which {expression} evaluates to false, not true,'
complete -c mlr -n '__fish_seen_subcommand_from put' -s q -d 'Does not include the modified record in the output stream.'
complete -c mlr -n '__fish_seen_subcommand_from put' -s S -d 'and -F: There are no-ops in Miller 6 and above, since now type-inferencing is done'
complete -c mlr -n '__fish_seen_subcommand_from put' -s w -d 'Print warnings about things like uninitialized variables.'
complete -c mlr -n '__fish_seen_subcommand_from put' -s W -d 'Same as -w, but exit the process if there are any warnings.'
complete -c mlr -n '__fish_seen_subcommand_from put' -s p -d "Prints the expressions's AST (abstract syntax tree), which gives full"
complete -c mlr -n '__fish_seen_subcommand_from put' -s d -d 'Like -p but uses a parenthesized-expression format for the AST.'
complete -c mlr -n '__fish_seen_subcommand_from put' -s D -d 'Like -d but with output all on one line.'
complete -c mlr -n '__fish_seen_subcommand_from put' -s E -d 'Echo DSL expression before printing parse-tree'
complete -c mlr -n '__fish_seen_subcommand_from put' -s v -d 'Same as -E -p.'
complete -c mlr -n '__fish_seen_subcommand_from put' -s X -d 'Exit after parsing but before stream-processing. Useful with -v/-d/-D, if you'
complete -c mlr -n '__fish_seen_subcommand_from rename' -s r -d 'Treat old field  names as regular expressions. "ab", "a.*b"'
complete -c mlr -n '__fish_seen_subcommand_from rename' -s g -d 'Do global replacement within each field name rather than'
complete -c mlr -n '__fish_seen_subcommand_from reorder' -s e -d 'Put specified field names at record end: default is to put them at record start.'
complete -c mlr -n '__fish_seen_subcommand_from reorder' -s f -d '{a,b,c} Field names to reorder.'
complete -c mlr -n '__fish_seen_subcommand_from reorder' -s b -d '{x}     Put field names specified with -f before field name specified by {x},'
complete -c mlr -n '__fish_seen_subcommand_from reorder' -s a -d '{x}     Put field names specified with -f after field name specified by {x},'
complete -c mlr -n '__fish_seen_subcommand_from repeat' -s n -d '{repeat count}  Repeat each input record this many times.'
complete -c mlr -n '__fish_seen_subcommand_from repeat' -s f -d '{field name}    Same, but take the repeat count from the specified'
complete -c mlr -n '__fish_seen_subcommand_from reshape' -s i -d '{input field names}   -o {key-field name,value-field name}'
complete -c mlr -n '__fish_seen_subcommand_from reshape' -s r -d '{input field regex} -o {key-field name,value-field name}'
complete -c mlr -n '__fish_seen_subcommand_from reshape' -s s -d '{key-field name,value-field name}'
complete -c mlr -n '__fish_seen_subcommand_from sample' -s g -d '{a,b,c} Optional: group-by-field names for samples, e.g. a,b,c.'
complete -c mlr -n '__fish_seen_subcommand_from sample' -s k -d '{k} Required: number of records to output in total, or by group if using -g.'
complete -c mlr -n '__fish_seen_subcommand_from sec2gmt' -s 1 -d 'through -9: format the seconds using 1..9 decimal places, respectively.'
complete -c mlr -n '__fish_seen_subcommand_from sec2gmt' -l millis -d 'Input numbers are treated as milliseconds since the epoch.'
complete -c mlr -n '__fish_seen_subcommand_from sec2gmt' -l micros -d 'Input numbers are treated as microseconds since the epoch.'
complete -c mlr -n '__fish_seen_subcommand_from sec2gmt' -l nanos -d 'Input numbers are treated as nanoseconds since the epoch.'
complete -c mlr -n '__fish_seen_subcommand_from seqgen' -s f -d '{name} (default "i") Field name for counters.'
complete -c mlr -n '__fish_seen_subcommand_from seqgen' -l start -d '{value} (default 1) Inclusive start value.'
complete -c mlr -n '__fish_seen_subcommand_from seqgen' -l step -d '{value} (default 1) Step value.'
complete -c mlr -n '__fish_seen_subcommand_from seqgen' -l stop -d '{value} (default 100) Inclusive stop value.'
complete -c mlr -n '__fish_seen_subcommand_from sort' -s f -d '{comma-separated field names}  Lexical ascending'
complete -c mlr -n '__fish_seen_subcommand_from sort' -s r -d '{comma-separated field names}  Lexical descending'
complete -c mlr -n '__fish_seen_subcommand_from sort' -s c -d '{comma-separated field names}  Case-folded lexical ascending'
complete -c mlr -n '__fish_seen_subcommand_from sort' -s cr -d '{comma-separated field names}  Case-folded lexical descending'
complete -c mlr -n '__fish_seen_subcommand_from sort' -s n -d '{comma-separated field names}  Numerical ascending; nulls sort last'
complete -c mlr -n '__fish_seen_subcommand_from sort' -s nf -d '{comma-separated field names}  Same as -n'
complete -c mlr -n '__fish_seen_subcommand_from sort' -s nr -d '{comma-separated field names}  Numerical descending; nulls sort first'
complete -c mlr -n '__fish_seen_subcommand_from sort' -s t -d '{comma-separated field names}  Natural ascending'
complete -c mlr -n '__fish_seen_subcommand_from sort-within-records' -s r -d 'Recursively sort subobjects/submaps, e.g. for JSON input.'
complete -c mlr -n '__fish_seen_subcommand_from sparsify' -s s -d '{filler string} What values to remove. Defaults to the empty string.'
complete -c mlr -n '__fish_seen_subcommand_from sparsify' -s f -d "{a,b,c} Specify field names to be operated on; any other fields won't be"
complete -c mlr -n '__fish_seen_subcommand_from split' -s n -d '{n}:      Cap file sizes at N records.'
complete -c mlr -n '__fish_seen_subcommand_from split' -s m -d '{m}:      Produce M files, round-robining records among them.'
complete -c mlr -n '__fish_seen_subcommand_from split' -s g -d '{a,b,c}:  Write separate files with records having distinct values for fields named a,b,c.'
complete -c mlr -n '__fish_seen_subcommand_from split' -l prefix -d '{p} Specify filename prefix; default "split".'
complete -c mlr -n '__fish_seen_subcommand_from split' -l suffix -d '{s} Specify filename suffix; default is from mlr output format, e.g. "csv".'
complete -c mlr -n '__fish_seen_subcommand_from split' -s a -d 'Append to existing file(s), if any, rather than overwriting.'
complete -c mlr -n '__fish_seen_subcommand_from split' -s v -d 'Send records along to downstream verbs as well as splitting to files.'
complete -c mlr -n '__fish_seen_subcommand_from split' -s e -d 'Do NOT URL-escape names of output files.'
complete -c mlr -n '__fish_seen_subcommand_from split' -s j -d '{J}       Use string J to join filename parts; default "_".'
complete -c mlr -n '__fish_seen_subcommand_from ssub' -s f -d '{a,b,c}  Field names to convert.'
complete -c mlr -n '__fish_seen_subcommand_from stats1' -s a -d '{sum,count,...} Names of accumulators: one or more of:'
complete -c mlr -n '__fish_seen_subcommand_from stats1' -s f -d '{a,b,c}     Value-field names on which to compute statistics'
complete -c mlr -n '__fish_seen_subcommand_from stats1' -l fr -d '{regex}   Regex for value-field names on which to compute statistics'
complete -c mlr -n '__fish_seen_subcommand_from stats1' -l fx -d '{regex}   Inverted regex for value-field names on which to compute statistics'
complete -c mlr -n '__fish_seen_subcommand_from stats1' -s g -d '{d,e,f}     Optional group-by-field names'
complete -c mlr -n '__fish_seen_subcommand_from stats1' -l gr -d '{regex}   Regex for optional group-by-field names'
complete -c mlr -n '__fish_seen_subcommand_from stats1' -l gx -d '{regex}   Inverted regex for optional group-by-field names'
complete -c mlr -n '__fish_seen_subcommand_from stats1' -l grfx -d '{regex} Shorthand for --gr {regex} --fx {that same regex}'
complete -c mlr -n '__fish_seen_subcommand_from stats1' -s i -d "Use interpolated percentiles, like R's type=7; default like type=1."
complete -c mlr -n '__fish_seen_subcommand_from stats1' -s s -d 'Print iterative stats. Useful in tail -f contexts, in which'
complete -c mlr -n '__fish_seen_subcommand_from stats2' -s a -d '{linreg-ols,corr,...}  Names of accumulators: one or more of:'
complete -c mlr -n '__fish_seen_subcommand_from stats2' -s f -d '{a,b,c,d}   Value-field name-pairs on which to compute statistics.'
complete -c mlr -n '__fish_seen_subcommand_from stats2' -s g -d '{e,f,g}     Optional group-by-field names.'
complete -c mlr -n '__fish_seen_subcommand_from stats2' -s v -d 'Print additional output for linreg-pca.'
complete -c mlr -n '__fish_seen_subcommand_from stats2' -s s -d 'Print iterative stats. Useful in tail -f contexts, in which'
complete -c mlr -n '__fish_seen_subcommand_from stats2' -l fit -d 'Rather than printing regression parameters, applies them to'
complete -c mlr -n '__fish_seen_subcommand_from step' -s a -d '{delta,rsum,...} Names of steppers: comma-separated, one or more of:'
complete -c mlr -n '__fish_seen_subcommand_from step' -s f -d '{a,b,c}   Value-field names on which to compute statistics'
complete -c mlr -n '__fish_seen_subcommand_from step' -s g -d '{d,e,f}   Optional group-by-field names'
complete -c mlr -n '__fish_seen_subcommand_from step' -s F -d 'Computes integerable things (e.g. counter) in floating point.'
complete -c mlr -n '__fish_seen_subcommand_from step' -s d -d '{x,y,z}   Weights for EWMA. 1 means current sample gets all weight (no'
complete -c mlr -n '__fish_seen_subcommand_from step' -s o -d '{a,b,c}   Custom suffixes for EWMA output fields. If omitted, these default to'
complete -c mlr -n '__fish_seen_subcommand_from sub' -s f -d '{a,b,c}  Field names to convert.'
complete -c mlr -n '__fish_seen_subcommand_from summary' -s a -d '{mean,sum,etc.} Use only the specified summarizers.'
complete -c mlr -n '__fish_seen_subcommand_from summary' -s x -d '{mean,sum,etc.} Use all summarizers, except the specified ones.'
complete -c mlr -n '__fish_seen_subcommand_from summary' -l all -d 'Use all available summarizers.'
complete -c mlr -n '__fish_seen_subcommand_from summary' -l transpose -d 'Show output with field names as column names..'
complete -c mlr -n '__fish_seen_subcommand_from tail' -s g -d '{a,b,c} Optional group-by-field names for head counts, e.g. a,b,c.'
complete -c mlr -n '__fish_seen_subcommand_from tail' -s n -d '{n} Head-count to print. Default 10.'
complete -c mlr -n '__fish_seen_subcommand_from tee' -s a -d 'Append to existing file, if any, rather than overwriting.'
complete -c mlr -n '__fish_seen_subcommand_from tee' -s p -d 'Treat filename as a pipe-to command.'
complete -c mlr -n '__fish_seen_subcommand_from template' -s f -d '{a,b,c} Comma-separated field names for template, e.g. a,b,c.'
complete -c mlr -n '__fish_seen_subcommand_from template' -s t -d '{filename} CSV file whose header line will be used for template.'
complete -c mlr -n '__fish_seen_subcommand_from template' -l fill-with -d '{filler string}  What to fill absent fields with. Defaults to the empty string.'
complete -c mlr -n '__fish_seen_subcommand_from top' -s f -d '{a,b,c}    Value-field names for top counts.'
complete -c mlr -n '__fish_seen_subcommand_from top' -s g -d '{d,e,f}    Optional group-by-field names for top counts.'
complete -c mlr -n '__fish_seen_subcommand_from top' -s n -d '{count}    How many records to print per category; default 1.'
complete -c mlr -n '__fish_seen_subcommand_from top' -s a -d 'Print all fields for top-value records; default is'
complete -c mlr -n '__fish_seen_subcommand_from top' -l min -d 'Print top smallest values; default is top largest values.'
complete -c mlr -n '__fish_seen_subcommand_from top' -s F -d 'Keep top values as floats even if they look like integers.'
complete -c mlr -n '__fish_seen_subcommand_from top' -s o -d '{name}     Field name for output indices. Default "top_idx".'
complete -c mlr -n '__fish_seen_subcommand_from unflatten' -s f -d '{a,b,c} Comma-separated list of field names to unflatten (default all).'
complete -c mlr -n '__fish_seen_subcommand_from unflatten' -s s -d '{string} Separator, defaulting to mlr --flatsep value.'
complete -c mlr -n '__fish_seen_subcommand_from uniq' -s g -d '{d,e,f}    Group-by-field names for uniq counts.'
complete -c mlr -n '__fish_seen_subcommand_from uniq' -s x -d "{a,b,c}    Field names to exclude for uniq: use each record's others instead."
complete -c mlr -n '__fish_seen_subcommand_from uniq' -s c -d 'Show repeat counts in addition to unique values.'
complete -c mlr -n '__fish_seen_subcommand_from uniq' -s n -d 'Show only the number of distinct values.'
complete -c mlr -n '__fish_seen_subcommand_from uniq' -s o -d '{name}     Field name for output count. Default "count".'
complete -c mlr -n '__fish_seen_subcommand_from uniq' -s a -d 'Output each unique record only once. Incompatible with -g.'
complete -c mlr -n '__fish_seen_subcommand_from unspace' -s f -d '{x}    Replace spaces with specified filler character.'
complete -c mlr -n '__fish_seen_subcommand_from unspace' -s k -d 'Unspace only keys, not keys and values.'
complete -c mlr -n '__fish_seen_subcommand_from unspace' -s v -d 'Unspace only values, not keys and values.'
complete -c mlr -n '__fish_seen_subcommand_from unsparsify' -l fill-with -d '{filler string}  What to fill absent fields with. Defaults to'
complete -c mlr -n '__fish_seen_subcommand_from unsparsify' -s f -d "{a,b,c} Specify field names to be operated on. Any other fields won't be"




complete -c mlr -n __fish_use_subcommand -a altkv -d 'Given fields with values of the form a,b,c,d,e,f emits a=b,c=d,e=f pairs.'
complete -c mlr -n __fish_use_subcommand -a bar -d 'Replaces a numeric field with a number of asterisks, allowing for cheesy'
complete -c mlr -n __fish_use_subcommand -a bootstrap -d 'Emits an n-sample, with replacement, of the input records.'
complete -c mlr -n __fish_use_subcommand -a case -d 'Uppercases strings in record keys and/or values.'
complete -c mlr -n __fish_use_subcommand -a cat -d 'Passes input records directly to output. Most useful for format conversion.'
complete -c mlr -n __fish_use_subcommand -a check -d 'Consumes records without printing any output,'
complete -c mlr -n __fish_use_subcommand -a clean-whitespace -d 'For each record, for each field in the record, whitespace-cleans the keys and/or'
complete -c mlr -n __fish_use_subcommand -a count-distinct -d 'Prints number of records having distinct values for specified field names.'
complete -c mlr -n __fish_use_subcommand -a count -d 'Prints number of records, optionally grouped by distinct values for specified field names.'
complete -c mlr -n __fish_use_subcommand -a count-similar -d 'Ingests all records, then emits each record augmented by a count of'
complete -c mlr -n __fish_use_subcommand -a cut -d 'Passes through input records with specified fields included/excluded.'
complete -c mlr -n __fish_use_subcommand -a decimate -d 'Passes through one of every n records, optionally by category.'
complete -c mlr -n __fish_use_subcommand -a fill-down -d 'If a given record has a missing value for a given field, fill that from'
complete -c mlr -n __fish_use_subcommand -a fill-empty -d 'Fills empty-string fields with specified fill-value.'
complete -c mlr -n __fish_use_subcommand -a filter -d 'Lets you use a domain-specific language to programatically filter which'
complete -c mlr -n __fish_use_subcommand -a flatten -d "Flattens multi-level maps to single-level ones. Example: field with name 'a'"
complete -c mlr -n __fish_use_subcommand -a format-values -d 'Applies format strings to all field values, depending on autodetected type.'
complete -c mlr -n __fish_use_subcommand -a fraction -d "For each record's value in specified fields, computes the ratio of that"
complete -c mlr -n __fish_use_subcommand -a gap -d 'Emits an empty record every n records, or when certain values change.'
complete -c mlr -n __fish_use_subcommand -a grep -d 'Passes through records which match the regular expression.'
complete -c mlr -n __fish_use_subcommand -a group-by -d 'Outputs records in batches having identical values at specified field names.Options:'
complete -c mlr -n __fish_use_subcommand -a group-like -d 'Outputs records in batches having identical field names.'
complete -c mlr -n __fish_use_subcommand -a gsub -d 'Replaces old string with new string in specified field(s), with regex support'
complete -c mlr -n __fish_use_subcommand -a having-fields -d "Conditionally passes through records depending on each record's field names."
complete -c mlr -n __fish_use_subcommand -a head -d 'Passes through the first n records, optionally by category.'
complete -c mlr -n __fish_use_subcommand -a histogram -d 'Usage: mlr histogram [options]'
complete -c mlr -n __fish_use_subcommand -a json-parse -d 'Tries to convert string field values to parsed JSON, e.g. "[1,2,3]" -> [1,2,3].'
complete -c mlr -n __fish_use_subcommand -a json-stringify -d 'Produces string field values from field-value data, e.g. [1,2,3] -> "[1,2,3]".'
complete -c mlr -n __fish_use_subcommand -a join -d 'Joins records from specified left file name with records from all file names'
complete -c mlr -n __fish_use_subcommand -a label -d 'Given n comma-separated names, renames the first n fields of each record to'
complete -c mlr -n __fish_use_subcommand -a latin1-to-utf8 -d 'Recursively converts record strings from Latin-1 to UTF-8.'
complete -c mlr -n __fish_use_subcommand -a least-frequent -d 'Shows the least frequently occurring distinct values for specified field names.'
complete -c mlr -n __fish_use_subcommand -a merge-fields -d 'Computes univariate statistics for each input record, accumulated across'
complete -c mlr -n __fish_use_subcommand -a most-frequent -d 'Shows the most frequently occurring distinct values for specified field names.'
complete -c mlr -n __fish_use_subcommand -a nest -d 'Explodes specified field values into separate fields/records, or reverses this.'
complete -c mlr -n __fish_use_subcommand -a nothing -d 'Drops all input records. Useful for testing, or after tee/print/etc. have'
complete -c mlr -n __fish_use_subcommand -a put -d 'Lets you use a domain-specific language to programatically alter stream records.'
complete -c mlr -n __fish_use_subcommand -a regularize -d 'Outputs records sorted lexically ascending by keys.'
complete -c mlr -n __fish_use_subcommand -a remove-empty-columns -d 'Omits fields which are empty on every input row. Non-streaming.'
complete -c mlr -n __fish_use_subcommand -a rename -d 'Renames specified fields.'
complete -c mlr -n __fish_use_subcommand -a reorder -d 'Moves specified names to start of record, or end of record.'
complete -c mlr -n __fish_use_subcommand -a repeat -d 'Copies input records to output records multiple times.'
complete -c mlr -n __fish_use_subcommand -a reshape -d 'Wide-to-long options:'
complete -c mlr -n __fish_use_subcommand -a sample -d 'Reservoir sampling (subsampling without replacement), optionally by category.'
complete -c mlr -n __fish_use_subcommand -a sec2gmtdate -d 'Replaces a numeric field representing seconds since the epoch with the'
complete -c mlr -n __fish_use_subcommand -a sec2gmt -d 'Replaces a numeric field representing seconds since the epoch with the'
complete -c mlr -n __fish_use_subcommand -a seqgen -d 'Passes input records directly to output. Most useful for format conversion.'
complete -c mlr -n __fish_use_subcommand -a shuffle -d 'Outputs records randomly permuted. No output records are produced until'
complete -c mlr -n __fish_use_subcommand -a skip-trivial-records -d 'Passes through all records except those with zero fields,'
complete -c mlr -n __fish_use_subcommand -a sort -d 'Sorts records primarily by the first specified field, secondarily by the second'
complete -c mlr -n __fish_use_subcommand -a sort-within-records -d 'Outputs records sorted lexically ascending by keys.'
complete -c mlr -n __fish_use_subcommand -a sparsify -d 'Unsets fields for which the key is the empty string (or, optionally, another'
complete -c mlr -n __fish_use_subcommand -a split -d Options:
complete -c mlr -n __fish_use_subcommand -a ssub -d 'Replaces old string with new string in specified field(s), without regex support for'
complete -c mlr -n __fish_use_subcommand -a stats1 -d 'Computes univariate statistics for one or more given fields, accumulated across'
complete -c mlr -n __fish_use_subcommand -a stats2 -d 'Computes bivariate statistics for one or more given field-name pairs,'
complete -c mlr -n __fish_use_subcommand -a step -d 'Computes values dependent on earlier/later records, optionally grouped by category.'
complete -c mlr -n __fish_use_subcommand -a sub -d 'Replaces old string with new string in specified field(s), with regex support'
complete -c mlr -n __fish_use_subcommand -a summary -d 'Show summary statistics about the input data.'
complete -c mlr -n __fish_use_subcommand -a tac -d 'Prints records in reverse order from the order in which they were encountered.'
complete -c mlr -n __fish_use_subcommand -a tail -d 'Passes through the last n records, optionally by category.'
complete -c mlr -n __fish_use_subcommand -a tee -d Options:
complete -c mlr -n __fish_use_subcommand -a template -d 'Places input-record fields in the order specified by list of column names.'
complete -c mlr -n __fish_use_subcommand -a top -d '-f {a,b,c}    Value-field names for top counts.'
complete -c mlr -n __fish_use_subcommand -a utf8-to-latin1 -d 'Recursively converts record strings from Latin-1 to UTF-8.'
complete -c mlr -n __fish_use_subcommand -a unflatten -d "Reverses flatten. Example: field with name 'a.b.c' and value 4"
complete -c mlr -n __fish_use_subcommand -a uniq -d 'Prints distinct values for specified field names. With -c, same as'
complete -c mlr -n __fish_use_subcommand -a unspace -d 'Replaces spaces in record keys and/or values with _. This is helpful for PPRINT output.'
complete -c mlr -n __fish_use_subcommand -a unsparsify -d 'Prints records with the union of field names over all input records.'



#__fish_seen_subcommand_from help
set topics (mlr help topics|rg "^\s+mlr help (.+)" -r '$1')
complete -c mlr -n __fish_seen_subcommand_from --force-files
complete -c mlr -n '__fish_seen_subcommand_from help' -x -a "$topics"
complete -c mlr -n '__fish_no_arguments' -x -a "$(mlr help list-verbs)"

#complete -c mlr -n 'not __fish_no_arguments'  --force-files