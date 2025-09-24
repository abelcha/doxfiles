complete -c "vnstat" -l "95th" -d "Show 95th percentile output for the ongoing month. This output uses the 5 minute resolution data of the ongoing month to calculate the 95th percentile traffic rate for received, transmitted and total. In addition, the minimum, average and maximum traffic rates for received, transmitted and total are also shown. This output requires the 5MinutHourly configuration option to have a value of at least 744 for storing all the necessary data, otherwise 100% coverage isn't possible." # global
complete -c "vnstat" -l "add" -d "Create database entry for interface specified with -i or --iface option." # global
complete -c "vnstat" -l "alert" -d "Depending on values of given parameters, show alert, use different exit status or a combination of both when configured situation is met." # global
complete -c "vnstat" -s "b" -l "begin" -d "Begin the list output with a specific date / time defined by date instead of the begin being selected based on the number of entries to be shown." # global
complete -c "vnstat" -l "config" -d "Use file as configuration file instead of using automatic configuration file search functionality." # global
complete -c "vnstat" -s "d" -l "days" -d "Show traffic statistics on a daily basis for the last days." # global
complete -c "vnstat" -l "db" -d "Use file as database file instead of searching for a database from the directory specified in the configuration file or the hardcoded default." # global
complete -c "vnstat" -l "dbdir" -d "Use directory as database directory instead of using the directory specified in the configuration file or the hardcoded default." # global
complete -c "vnstat" -l "dbiflist" -d "List interfaces currently in the database." # global
complete -c "vnstat" -s "D" -l "debug" -d "Show additional debug output." # global
complete -c "vnstat" -s "e" -l "end" -d "End the list output with a specific date / time defined by date instead of the latest date / time in the database." # global
complete -c "vnstat" -s "5" -l "fiveminutes" -d "Show traffic statistics with a 5 minute resolution for the last hours." # global
complete -c "vnstat" -s "h" -l "hours" -d "Show traffic statistics on a hourly basis." # global
complete -c "vnstat" -s "hg" -l "hoursgraph" -d "Show traffic statistics on a hourly basis for the last 24 hours using a bar graph." # global
complete -c "vnstat" -s "i" -l "iface" -d "Select one specific interface and apply actions to only it." # global
complete -c "vnstat" -l "iflist" -d "List currently available interfaces." # global
complete -c "vnstat" -l "json" -d "Show database content for selected interface or all interfaces in json format." -xa "s f h d m y t p" # global
complete -c "vnstat" -l "limit" -d "Set the maximum number of shown entries in list outputs to limit." # global
complete -c "vnstat" -s "l" -l "live" -d "Display current transfer rate for the selected interface in real time until interrupted." -xa "0 1" # global
complete -c "vnstat" -l "locale" -d "Use locale instead of using the locale setting specified in the configuration file or the system default." # global
complete -c "vnstat" -l "longhelp" -d "Show complete options list." # global
complete -c "vnstat" -l "merge" -d "Merge interface data from source database to destination database." # global
complete -c "vnstat" -s "m" -l "months" -d "Show traffic statistics on a monthly basis for the last months." # global
complete -c "vnstat" -l "oneline" -d "Show traffic summary for selected interface using one line with a parsable format." # global
complete -c "vnstat" -s "q" -l "query" -d "Force database query mode." -xa "a s" # global
complete -c "vnstat" -l "rateunit" -d "Swap the configured rate unit." -xa "0 1" # global
complete -c "vnstat" -l "remove" -d "Delete the database entry for the interface specified with -i or --iface and stop monitoring it." # global
complete -c "vnstat" -l "rename" -d "Rename the interface specified with -i or --iface in the database with new name." # global
complete -c "vnstat" -s "ru" -l "rateunit" -d "Swap the configured rate unit." -xa "0 1" # global
complete -c "vnstat" -l "setalias" -d "Set alias as an alias for the selected interface to be shown in queries." # global
complete -c "vnstat" -s "s" -l "short" -d "Use short output mode." # global
complete -c "vnstat" -l "showconfig" -d "Show current configuration using the same format as the configuration file itself uses." # global
complete -c "vnstat" -l "style" -d "Modify the content and style of outputs." -xa "0 1 2 3 4" # global
complete -c "vnstat" -s "t" -l "top" -d "Show all time top traffic days." # global
complete -c "vnstat" -s "tr" -l "traffic" -d "Calculate how much traffic goes through the selected interface during the given time seconds." # global
complete -c "vnstat" -s "v" -l "version" -d "Show current version." # global
complete -c "vnstat" -l "xml" -d "Show database content for selected interface or all interfaces in xml format." -xa "s f h d m y t p" # global
complete -c "vnstat" -s "y" -l "years" -d "Show traffic statistics on a yearly basis for the last years." # global
complete -c "vnstat" -s "?" -l "help" -d "Show a command option summary." # global