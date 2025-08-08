complete -c pstree -s f -d 'file   read input from <file> (- is stdin) instead of running'
complete -c pstree -s g -d 'n      use graphics chars for tree. n=1: IBM-850, n=2: VT100, n=3: UTF-8'
complete -c pstree -s l -d 'n      print tree to n level deep'
complete -c pstree -s u -d 'user   show only branches containing processes of <user>'
complete -c pstree -s U -d "don't show branches containing only root processes"
complete -c pstree -s s -d 'string show only branches containing process with <string> in commandline'
complete -c pstree -s p -d 'pid    show only branches containing process <pid>'
complete -c pstree -s w -d 'wide output, not truncated to window width'
