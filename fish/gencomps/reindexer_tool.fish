complete -c reindexer_tool -s h -l help -d 'show this message'
complete -c reindexer_tool -l createdb -d 'Enable created database if missed'
complete -c reindexer_tool -s r -l repair -d 'Repair database'
# complete -c reindexer_tool -l DB -d "(__fi"
complete -c reindexer_tool -s h -l help -d "Show help"
complete -c reindexer_tool -s d -l dsn -r -d "DSN to reindexer Can be 'cproto://<ip>:<port>/<dbname>','builtin://<path>' or 'ucproto://<unix.socket.path>:/<dbname>"
complete -c reindexer_tool -s f -l filename -r -d "Execute commands from file"
complete -c reindexer_tool -s c -l command -r -d "Single command to run"
complete -c reindexer_tool -s o -l output -r -d "Output file"
complete -c reindexer_tool -s t -l threads -r -d "Number of threads"
complete -c reindexer_tool -l createdb -d "Enable create database if missed"
complete -c reindexer_tool -l repair -d "Repair database"
complete -c reindexer_tool -s a -l appname -r -d "Application name"
complete -c reindexer_tool -s l -l log -x -a "1 2 3 4 5" -d "Reindexer logging"
