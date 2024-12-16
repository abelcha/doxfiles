complete -c fkill -s f -l force -d 'Force kill'
complete -c fkill -s v -l verbose -d 'Show process arguments'
complete -c fkill -s s -l silent -d 'Silently kill and always exit with code 0'
complete -c fkill -l force-after-timeout -d \<N\>,\ -t\ \<N\>\ \ Force\ kill\ processes\ which\ didn\'t\ exit\ after\ N\ seconds
