complete -f -c surreal -n __fish_use_subcommand -a start -d 'Start the database server'
complete -c surreal -n '__fish_seen_subcommand_from start' -s l -l log -d '<LOG>'
complete -c surreal -n '__fish_seen_subcommand_from start' -l tick-interval -d '<TICK_INTERVAL>'
complete -c surreal -n '__fish_seen_subcommand_from start' -l query-timeout -d '<QUERY_TIMEOUT>'
complete -c surreal -n '__fish_seen_subcommand_from start' -l transaction-timeout -d '<TRANSACTION_TIMEOUT>'
complete -c surreal -n '__fish_seen_subcommand_from start' -s u -l username -d '<USERNAME>'
complete -c surreal -n '__fish_seen_subcommand_from start' -s p -l password -d '<PASSWORD>'
complete -c surreal -n '__fish_seen_subcommand_from start' -l kvs-ca -d '<KVS_CA>'
complete -c surreal -n '__fish_seen_subcommand_from start' -l kvs-crt -d '<KVS_CRT>'
complete -c surreal -n '__fish_seen_subcommand_from start' -l kvs-key -d '<KVS_KEY>'
complete -c surreal -n '__fish_seen_subcommand_from start' -l web-crt -d '<WEB_CRT>'
complete -c surreal -n '__fish_seen_subcommand_from start' -l web-key -d '<WEB_KEY>'
complete -c surreal -n '__fish_seen_subcommand_from start' -l client-ip -d '<CLIENT_IP>'
complete -c surreal -n '__fish_seen_subcommand_from start' -s b -l bind -d '<LISTEN_ADDRESSES>'
complete -c surreal -n '__fish_seen_subcommand_from start' -l allow-funcs -d '[<ALLOW_FUNCS>...]'
complete -c surreal -n '__fish_seen_subcommand_from start' -l allow-net -d '[<ALLOW_NET>...]'
complete -c surreal -n '__fish_seen_subcommand_from start' -l deny-funcs -d '[<DENY_FUNCS>...]'
complete -c surreal -n '__fish_seen_subcommand_from start' -l deny-net -d '[<DENY_NET>...]'
complete -f -c surreal -n __fish_use_subcommand -a import -d 'Import a SurrealQL script into an existing database'
complete -c surreal -n '__fish_seen_subcommand_from import' -s e -l endpoint -d '<ENDPOINT>      Remote database server url to connect to [default:'
complete -c surreal -n '__fish_seen_subcommand_from import' -s u -l username -d '<USERNAME>      Database authentication username to use when connecting [env:'
complete -c surreal -n '__fish_seen_subcommand_from import' -s p -l password -d '<PASSWORD>      Database authentication password to use when connecting [env:'
complete -c surreal -n '__fish_seen_subcommand_from import' -l auth-level -d '<AUTH_LEVEL>  Authentication level to use when connecting'
complete -c surreal -n '__fish_seen_subcommand_from import' -l namespace -d '<NAMESPACE>    The namespace selected for the operation [env: SURREAL_NAMESPACE=]'
complete -c surreal -n '__fish_seen_subcommand_from import' -l database -d '<DATABASE>      The database selected for the operation [env: SURREAL_DATABASE=]'
complete -c surreal -n '__fish_seen_subcommand_from import' -s h -l help -d 'Print help'
complete -f -c surreal -n __fish_use_subcommand -a export -d 'Export an existing database as a SurrealQL script'
complete -c surreal -n '__fish_seen_subcommand_from export' -s e -l endpoint -d '<ENDPOINT>      Remote database server url to connect to [default:'
complete -c surreal -n '__fish_seen_subcommand_from export' -s u -l username -d '<USERNAME>      Database authentication username to use when connecting [env:'
complete -c surreal -n '__fish_seen_subcommand_from export' -s p -l password -d '<PASSWORD>      Database authentication password to use when connecting [env:'
complete -c surreal -n '__fish_seen_subcommand_from export' -l auth-level -d '<AUTH_LEVEL>  Authentication level to use when connecting'
complete -c surreal -n '__fish_seen_subcommand_from export' -l namespace -d '<NAMESPACE>    The namespace selected for the operation [env: SURREAL_NAMESPACE=]'
complete -c surreal -n '__fish_seen_subcommand_from export' -l database -d '<DATABASE>      The database selected for the operation [env: SURREAL_DATABASE=]'
complete -c surreal -n '__fish_seen_subcommand_from export' -s h -l help -d 'Print help'
complete -f -c surreal -n __fish_use_subcommand -a upgrade -d 'Upgrade to the latest stable version'
complete -c surreal -n '__fish_seen_subcommand_from upgrade' -l nightly -d 'Install the latest nightly version'
complete -c surreal -n '__fish_seen_subcommand_from upgrade' -l beta -d 'Install the latest beta version'
complete -c surreal -n __fish_no_arguments -l version -d '<VERSION>  Install a specific version'
complete -c surreal -n '__fish_seen_subcommand_from upgrade' -l dry-run -d Don\'t\ actually\ replace\ the\ executable
complete -c surreal -n '__fish_seen_subcommand_from upgrade' -s h -l help -d 'Print help'
complete -f -c surreal -n __fish_use_subcommand -a sql -d 'Start an SQL REPL in your terminal with pipe support'
complete -c surreal -n '__fish_seen_subcommand_from sql' -s e -l endpoint -d '<ENDPOINT>      Remote database server url to connect to [default:'
complete -c surreal -n '__fish_seen_subcommand_from sql' -s u -l username -d '<USERNAME>      Database authentication username to use when connecting [env:'
complete -c surreal -n '__fish_seen_subcommand_from sql' -s p -l password -d '<PASSWORD>      Database authentication password to use when connecting [env:'
complete -c surreal -n '__fish_seen_subcommand_from sql' -l auth-level -d '<AUTH_LEVEL>  Authentication level to use when connecting'
complete -c surreal -n '__fish_seen_subcommand_from sql' -l namespace -d '<NAMESPACE>    The selected namespace [env: SURREAL_NAMESPACE=] [aliases: ns]'
complete -c surreal -n '__fish_seen_subcommand_from sql' -l database -d '<DATABASE>      The selected database [env: SURREAL_DATABASE=] [aliases: db]'
complete -c surreal -n '__fish_seen_subcommand_from sql' -l pretty -d 'Whether database responses should be pretty printed'
complete -c surreal -n '__fish_seen_subcommand_from sql' -l json -d 'Whether to emit results in JSON'
complete -c surreal -n '__fish_seen_subcommand_from sql' -l multi -d 'Whether omitting semicolon causes a newline'
complete -c surreal -n '__fish_seen_subcommand_from sql' -l hide-welcome -d 'Whether to show welcome message [env: SURREAL_HIDE_WELCOME=]'
complete -c surreal -n '__fish_seen_subcommand_from sql' -s h -l help -d 'Print help'
complete -f -c surreal -n __fish_use_subcommand -a ml -d 'Manage SurrealML models within an existing database'
complete -c surreal -n '__fish_seen_subcommand_from ml' -s h -l help -d 'Print help'
complete -f -c surreal -n __fish_use_subcommand -a is-ready -d 'Check if the SurrealDB server is ready to accept connections [aliases: isready]'
complete -c surreal -n '__fish_seen_subcommand_from is-ready' -s e -l endpoint -d '<ENDPOINT>  Remote database server url to connect to [default: ws://localhost:8000]'
complete -c surreal -n '__fish_seen_subcommand_from is-ready' -s h -l help -d 'Print help'
complete -f -c surreal -n __fish_use_subcommand -a validate -d 'Validate SurrealQL query files'
complete -c surreal -n '__fish_seen_subcommand_from validate' -s h -l help -d 'Print help'
complete -f -c surreal -n __fish_use_subcommand -a help -d 'Print this message or the help of the given subcommand(s)'
complete -c surreal -l online-version-check -d 'Whether to allow web check for client version upgrades at start [env: SURREAL_ONLINE_VERSION_CHECK=]'
complete -c surreal -s h -l help -d 'Print help'
complete -c surreal -n __fish_no_arguments -s V -l version -d 'Print version'
