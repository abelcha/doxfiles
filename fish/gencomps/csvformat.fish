complete -c csvformat -s h -l help -d 'show this help message and exit'
complete -c csvformat -s d -d 'DELIMITER, --delimiter DELIMITER'
complete -c csvformat -s t -l tabs -d 'Specify that the input CSV file is delimited with'
complete -c csvformat -s q -d 'QUOTECHAR, --quotechar QUOTECHAR'
complete -c csvformat -s u -d '{0,1,2,3}, --quoting {0,1,2,3}'
complete -c csvformat -s b -l no-doublequote -d 'Whether or not double quotes are doubled in the input'
complete -c csvformat -s p -d 'ESCAPECHAR, --escapechar ESCAPECHAR'
complete -c csvformat -s z -d 'FIELD_SIZE_LIMIT, --maxfieldsize FIELD_SIZE_LIMIT'
complete -c csvformat -s e -d 'ENCODING, --encoding ENCODING'
complete -c csvformat -s H -l no-header-row -d 'Specify that the input CSV file has no header row.'
complete -c csvformat -s K -d 'SKIP_LINES, --skip-lines SKIP_LINES'
complete -c csvformat -s v -l verbose -d 'Print detailed tracebacks when errors occur.'
complete -c csvformat -s l -l linenumbers -d 'Insert a column of line numbers at the front of the'
complete -c csvformat -l zero -d 'When interpreting or displaying column numbers, use'
complete -c csvformat -n __fish_no_arguments -s V -l version -d 'Display version information and exit.'
complete -c csvformat -s E -l skip-header -d 'Do not output a header row.'
complete -c csvformat -s D -d 'OUT_DELIMITER, --out-delimiter OUT_DELIMITER'
complete -c csvformat -s T -l out-tabs -d 'Specify that the output CSV file is delimited with'
complete -c csvformat -s Q -d 'OUT_QUOTECHAR, --out-quotechar OUT_QUOTECHAR'
complete -c csvformat -s U -d '{0,1,2,3}, --out-quoting {0,1,2,3}'
complete -c csvformat -s P -d 'OUT_ESCAPECHAR, --out-escapechar OUT_ESCAPECHAR'
complete -c csvformat -s M -d 'OUT_LINETERMINATOR, --out-lineterminator OUT_LINETERMINATOR'
