set -l themes (zat --list-themes |sd '\s{2,}.+' '')

complete -c zat -s l -l language -x -a '(zat --list-languages)'
complete -c zat -s t -l theme -x -a "$themes"
complete -c zat -s d -l default -d '<name>'
complete -c zat -s H -l highlight -d '<line>'
complete -c zat -s L -l limit -d '<lines>'
complete -c zat -l list-languages -d 'Show available language parsers.'
complete -c zat -l list-themes -d 'Show available themes.'
