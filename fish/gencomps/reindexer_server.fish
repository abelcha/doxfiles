complete -c reindexer_server -s h -l help -d 'Show this message'
complete -c reindexer_server -l security -d 'Enable per-user security'
complete -c reindexer_server -l startwitherrors -d Allow\ to\ start\ reindexer\ with\ DB\'s\ load
complete -c reindexer_server -l autorepair -d 'Enable autorepair for storages after'
complete -c reindexer_server -l disable-ns-leak -d 'Disable namespaces leak on database'
complete -c reindexer_server -l max-http-req -d 'Max HTTP request size in bytes.'
complete -c reindexer_server -l http-read-timeout -d 'timeout (s) for HTTP read operations'
complete -c reindexer_server -l http-write-timeout -d 'timeout (s) for HTTP write operations'
complete -c reindexer_server -l updatessize -d 'Maximum cached updates size'
complete -c reindexer_server -s f -l pprof -d 'Enable pprof http handler'
complete -c reindexer_server -l tx-idle-timeout -d 'http transactions idle timeout (s)'
complete -c reindexer_server -l rpc-qr-idle-timeout -d 'RPC query results idle timeout (s).'
complete -c reindexer_server -s a -l allocs -d 'Log operations allocs statistics'
complete -c reindexer_server -l prometheus -d 'Enable prometheus handler'
complete -c reindexer_server -l prometheus-period -d 'Prometheus stats collect period (ms)'
complete -c reindexer_server -l clientsstats -d 'Enable client connection statistic'
complete -c reindexer_server -s l -l loglevel -d 'log level (none, warning, error, info,'
complete -c reindexer_server -l serverlog -d 'Server log file'
complete -c reindexer_server -l corelog -d 'Core log file'
complete -c reindexer_server -l httplog -d 'Http log file'
complete -c reindexer_server -l rpclog -d 'Rpc log file'
complete -c reindexer_server -s d -l daemonize -d 'Run in daemon mode'
complete -c reindexer_server -l pidfile -d 'Custom daemon pid file'
complete -c reindexer_server -l allocator-cache-limit -d 'Recommended maximum free cache size of'
complete -c reindexer_server -l allocator-cache-part -d 'Recommended maximum cache size of'