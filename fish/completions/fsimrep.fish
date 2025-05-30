complete -c fsimrep -s h -l help -d 'show this help message and exit'
complete -c fsimrep -l min-stars -d MIN_STARS
complete -c fsimrep -l limit -d 'LIMIT         Maximum number of similar repositories to return'
complete -c fsimrep -l min-common-users -d MIN_COMMON_USERS
complete -c fsimrep -a '(_gh_list_repos)'
