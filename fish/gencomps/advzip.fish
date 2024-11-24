#string replace -a -- {} advzip  {} --help
complete -c advzip -s a -l add -d 'Create a new archive with the specified files'
complete -c advzip -s x -l extract -d 'Extract the content of an archive'
complete -c advzip -s l -l list -d 'List the content of the archives'
complete -c advzip -s t -l test -d 'Test the specified archives'
complete -c advzip -s z -l recompress -d 'Recompress the specified archives'
complete -c advzip -s p -l pedantic -d 'Be pedantic on the zip tests'
complete -c advzip -s 0 -l shrink-store -d Don\'t\ compress
complete -c advzip -s 1 -l shrink-fast -d 'Compress fast (zlib)'
complete -c advzip -s 2 -l shrink-normal -d 'Compress normal (libdeflate)'
complete -c advzip -s 3 -l shrink-extra -d 'Compress extra (7z)'
complete -c advzip -s 4 -l shrink-insane -d 'Compress extreme (zopfli)'
complete -c advzip -s i -d 'N, --iter=N        Compress iterations'
complete -c advzip -s k -l keep-file-time -d REZIP!\ Don\'t\ alter\ zip\ time
complete -c advzip -s q -l quiet -d Don\'t\ print\ on\ the\ console
complete -c advzip -s h -l help -d 'Help of the program'
complete -c advzip -n __fish_no_arguments -s V -l version -d 'Version of the program'
