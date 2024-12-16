complete -c pueued -s d -l daemonize -d If\ this\ flag\ is\ set,\ the\ daemon\ will\ start\ and\ fork\ itself\ into\ the\ background.\ Closing\ the\ terminal\ won\'t\ kill\ the\ daemon\ any\ longer.\ This\ should\ be\ avoided\ and\ rather\ be\ properly\ done\ using\ a\ service\ manager
complete -c pueued -s c -l config -d '<CONFIG>    If provided, Pueue only uses this config file. This path can also be set via the "PUEUE_CONFIG_PATH" environment variable. The commandline option overwrites the environment variable!'
complete -c pueued -s p -l profile -d '<PROFILE>  The name of the profile that should be loaded from your config file'
complete -c pueued -s h -l help -d 'Print help'
complete -c pueued -n __fish_no_arguments -s V -l version -d 'Print version'
