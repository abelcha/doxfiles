complete -c precat -s h -l help -d 'display help'
complete -c precat -s d -l decompress -d 'force decompression'
complete -c precat -s z -l compress -d 'force compression'
complete -c precat -s L -l license -d 'display software license'
complete -c precat -n __fish_no_arguments -s V -l version -d 'display version'
complete -c precat -s c -l stdout -d 'decompress to standard output'
complete -c precat -s f -l force -d force
complete -c precat -s k -l keep -d 'keep input files'
complete -c precat -s s -l sort -d 'sort and remove duplicates before compressing'
complete -c precat -s S -l nocwl -d 'do not rename .wl suffix to .cwl (use .wl.pz instead)'
complete -c precat -s q -l quiet -d 'suppress all warnings'
