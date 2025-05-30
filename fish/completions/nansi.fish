complete -c nansi -s h -l help -d 'print the help output'
complete -c nansi -n __fish_no_arguments -s v -l version -d 'print the program version'
complete -c nansi -l ansi -d 'allow ansi escape sequences'
complete -c nansi -l line-wrap -d 'wrap lines at custom width or terminal width'
complete -c nansi -l auto-wrap -d 'wrap lines and auto calculate the indent width'
complete -c nansi -l first-wrap -d "if the indentation level is 0, don't wrap the line"
complete -c nansi -l white-space -d 'sequences of whitespace will collapse into a single whitespace'
