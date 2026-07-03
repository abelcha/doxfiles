complete -c "ug" -s "A" -l "after-context" -d "Output NUM lines of trailing context after matching lines." # global
complete -c "ug" -s "a" -l "text" -d "Process a binary file as if it were text." # global
complete -c "ug" -s "@" -l "all" -d "Search all files except hidden: cancel previous file and directory search restrictions and cancel --ignore-binary and --ignore-files when specified." # global
complete -c "ug" -l "and" -d "Specify additional PATTERN that must match." # global
complete -c "ug" -l "andnot" -d "Combines --and --not." # global
complete -c "ug" -s "B" -l "before-context" -d "Output NUM lines of leading context before matching lines." # global
complete -c "ug" -s "b" -l "byte-offset" -d "The offset in bytes of a pattern match is displayed in front of the respective matched line." # global
complete -c "ug" -l "binary-files" -d "Controls searching and reporting pattern matches in binary files." -xa "binary without-match text hex with-hex" # global
complete -c "ug" -s "%" -l "bool" -d "Specifies Boolean query patterns." # global
complete -c "ug" -l "break" -d "Adds a line break between results from different files." # global
complete -c "ug" -s "C" -l "context" -d "Output NUM lines of leading and trailing context surrounding each matching line." # global
complete -c "ug" -s "c" -l "count" -d "Only a count of selected lines is written to standard output." # global
complete -c "ug" -l "color" -d "Mark up the matching text with the colors specified." -xa "never always auto" # global
complete -c "ug" -l "colors" -d "Use COLORS to mark up text." # global
complete -c "ug" -l "config" -d "Use configuration FILE." # global
complete -c "ug" -l "no-config" -d "Do not automatically load the default .ugrep configuration file." # global
complete -c "ug" -l "no-confirm" -d "Do not confirm actions in -Q query TUI." # global
complete -c "ug" -l "cpp" -d "Output file matches in C++." # global
complete -c "ug" -l "csv" -d "Output file matches in CSV." # global
complete -c "ug" -s "D" -l "devices" -d "If an input file is a device, FIFO or socket, use ACTION to process it." -xa "skip read" # global
complete -c "ug" -s "d" -l "directories" -d "If an input file is a directory, use ACTION to process it." -xa "read recurse dereference-recurse" # global
complete -c "ug" -l "delay" -d "Set the default -Q key response delay." # global
complete -c "ug" -s "1" -l "depth" -d "Restrict recursive searches from MIN to MAX directory levels deep." # global
complete -c "ug" -l "dotall" -d "Dot `.' in regular expressions matches anything, including newline." # global
complete -c "ug" -s "E" -l "extended-regexp" -d "Interpret patterns as extended regular expressions (EREs)." # global
complete -c "ug" -s "e" -l "regexp" -d "Specify a PATTERN to search the input." # global
complete -c "ug" -l "encoding" -d "The encoding format of the input." -xa "binary ASCII UTF-8 UTF-16 UTF-16BE UTF-16LE UTF-32 UTF-32BE UTF-32LE LATIN1 ISO-8859-1 ISO-8859-2 ISO-8859-3 ISO-8859-4 ISO-8859-5 ISO-8859-6 ISO-8859-7 ISO-8859-8 ISO-8859-9 ISO-8859-10 ISO-8859-11 ISO-8859-13 ISO-8859-14 ISO-8859-15 ISO-8859-16 MAC MACROMAN EBCDIC CP437 CP850 CP858 CP1250 CP1251 CP1252 CP1253 CP1254 CP1255 CP1256 CP1257 CP1258 KOI8-R KOI8-U KOI8-RU null-data" # global
complete -c "ug" -l "exclude" -d "Exclude files whose name matches GLOB." # global
complete -c "ug" -l "exclude-dir" -d "Exclude directories whose name matches GLOB." # global
complete -c "ug" -l "exclude-from" -d "Read the globs from FILE and skip files and directories." # global
complete -c "ug" -l "exclude-fs" -d "Exclude file systems specified by MOUNTS." # global
complete -c "ug" -s "F" -l "fixed-strings" -d "Interpret pattern as a set of fixed strings." # global
complete -c "ug" -s "f" -l "file" -d "Read newline-separated patterns from FILE." # global
complete -c "ug" -l "files" -d "Boolean file matching mode." # global
complete -c "ug" -l "filter" -d "Filter files through the specified COMMANDS first before searching." # global
complete -c "ug" -l "filter-magic-label" -d "Associate LABEL with files whose signature \"magic bytes\" match the MAGIC regex pattern." # global
complete -c "ug" -l "format" -d "Output FORMAT-formatted matches." # global
complete -c "ug" -l "free-space" -d "Spacing (blanks and tabs) in regular expressions are ignored." # global
complete -c "ug" -l "from" -d "Read additional pathnames of files to search from FILE." # global
complete -c "ug" -s "G" -l "basic-regexp" -d "Interpret patterns as basic regular expressions (BREs)." # global
complete -c "ug" -s "g" -l "glob" -d "Only search files whose name matches the specified comma-separated list of GLOBS." # global
complete -c "ug" -l "glob-ignore-case" -d "Perform case-insensitive glob matching in general." # global
complete -c "ug" -l "group-separator" -d "Use SEP as a group separator for context options -A, -B and -C." # global
complete -c "ug" -l "no-group-separator" -d "Removes the group separator line from the output." # global
complete -c "ug" -s "H" -l "with-filename" -d "Always print the filename with output lines." # global
complete -c "ug" -s "h" -l "no-filename" -d "Never print filenames with output lines." # global
complete -c "ug" -s "+" -l "heading" -d "Group matches per file." # global
complete -c "ug" -s "?" -l "help" -d "Display a help message on options related to WHAT when specified." # global
complete -c "ug" -l "hexdump" -d "Output matches in 1 to 8 columns of 8 hexadecimal octets." # global
complete -c "ug" -s "." -l "hidden" -d "Search hidden files and directories" # global
complete -c "ug" -l "hyperlink" -d "Hyperlinks are enabled for file names when colors are enabled." # global
complete -c "ug" -s "I" -l "ignore-binary" -d "Ignore matches in binary files." # global
complete -c "ug" -s "i" -l "ignore-case" -d "Perform case insensitive matching." # global
complete -c "ug" -l "ignore-files" -d "Ignore files and directories matching the globs in each FILE." # global
complete -c "ug" -l "no-ignore-files" -d "Do not ignore files." # global
complete -c "ug" -l "include" -d "Only search files whose name matches GLOB." # global
complete -c "ug" -l "include-dir" -d "Only directories whose name matches GLOB are included." # global
complete -c "ug" -l "include-from" -d "Read the globs from FILE and search only files and directories." # global
complete -c "ug" -l "include-fs" -d "Only file systems specified by MOUNTS are included." # global
complete -c "ug" -l "index" -d "Perform fast index-based recursive search." # global
complete -c "ug" -s "J" -l "jobs" -d "Specifies the number of threads spawned to search files." # global
complete -c "ug" -s "j" -l "smart-case" -d "Perform case insensitive matching, unless a pattern is specified with a literal upper case letter." # global
complete -c "ug" -l "json" -d "Output file matches in JSON." # global
complete -c "ug" -s "K" -l "range" -d "Start searching at line MIN, stop reading input after line MAX." # global
complete -c "ug" -s "k" -l "column-number" -d "The column number of a pattern match is displayed in front of the respective matched line." # global
complete -c "ug" -s "L" -l "files-without-match" -d "Only the names of files not containing selected lines are written." # global
complete -c "ug" -s "l" -l "files-with-matches" -d "Only the names of files containing selected lines are written." # global
complete -c "ug" -l "label" -d "Displays the LABEL value when input is read from standard input." # global
complete -c "ug" -l "line-buffered" -d "Force output to be line buffered instead of block buffered." # global
complete -c "ug" -l "lines" -d "Boolean line matching mode." # global
complete -c "ug" -s "M" -l "file-magic" -d "Only search files matching the magic signature pattern MAGIC." # global
complete -c "ug" -s "m" -l "min-count" -d "Require MIN matches, stop reading input upon MAX matches." # global
complete -c "ug" -l "match" -d "Match all lines." # global
complete -c "ug" -l "max-files" -d "Restrict the number of files matched to NUM." # global
complete -c "ug" -l "max-size" -d "Only search files whose physical size does not exceed MAX bytes." # global
complete -c "ug" -l "min-size" -d "Only search files whose physical size equals or exceeds MIN bytes." # global
complete -c "ug" -l "mmap" -d "Use memory maps to search files." # global
complete -c "ug" -s "N" -l "neg-regexp" -d "Specify a negative PATTERN to reject specific -e PATTERN matches." # global
complete -c "ug" -s "n" -l "line-number" -d "Each output line is preceded by its relative line number in the file." # global
complete -c "ug" -l "not" -d "Specifies that PATTERN should not match." # global
complete -c "ug" -s "0" -l "null" -d "Output a zero byte after the file name." # global
complete -c "ug" -l "null-data" -d "Input and output are treated as sequences of lines with each line terminated by a zero byte." # global
complete -c "ug" -s "O" -l "file-extension" -d "Only search files whose filename extensions match the specified comma-separated list of EXTENSIONS." # global
complete -c "ug" -s "o" -l "only-matching" -d "Only the matching part of a pattern match is output." # global
complete -c "ug" -l "only-line-number" -d "Only the line number of a matching line is output." # global
complete -c "ug" -s "P" -l "perl-regexp" -d "Interpret PATTERN as a Perl regular expression using PCRE2." # global
complete -c "ug" -s "p" -l "no-dereference" -d "If -R or -r is specified, do not follow symbolic links." # global
complete -c "ug" -l "pager" -d "Uses COMMAND to page through the output." # global
complete -c "ug" -l "pretty" -d "When output is sent to the terminal, enables options." -xa "never always auto" # global
complete -c "ug" -s "Q" -l "query" -d "Query mode: start a TUI to perform interactive searches." # global
complete -c "ug" -s "q" -l "quiet" -d "Quiet mode: suppress all output." # global
complete -c "ug" -s "R" -l "dereference-recursive" -d "Recursively read all files under each directory, following symbolic links." # global
complete -c "ug" -s "r" -l "recursive" -d "Recursively read all files under each directory." # global
complete -c "ug" -l "replace" -d "Replace matching patterns in the output by FORMAT." # global
complete -c "ug" -s "S" -l "dereference-files" -d "When -r is specified, follow symbolic links to files, but not to directories." # global
complete -c "ug" -s "s" -l "no-messages" -d "Silent mode: nonexistent and unreadable files are ignored." # global
complete -c "ug" -l "save-config" -d "Save configuration FILE to include OPTIONS." # global
complete -c "ug" -l "separator" -d "Use SEP as field separator between file name, line number, column number, byte offset and the matched line." # global
complete -c "ug" -l "split" -d "Split the -Q query TUI screen on startup." # global
complete -c "ug" -l "sort" -d "Displays matching files in the order specified by KEY." # global
complete -c "ug" -l "stats" -d "Output statistics on the number of files and directories searched." # global
complete -c "ug" -s "T" -l "initial-tab" -d "Add a tab space to separate the file name, line number, column number and byte offset with the matched line." # global
complete -c "ug" -s "t" -l "file-type" -d "Search only files associated with TYPES." # global
complete -c "ug" -l "tabs" -d "Set the tab size to NUM to expand tabs." # global
complete -c "ug" -l "tag" -d "Disables colors to mark up matches with TAG." # global
complete -c "ug" -s "^" -l "tree" -d "Output directories with matching files in a tree-like format." # global
complete -c "ug" -s "U" -l "ascii" -d "Disables Unicode matching for ASCII and binary matching." # global
complete -c "ug" -s "u" -l "ungroup" -d "Do not group multiple pattern matches on the same matched line." # global
complete -c "ug" -s "V" -l "version" -d "Display version with linked libraries and exit." # global
complete -c "ug" -s "v" -l "invert-match" -d "Selected lines are those not matching any of the specified patterns." # global
complete -c "ug" -l "view" -d "Use COMMAND to view/edit a file in -Q query TUI by pressing CTRL-Y." # global
complete -c "ug" -s "W" -l "with-hex" -d "Output binary matches in hexadecimal." # global
complete -c "ug" -s "w" -l "word-regexp" -d "The PATTERN is searched for as a word." # global
complete -c "ug" -l "width" -d "Truncate the output to NUM visible characters per line." # global
complete -c "ug" -s "X" -l "hex" -d "Output matches and matching lines in hexadecimal." # global
complete -c "ug" -s "x" -l "line-regexp" -d "Select only those matches that exactly match the whole line." # global
complete -c "ug" -l "xml" -d "Output file matches in XML." # global
complete -c "ug" -s "Y" -l "empty" -d "Empty-matching patterns match all lines." # global
complete -c "ug" -s "y" -l "any-line" -d "Any line is output (passthru)." # global
complete -c "ug" -s "Z" -l "fuzzy" -d "Fuzzy mode: report approximate pattern matches within MAX errors." # global
complete -c "ug" -s "z" -l "decompress" -d "Search compressed files and archives." # global
complete -c "ug" -l "zmax" -d "Searches the contents of compressed files and archives stored within archives by up to NUM expansion stages." # global