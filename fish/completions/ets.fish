complete -c ets -s s -l elapsed -d 'show elapsed timestamps'
complete -c ets -s i -l incremental -d 'show incremental timestamps'
complete -c ets -s f -l format -d 'string     show timestamps in this format'
complete -c ets -s u -l utc -d 'show absolute timestamps in UTC'
complete -c ets -s z -l timezone -d 'string   show absolute timestamps in this timezone, e.g. America/New_York'
complete -c ets -s c -l color -d 'show timestamps in color'
complete -c ets -s h -l help -d 'print help and exit'
complete -c ets -n __fish_no_arguments -s v -l version -d 'print version and exit'
complete -c ets --wraps time
