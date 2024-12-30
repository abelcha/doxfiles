# complete -f -c ass -n __fish_use_subcommand -a compress -d 'Compress files'
complete -f -c src -a api -n __fish_use_subcommand -d "interacts with the Sourcegraph GraphQL API"
complete -f -c src -a batch -n __fish_use_subcommand -d "manages batch changes"
complete -f -c src -a code-intel -n __fish_use_subcommand -d "manages code intelligence data"
complete -f -c src -a config -n __fish_use_subcommand -d "manages global, org, and user settings"
complete -f -c src -a extensions,ext -n __fish_use_subcommand -d "manages extensions (experimental)"
complete -f -c src -a extsvc -n __fish_use_subcommand -d "manages external services"
complete -f -c src -a gateway -n __fish_use_subcommand -d "interacts with Cody Gateway"
complete -f -c src -a login -n __fish_use_subcommand -d "authenticate to a Sourcegraph instance with your user credentials"
complete -f -c src -a lsif -n __fish_use_subcommand -d "manages LSIF data (deprecated: use 'code-intel')"
complete -f -c src -a org -n __fish_use_subcommand -d "manages organizations"
complete -f -c src -a team -n __fish_use_subcommand -d "manages teams"
complete -f -c src -a repo -n __fish_use_subcommand -d "manages repositories"
complete -f -c src -a sbom -n __fish_use_subcommand -d "manages SBOM (Software Bill of Materials) data"
complete -f -c src -a search -n __fish_use_subcommand -d "search for results on Sourcegraph"
complete -f -c src -a serve-git -n __fish_use_subcommand -d "serves your local git repositories over HTTP for Sourcegraph to pull"
complete -f -c src -a users -n __fish_use_subcommand -d "manages users"
complete -f -c src -a codeowners -n __fish_use_subcommand -d "manages code ownership information"
complete -f -c src -a version -n __fish_use_subcommand -d "display and compare the src-cli version against the recommended version for your instance"


  
complete -c src -n '__fish_seen_subcommand_from api' -l dump-requests -d 'Log GraphQL requests and responses to stdout'
complete -c src -n '__fish_seen_subcommand_from api' -l get-curl -d 'Print the curl command for executing this query and exit (WARNING: includes printing your access token!)'
complete -c src -n '__fish_seen_subcommand_from api' -l insecure-skip-verify -d 'Skip validation of TLS certificates against trusted chains'
complete -c src -n '__fish_seen_subcommand_from api' -l query -d string
complete -c src -n '__fish_seen_subcommand_from api' -l trace -d 'Log the trace ID for requests. See https://docs.sourcegraph.com/admin/observability/tracing'
complete -c src -n '__fish_seen_subcommand_from api' -l user-agent-telemetry -d 'Include the operating system and architecture in the User-Agent sent with requests to Sourcegraph (default true)'
complete -c src -n '__fish_seen_subcommand_from api' -l vars -d string
# gencomp: reading from `help_fix_dot src batch -h `
# gencomp: reading from `help_fix_dot src branch -h `
# gencomp: reading from `help_fix_dot src cat -h `
# gencomp: reading from `help_fix_dot src checkout -h `
# gencomp: reading from `help_fix_dot src codeowners -h `
# gencomp: reading from `help_fix_dot src code-intel -h `
# gencomp: reading from `help_fix_dot src commit -h `
# gencomp: reading from `help_fix_dot src config -h `
# gencomp: reading from `help_fix_dot src copy -h `
# gencomp: reading from `help_fix_dot src diff -h `
# gencomp: reading from `help_fix_dot src extensions,ext -h `
# gencomp: reading from `help_fix_dot src extsvc -h `
# gencomp: reading from `help_fix_dot src fast-export -h `
# gencomp: reading from `help_fix_dot src fast-import -h `
# gencomp: reading from `help_fix_dot src gateway -h `
# gencomp: reading from `help_fix_dot src help -h `
# gencomp: reading from `help_fix_dot src list -h `
# gencomp: reading from `help_fix_dot src log -h `
# gencomp: reading from `help_fix_dot src login -h `
complete -c src -n '__fish_seen_subcommand_from login' -l dump-requests -d 'Log GraphQL requests and responses to stdout'
complete -c src -n '__fish_seen_subcommand_from login' -l get-curl -d 'Print the curl command for executing this query and exit (WARNING: includes printing your access token!)'
complete -c src -n '__fish_seen_subcommand_from login' -l insecure-skip-verify -d 'Skip validation of TLS certificates against trusted chains'
complete -c src -n '__fish_seen_subcommand_from login' -l trace -d 'Log the trace ID for requests. See https://docs.sourcegraph.com/admin/observability/tracing'
complete -c src -n '__fish_seen_subcommand_from login' -l user-agent-telemetry -d 'Include the operating system and architecture in the User-Agent sent with requests to Sourcegraph (default true)'
# gencomp: reading from `help_fix_dot src ls -h `
# gencomp: reading from `help_fix_dot src lsif -h `
# gencomp: reading from `help_fix_dot src move -h `
# gencomp: reading from `help_fix_dot src org -h `
# gencomp: reading from `help_fix_dot src release -h `
# gencomp: reading from `help_fix_dot src rename -h `
# gencomp: reading from `help_fix_dot src repo -h `
# gencomp: reading from `help_fix_dot src sbom -h `
# gencomp: reading from `help_fix_dot src search -h `
complete -c src -n '__fish_seen_subcommand_from search' -l display -d int
complete -c src -n '__fish_seen_subcommand_from search' -l dump-requests -d 'Log GraphQL requests and responses to stdout'
complete -c src -n '__fish_seen_subcommand_from search' -l explain-json -d 'Explain the JSON output schema and exit.'
complete -c src -n '__fish_seen_subcommand_from search' -l get-curl -d 'Print the curl command for executing this query and exit (WARNING: includes printing your access token!)'
complete -c src -n '__fish_seen_subcommand_from search' -l insecure-skip-verify -d 'Skip validation of TLS certificates against trusted chains'
complete -c src -n '__fish_seen_subcommand_from search' -l json -d 'Whether or not to output results as JSON.'
complete -c src -n '__fish_seen_subcommand_from search' -l less -d "Pipe output to 'less -R' (only if stdout is terminal, and not json flag). (default true)"
complete -c src -n '__fish_seen_subcommand_from search' -l stream -d 'Consume results as stream. Streaming search only supports a subset of flags and parameters: trace, insecure-skip-verify, display, json.'
complete -c src -n '__fish_seen_subcommand_from search' -l trace -d 'Log the trace ID for requests. See https://docs.sourcegraph.com/admin/observability/tracing'
complete -c src -n '__fish_seen_subcommand_from search' -l user-agent-telemetry -d 'Include the operating system and architecture in the User-Agent sent with requests to Sourcegraph (default true)'
# gencomp: reading from `help_fix_dot src serve-git -h `
# gencomp: reading from `help_fix_dot src status -h `
# gencomp: reading from `help_fix_dot src tag -h `
# gencomp: reading from `help_fix_dot src team -h `
# gencomp: reading from `help_fix_dot src users -h `
# gencomp: reading from `help_fix_dot src version -h `
complete -c src -n '__fish_seen_subcommand_from version' -l client-only -d 'If true, only the client version will be printed.'
complete -c src -n '__fish_seen_subcommand_from version' -l dump-requests -d 'Log GraphQL requests and responses to stdout'
complete -c src -n '__fish_seen_subcommand_from version' -l get-curl -d 'Print the curl command for executing this query and exit (WARNING: includes printing your access token!)'
complete -c src -n '__fish_seen_subcommand_from version' -l insecure-skip-verify -d 'Skip validation of TLS certificates against trusted chains'
complete -c src -n '__fish_seen_subcommand_from version' -l trace -d 'Log the trace ID for requests. See https://docs.sourcegraph.com/admin/observability/tracing'
complete -c src -n '__fish_seen_subcommand_from version' -l user-agent-telemetry -d 'Include the operating system and architecture in the User-Agent sent with requests to Sourcegraph (default true)'
# gencomp: reading from `help_fix_dot src visualize -h `