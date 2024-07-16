complete -c stdrename -s c -l camel -d 'Uses the camelCase naming convention'
complete -c stdrename -s k -l kebab -d 'Uses the kebab-case naming convention'
complete -c stdrename -s p -l pascal -d 'Uses the PascalCase naming convention'
complete -c stdrename -l screaming -d 'Uses the SCREAMING_SNAKE_CASE naming convention'
complete -c stdrename -s S -l sentence -d 'Uses the Sentence case naming convention'
complete -c stdrename -s s -l snake -d 'Uses the snake_case naming convention'
complete -c stdrename -s T -l title -d 'Uses the Title Case naming convention'
complete -c stdrename -s t -l train -d 'Uses the Train-Case naming convention'
complete -c stdrename -s r -l recursive -d 'Makes renaming recursive, renaming files in subfolders as well'
complete -c stdrename -s D -l dir -d 'Renames directories as well'
complete -c stdrename -l text -d 'Reads lines from stdin and translates them to the given convention in stdout until the first'
complete -c stdrename -s q -l quiet -d 'Suppress output'
complete -c stdrename -s h -l help -d 'Prints help information'
complete -c stdrename -n __fish_no_arguments -s V -l version -d 'Prints version information'