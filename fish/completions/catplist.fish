# string replace -a -- {} catplist  {} --help

complete -c catplist -s R -l raw -d 'print raw plist contents, will not unpack'
complete -c catplist -s r -l recurse -d 'recurse into subdirs, reads all files'
complete -c catplist -s f -l format -d '[python|json|yaml]'
complete -c catplist -l help -d 'Show this message and exit.'
