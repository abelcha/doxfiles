complete -c shiki -s h -l help -d 'Show this help message'
complete -c shiki -s t -l theme -d 'Theme name (default: vitesse-dark)' -x -a '(shiki --list-themes)'
complete -c shiki -s l -l lang -d 'Language name (default: autodetect)' -x -a '(shiki --list-langs)'
complete -c shiki -l list-themes -d 'List available themes'
complete -c shiki -l list-langs -d 'List available languages'
