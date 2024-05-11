complete -c csvclean -s h -l help -d 'show this help message and exit'
complete -c csvclean -s d -d 'DELIMITER, --delimiter DELIMITER'
complete -c csvclean -s t -l tabs -d 'Specify that the input CSV file is delimited with'
complete -c csvclean -s q -d 'QUOTECHAR, --quotechar QUOTECHAR'
complete -c csvclean -s u -d '{0,1,2,3}, --quoting {0,1,2,3}'
complete -c csvclean -s b -l no-doublequote -d 'Whether or not double quotes are doubled in the input'
complete -c csvclean -s p -d 'ESCAPECHAR, --escapechar ESCAPECHAR'
complete -c csvclean -s z -d 'FIELD_SIZE_LIMIT, --maxfieldsize FIELD_SIZE_LIMIT'
complete -c csvclean -s e -d 'ENCODING, --encoding ENCODING'
complete -c csvclean -s H -l no-header-row -d 'Specify that the input CSV file has no header row.'
complete -c csvclean -s K -d 'SKIP_LINES, --skip-lines SKIP_LINES'
complete -c csvclean -s v -l verbose -d 'Print detailed tracebacks when errors occur.'
complete -c csvclean -s l -l linenumbers -d 'Insert a column of line numbers at the front of the'
complete -c csvclean -l zero -d 'When interpreting or displaying column numbers, use'
complete -c csvclean -n __fish_no_arguments -s V -l version -d 'Display version information and exit.'
complete -c csvclean -s n -l dry-run -d 'Do not create output files. Information about what'