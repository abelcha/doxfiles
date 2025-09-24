complete -c "ffuf" -s "H" -d "Header \"Name: Value\", separated by colon. Multiple -H flags are accepted." # global
complete -c "ffuf" -s "X" -d "HTTP method to use" # global
complete -c "ffuf" -s "b" -d "Cookie data \"NAME1=VALUE1; NAME2=VALUE2\" for copy as curl functionality." # global
complete -c "ffuf" -s "cc" -d "Client cert for authentication. Client key needs to be defined as well for this to work" # global
complete -c "ffuf" -s "ck" -d "Client key for authentication. Client certificate needs to be defined as well for this to work" # global
complete -c "ffuf" -s "d" -d "POST data" # global
complete -c "ffuf" -l "http2" -d "Use HTTP2 protocol (default: false)" # global
complete -c "ffuf" -l "ignore-body" -d "Do not fetch the response content. (default: false)" # global
complete -c "ffuf" -s "r" -d "Follow redirects (default: false)" # global
complete -c "ffuf" -l "raw" -d "Do not encode URI (default: false)" # global
complete -c "ffuf" -l "recursion" -d "Scan recursively. Only FUZZ keyword is supported, and URL (-u) has to end in it. (default: false)" # global
complete -c "ffuf" -l "recursion-depth" -d "Maximum recursion depth. (default: 0)" # global
complete -c "ffuf" -l "recursion-strategy" -d "Recursion strategy: \"default\" for a redirect based, and \"greedy\" to recurse on all matches (default: default)" -xa "default greedy" # global
complete -c "ffuf" -l "replay-proxy" -d "Replay matched requests using this proxy." # global
complete -c "ffuf" -l "sni" -d "Target TLS SNI, does not support FUZZ keyword" # global
complete -c "ffuf" -l "timeout" -d "HTTP request timeout in seconds. (default: 10)" # global
complete -c "ffuf" -s "u" -d "Target URL" # global
complete -c "ffuf" -s "x" -d "Proxy URL (SOCKS5 or HTTP). For example: http://127.0.0.1:8080 or socks5://127.0.0.1:8080" # global
complete -c "ffuf" -s "V" -d "Show version information. (default: false)" # global
complete -c "ffuf" -s "ac" -d "Automatically calibrate filtering options (default: false)" # global
complete -c "ffuf" -s "acc" -d "Custom auto-calibration string. Can be used multiple times. Implies -ac" # global
complete -c "ffuf" -s "ach" -d "Per host autocalibration (default: false)" # global
complete -c "ffuf" -s "ack" -d "Autocalibration keyword (default: FUZZ)" # global
complete -c "ffuf" -s "acs" -d "Custom auto-calibration strategies. Can be used multiple times. Implies -ac" # global
complete -c "ffuf" -s "c" -d "Colorize output. (default: false)" # global
complete -c "ffuf" -l "config" -d "Load configuration from a file" # global
complete -c "ffuf" -l "json" -d "JSON output, printing newline-delimited JSON records (default: false)" # global
complete -c "ffuf" -l "maxtime" -d "Maximum running time in seconds for entire process. (default: 0)" # global
complete -c "ffuf" -l "maxtime-job" -d "Maximum running time in seconds per job. (default: 0)" # global
complete -c "ffuf" -l "noninteractive" -d "Disable the interactive console functionality (default: false)" # global
complete -c "ffuf" -s "p" -d "Seconds of `delay` between requests, or a range of random delay. For example \"0.1\" or \"0.1-2.0\"" # global
complete -c "ffuf" -l "rate" -d "Rate of requests per second (default: 0)" # global
complete -c "ffuf" -s "s" -d "Do not print additional information (silent mode) (default: false)" # global
complete -c "ffuf" -s "sa" -d "Stop on all error cases. Implies -sf and -se. (default: false)" # global
complete -c "ffuf" -l "scraperfile" -d "Custom scraper file path" # global
complete -c "ffuf" -l "scrapers" -d "Active scraper groups (default: all)" # global
complete -c "ffuf" -s "se" -d "Stop on spurious errors (default: false)" # global
complete -c "ffuf" -l "search" -d "Search for a FFUFHASH payload from ffuf history" # global
complete -c "ffuf" -s "sf" -d "Stop when > 95% of responses return 403 Forbidden (default: false)" # global
complete -c "ffuf" -s "t" -d "Number of concurrent threads. (default: 40)" # global
complete -c "ffuf" -s "v" -d "Verbose output, printing full URL and redirect location (if any) with the results. (default: false)" # global
complete -c "ffuf" -s "mc" -d "Match HTTP status codes, or \"all\" for everything. (default: 200-299,301,302,307,401,403,405,500)" -xa "all" # global
complete -c "ffuf" -s "ml" -d "Match amount of lines in response" # global
complete -c "ffuf" -l "mmode" -d "Matcher set operator. Either of: and, or (default: or)" -xa "and or" # global
complete -c "ffuf" -s "mr" -d "Match regexp" # global
complete -c "ffuf" -s "ms" -d "Match HTTP response size" # global
complete -c "ffuf" -s "mt" -d "Match how many milliseconds to the first response byte, either greater or less than. EG: >100 or <100" # global
complete -c "ffuf" -s "mw" -d "Match amount of words in response" # global
complete -c "ffuf" -s "fc" -d "Filter HTTP status codes from response. Comma separated list of codes and ranges" # global
complete -c "ffuf" -s "fl" -d "Filter by amount of lines in response. Comma separated list of line counts and ranges" # global
complete -c "ffuf" -l "fmode" -d "Filter set operator. Either of: and, or (default: or)" -xa "and or" # global
complete -c "ffuf" -s "fr" -d "Filter regexp" # global
complete -c "ffuf" -s "fs" -d "Filter HTTP response size. Comma separated list of sizes and ranges" # global
complete -c "ffuf" -s "ft" -d "Filter by number of milliseconds to the first response byte, either greater or less than. EG: >100 or <100" # global
complete -c "ffuf" -s "fw" -d "Filter by amount of words in response. Comma separated list of word counts and ranges" # global
complete -c "ffuf" -s "D" -d "DirSearch wordlist compatibility mode. Used in conjunction with -e flag. (default: false)" # global
complete -c "ffuf" -s "e" -d "Comma separated list of extensions. Extends FUZZ keyword." # global
complete -c "ffuf" -l "enc" -d "Encoders for keywords, eg. 'FUZZ:urlencode b64encode'" # global
complete -c "ffuf" -s "ic" -d "Ignore wordlist comments (default: false)" # global
complete -c "ffuf" -l "input-cmd" -d "Command producing the input. --input-num is required when using this input method. Overrides -w." # global
complete -c "ffuf" -l "input-num" -d "Number of inputs to test. Used in conjunction with --input-cmd. (default: 100)" # global
complete -c "ffuf" -l "input-shell" -d "Shell to be used for running command" # global
complete -c "ffuf" -l "mode" -d "Multi-wordlist operation mode. Available modes: clusterbomb, pitchfork, sniper (default: clusterbomb)" -xa "clusterbomb pitchfork sniper" # global
complete -c "ffuf" -l "request" -d "File containing the raw http request" # global
complete -c "ffuf" -l "request-proto" -d "Protocol to use along with raw request (default: https)" -xa "https" # global
complete -c "ffuf" -s "w" -d "Wordlist file path and (optional) keyword separated by colon. eg. '/path/to/wordlist:KEYWORD'" # global
complete -c "ffuf" -l "debug-log" -d "Write all of the internal logging to the specified file." # global
complete -c "ffuf" -s "o" -d "Write output to file" # global
complete -c "ffuf" -l "od" -d "Directory path to store matched results to." # global
complete -c "ffuf" -l "of" -d "Output file format. Available formats: json, ejson, html, md, csv, ecsv (or, 'all' for all formats) (default: json)" -xa "json ejson html md csv ecsv all" # global
complete -c "ffuf" -l "or" -d "Don't create the output file if we don't have results (default: false)" # global