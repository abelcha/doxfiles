#string replace -a -- {} sqlformat  {} --help
complete -c sqlformat -s h -l help -d 'show this help message and exit'
complete -c sqlformat -s o -d 'FILE, --outfile FILE'
complete -c sqlformat -n __fish_no_arguments -l version -d show\ program\'s\ version\ number\ and\ exit
complete -c sqlformat -s k -d 'CHOICE, --keywords CHOICE'
complete -c sqlformat -s i -d 'CHOICE, --identifiers CHOICE'
complete -c sqlformat -s l -d 'LANG, --language LANG'
complete -c sqlformat -l strip-comments -d 'remove comments'
complete -c sqlformat -s r -l reindent -d 'reindent statements'
complete -c sqlformat -l indent_width -d INDENT_WIDTH
complete -c sqlformat -l indent_after_first -d 'indent after first line of statement (e.g. SELECT)'
complete -c sqlformat -l indent_columns -d 'indent all columns by indent_width instead of keyword'
complete -c sqlformat -l wrap_after -d WRAP_AFTER
complete -c sqlformat -l comma_first -d COMMA_FIRST
complete -c sqlformat -l encoding -d 'ENCODING   Specify the input encoding (default utf-8)'
