complete -c csvchk -s s -l separator -d '<SEPARATOR>'
complete -c csvchk -s l -l limit -d '<LIMIT>          [default: 1]'
complete -c csvchk -s n -l number
complete -c csvchk -s N -l no-headers
complete -c csvchk -s d -l dense
complete -c csvchk -s c -l columns -d '<COLUMNS>'
complete -c csvchk -s g -l grep -d '<GREP>'
complete -c csvchk -s i -l insensitive
complete -c csvchk -s h -l help -d 'Print help'
complete -c csvchk -n __fish_no_arguments -s V -l version -d 'Print version'
