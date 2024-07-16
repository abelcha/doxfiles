complete -c csvcut -s h -l help -d 'show this help message and exit'
complete -c csvcut -s d -d 'DELIMITER, --delimiter DELIMITER'
complete -c csvcut -s t -l tabs -d 'Specify that the input CSV file is delimited with'
complete -c csvcut -s q -d 'QUOTECHAR, --quotechar QUOTECHAR'
complete -c csvcut -s u -d '{0,1,2,3}, --quoting {0,1,2,3}'
complete -c csvcut -s b -l no-doublequote -d 'Whether or not double quotes are doubled in the input'
complete -c csvcut -s p -d 'ESCAPECHAR, --escapechar ESCAPECHAR'
complete -c csvcut -s z -d 'FIELD_SIZE_LIMIT, --maxfieldsize FIELD_SIZE_LIMIT'
complete -c csvcut -s e -d 'ENCODING, --encoding ENCODING'
complete -c csvcut -s H -l no-header-row -d 'Specify that the input CSV file has no header row.'
complete -c csvcut -s K -d 'SKIP_LINES, --skip-lines SKIP_LINES'
complete -c csvcut -s v -l verbose -d 'Print detailed tracebacks when errors occur.'
complete -c csvcut -s l -l linenumbers -d 'Insert a column of line numbers at the front of the'
complete -c csvcut -l zero -d 'When interpreting or displaying column numbers, use'
complete -c csvcut -n __fish_no_arguments -s V -l version -d 'Display version information and exit.'
complete -c csvcut -s n -l names -d 'Display column names and indices from the input CSV'
complete -c csvcut -s c -d 'COLUMNS, --columns COLUMNS'
complete -c csvcut -s C -d 'NOT_COLUMNS, --not-columns NOT_COLUMNS'
