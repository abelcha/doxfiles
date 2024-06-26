complete -c csvjson -s h -l help -d 'show this help message and exit'
complete -c csvjson -s d -d 'DELIMITER, --delimiter DELIMITER'
complete -c csvjson -s t -l tabs -d 'Specify that the input CSV file is delimited with'
complete -c csvjson -s q -d 'QUOTECHAR, --quotechar QUOTECHAR'
complete -c csvjson -s u -d '{0,1,2,3}, --quoting {0,1,2,3}'
complete -c csvjson -s b -l no-doublequote -d 'Whether or not double quotes are doubled in the input'
complete -c csvjson -s p -d 'ESCAPECHAR, --escapechar ESCAPECHAR'
complete -c csvjson -s z -d 'FIELD_SIZE_LIMIT, --maxfieldsize FIELD_SIZE_LIMIT'
complete -c csvjson -s e -d 'ENCODING, --encoding ENCODING'
complete -c csvjson -s L -d 'LOCALE, --locale LOCALE'
complete -c csvjson -l blanks -d 'Do not convert "", "na", "n/a", "none", "null", "." to'
complete -c csvjson -l null-value -d 'NULL_VALUES [NULL_VALUES ...]'
complete -c csvjson -l date-format -d DATE_FORMAT
complete -c csvjson -l datetime-format -d DATETIME_FORMAT
complete -c csvjson -s H -l no-header-row -d 'Specify that the input CSV file has no header row.'
complete -c csvjson -s K -d 'SKIP_LINES, --skip-lines SKIP_LINES'
complete -c csvjson -s v -l verbose -d 'Print detailed tracebacks when errors occur.'
complete -c csvjson -s l -l linenumbers -d 'Insert a column of line numbers at the front of the'
complete -c csvjson -l zero -d 'When interpreting or displaying column numbers, use'
complete -c csvjson -n __fish_no_arguments -s V -l version -d 'Display version information and exit.'
complete -c csvjson -s i -d 'INDENT, --indent INDENT'
complete -c csvjson -s k -d 'KEY, --key KEY     Output JSON as an object keyed by a given column, KEY,'
complete -c csvjson -l lat -d 'LAT             A column index or name containing a latitude. Output'
complete -c csvjson -l lon -d 'LON             A column index or name containing a longitude. Output'
complete -c csvjson -l type -d 'TYPE           A column index or name containing a GeoJSON type.'
complete -c csvjson -l geometry -d 'GEOMETRY   A column index or name containing a GeoJSON geometry.'
complete -c csvjson -l crs -d 'CRS             A coordinate reference system string to be included'
complete -c csvjson -l no-bbox -d 'Disable the calculation of a bounding box.'
complete -c csvjson -l stream -d 'Output JSON as a stream of newline-separated objects,'
complete -c csvjson -s y -d 'SNIFF_LIMIT, --snifflimit SNIFF_LIMIT'
complete -c csvjson -s I -l no-inference -d 'Disable type inference (and --locale, --date-format,'
