#string replace -a -- {} mysql2csv {} --help
complete -c mysql2csv -l dbname -d string
complete -c mysql2csv -l host -d string
complete -c mysql2csv -l output -d string
complete -c mysql2csv -l pass -d string
complete -c mysql2csv -l port -d int
complete -c mysql2csv -l query -d string
complete -c mysql2csv -l user -d string
