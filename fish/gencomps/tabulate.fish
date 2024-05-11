complete -c tabulate -s h -l help -d 'show this message'
complete -c tabulate -s 1 -l header -d 'use the first row of data as a table header'
complete -c tabulate -s o -d 'FILE, --output FILE    print table to FILE (default: stdout)'
complete -c tabulate -s s -d 'REGEXP, --sep REGEXP   use a custom column separator (default: whitespace)'
complete -c tabulate -s F -d 'FPFMT, --float FPFMT   floating point number format (default: g)'
complete -c tabulate -s I -d 'INTFMT, --int INTFMT   integer point number format (default: "")'
complete -c tabulate -s f -d 'FMT, --format FMT      set output table format; supported formats:'