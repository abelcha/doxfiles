# brctl completions for Fish shell

complete -c brctl -f -n '__fish_use_subcommand'
complete -c brctl -n __fish_use_subcommand -l help -s h -d "Show this help"


# diagnose command
complete -c brctl -n __fish_use_subcommand -a diagnose -d "Diagnose and collect logs"
complete -c brctl -n "__fish_seen_subcommand_from diagnose" -l collect-mobile-documents -s M -d "Collect mobile documents (default: all containers)"
complete -c brctl -n "__fish_seen_subcommand_from diagnose" -l sysdiagnose -s s -d "Do not collect what's already part of sysdiagnose"
complete -c brctl -n "__fish_seen_subcommand_from diagnose" -l uitest -s t -d "Collect logs for UI tests"
complete -c brctl -n "__fish_seen_subcommand_from diagnose" -l name -s n -d "Change the device name" -x
complete -c brctl -n "__fish_seen_subcommand_from diagnose" -l full -s f -d "Do a full diagnose, including server checks"
complete -c brctl -n "__fish_seen_subcommand_from diagnose" -l doc -s d -d "Collect additional information about the document at that path" -r
complete -c brctl -n "__fish_seen_subcommand_from diagnose" -l no-reveal -s e -d "Do not reveal diagnose in the Finder when done"

# log command
complete -c brctl -n __fish_use_subcommand -a log -d "Show logs"
complete -c brctl -n "__fish_seen_subcommand_from log" -l all -s a -d "Show all system logs"
complete -c brctl -n "__fish_seen_subcommand_from log" -l predicate -s p -d "Additional predicate"
complete -c brctl -n "__fish_seen_subcommand_from log" -l process -s x -d "Filter events from the specified process" -x
complete -c brctl -n "__fish_seen_subcommand_from log" -l path -s d -d "Use <logs-dir> instead of default" -r
complete -c brctl -n "__fish_seen_subcommand_from log" -l last -d "Limits the captured events to the period starting at the given interval ago" -x
complete -c brctl -n "__fish_seen_subcommand_from log" -l start -s S -d "Start log dump from a specified date" -x
complete -c brctl -n "__fish_seen_subcommand_from log" -l end -s E -d "Stop log dump after a specified date" -x
complete -c brctl -n "__fish_seen_subcommand_from log" -s b -d "Show CloudDocs logs"
complete -c brctl -n "__fish_seen_subcommand_from log" -s f -d "Show FileProvider related logs"
complete -c brctl -n "__fish_seen_subcommand_from log" -s F -d "Show FruitBasket related logs"
complete -c brctl -n "__fish_seen_subcommand_from log" -s N -d "Show network related logs"
complete -c brctl -n "__fish_seen_subcommand_from log" -s g -d "Show Genstore related logs"
complete -c brctl -n "__fish_seen_subcommand_from log" -s i -d "Show SQL and CloudDocs logs"
complete -c brctl -n "__fish_seen_subcommand_from log" -s o -d "Show local storage logs"
complete -c brctl -n "__fish_seen_subcommand_from log" -s D -d "Show logs from the Denator subsystem"
complete -c brctl -n "__fish_seen_subcommand_from log" -l local-timezone -s z -d "Display timestamps within local timezone"
complete -c brctl -n "__fish_seen_subcommand_from log" -l dark-mode -d "Adapt color scheme to dark mode terminal"
complete -c brctl -n "__fish_seen_subcommand_from log" -l quick -s q -d "Print logs without heavy pre-processing"

# dump command
complete -c brctl -n __fish_use_subcommand -a dump -d "Dump the CloudDocs database"
complete -c brctl -n "__fish_seen_subcommand_from dump" -l output -s o -d "Redirect output to <file-path>" -r
complete -c brctl -n "__fish_seen_subcommand_from dump" -l database-path -s d -d "Use the database at <db-path>" -r
complete -c brctl -n "__fish_seen_subcommand_from dump" -l enterprise -s e -d "Use the Data Separated database"
complete -c brctl -n "__fish_seen_subcommand_from dump" -l itemless -s i -d "Don't dump items from the db"
complete -c brctl -n "__fish_seen_subcommand_from dump" -l upgrade -s u -d "Upgrade the db if necessary before dumping"
complete -c brctl -n "__fish_seen_subcommand_from dump" -l verbose -s v -d "Be verbose when dumping the database"

# status command
complete -c brctl -n __fish_use_subcommand -a status -d "Prints items which haven't been completely synced"

# accounts command
complete -c brctl -n __fish_use_subcommand -a accounts -d "Displays iCloudDrive eligible accounts"
complete -c brctl -n "__fish_seen_subcommand_from accounts" -l wait -s w -d "Wait for logged in accounts to load"

# quota command
complete -c brctl -n __fish_use_subcommand -a quota -d "Displays the available quota in the account"

# monitor command
complete -c brctl -n __fish_use_subcommand -a monitor -d "Monitor activity"
complete -c brctl -n "__fish_seen_subcommand_from monitor" -s g -d "Dump global activity of the iCloud Drive"
complete -c brctl -n "__fish_seen_subcommand_from monitor" -s i -d "Dump changes incrementally"
complete -c brctl -n "__fish_seen_subcommand_from monitor" -s t -d "Amount of time in seconds to run the query" -x
complete -c brctl -n "__fish_seen_subcommand_from monitor" -s p -d "Only static gathering"
complete -c brctl -n "__fish_seen_subcommand_from monitor" -l scope -s S -d "Restrict the NSMetadataQuery scope" -x
complete -c brctl -n "__fish_seen_subcommand_from monitor" -l wait-uploaded -s w -d "Wait for all items to be uploaded"
complete -c brctl -n "__fish_seen_subcommand_from monitor" -l wait-start-uploading -s u -d "Wait for at least one item that has an uploading progress"

# spotlight command
complete -c brctl -n __fish_use_subcommand -a spotlight -d "Manage spotlight indexing"
complete -c brctl -n "__fish_seen_subcommand_from spotlight" -a enable -d "Enables spotlight indexing"
complete -c brctl -n "__fish_seen_subcommand_from spotlight" -a disable -d "Disables spotlight indexing"
