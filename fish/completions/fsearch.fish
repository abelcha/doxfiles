

complete -c fsearch -l display  -d      'Limit the number of results that are displayed'
complete -c fsearch -l dump-requests  -d      'Log GraphQL requests and responses to stdout'
complete -c fsearch -l explain-json -d      'Explain the JSON output schema and exit'
complete -c fsearch -l get-curl -d      'Print the curl command for executing this query and exit [WARNING: includes printing your access token!]'
complete -c fsearch -l insecure-skip-verify  -d      'Skip validation of TLS certificates against trusted chains'
complete -c fsearch -l json -d      'Whether or not to output results as JSON'
complete -c fsearch -l less -d "output to 'less -R' (only if stdout is terminal, and not json flag)"
complete -c fsearch -l stream -d      'Consume results as stream'
complete -c fsearch -l trace -d "the trace ID for requests"
complete -c fsearch -l user-agent-telemetry  -d      'Include the operating system and architecture in the User-Agent sent with requests to Sourcegraph'
