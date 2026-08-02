complete -c "subfinder" -s "d" -o "domain" -d "domains to find subdomains for" -xa "{}" # global
complete -c "subfinder" -s "dL" -o "list" -d "file containing list of domains for subdomain discovery" -xa "{}" # global
complete -c "subfinder" -s "s" -o "sources" -d "specific sources to use for discovery (-s crtsh,github). Use -ls to display all available sources." -xa "{}" # global
complete -c "subfinder" -l "recursive" -d "use only sources that can handle subdomains recursively rather than both recursive and non-recursive sources" -xa "{}" # global
complete -c "subfinder" -l "all" -d "use all sources for enumeration (slow)" -xa "{}" # global
complete -c "subfinder" -s "es" -o "exclude-sources" -d "sources to exclude from enumeration (-es alienvault,zoomeyeapi)" -xa "{}" # global
complete -c "subfinder" -s "m" -o "match" -d "subdomain or list of subdomain to match (file or comma separated)" -xa "{}" # global
complete -c "subfinder" -s "f" -o "filter" -d "subdomain or list of subdomain to filter (file or comma separated)" -xa "{}" # global
complete -c "subfinder" -s "rl" -o "rate-limit" -d "maximum number of http requests to send per second (global)" -xa "{}" # global
complete -c "subfinder" -s "rls" -l "rate-limits" -d "maximum number of http requests to send per second for providers in key=value format (-rls hackertarget=10/m)" -xa "{}" # global
complete -c "subfinder" -s "t" -d "number of concurrent goroutines for resolving (-active only)" -xa "{}" # global
complete -c "subfinder" -s "up" -o "update" -d "update subfinder to latest version" -xa "{}" # global
complete -c "subfinder" -s "duc" -o "disable-update-check" -d "disable automatic subfinder update check" -xa "{}" # global
complete -c "subfinder" -s "o" -o "output" -d "file to write output to" -xa "{}" # global
complete -c "subfinder" -s "oJ" -o "json" -d "write output in JSONL(ines) format" -xa "{}" # global
complete -c "subfinder" -s "oD" -o "output-dir" -d "directory to write output (-dL only)" -xa "{}" # global
complete -c "subfinder" -s "cs" -o "collect-sources" -d "include all sources in the output (-json only)" -xa "{}" # global
complete -c "subfinder" -s "oI" -o "ip" -d "include host IP in output (-active only)" -xa "{}" # global
complete -c "subfinder" -l "config" -d "flag config file" -xa "{}" # global
complete -c "subfinder" -s "pc" -o "provider-config" -d "provider config file" -xa "{}" # global
complete -c "subfinder" -s "r" -d "comma separated list of resolvers to use" -xa "{}" # global
complete -c "subfinder" -s "rL" -o "rlist" -d "file containing list of resolvers to use" -xa "{}" # global
complete -c "subfinder" -s "nW" -o "active" -d "display active subdomains only" -xa "{}" # global
complete -c "subfinder" -l "proxy" -d "http proxy to use with subfinder" -xa "{}" # global
complete -c "subfinder" -s "ei" -o "exclude-ip" -d "exclude IPs from the list of domains" -xa "{}" # global
complete -c "subfinder" -l "silent" -d "show only subdomains in output" -xa "{}" # global
complete -c "subfinder" -l "version" -d "show version of subfinder" -xa "{}" # global
complete -c "subfinder" -s "v" -d "show verbose output" -xa "{}" # global
complete -c "subfinder" -s "nc" -o "no-color" -d "disable color in output" -xa "{}" # global
complete -c "subfinder" -s "ls" -o "list-sources" -d "list all available sources" -xa "{}" # global
complete -c "subfinder" -l "stats" -d "report source statistics" -xa "{}" # global
complete -c "subfinder" -l "timeout" -d "seconds to wait before timing out" -xa "{}" # global
complete -c "subfinder" -l "max-time" -d "minutes to wait for enumeration results" -xa "{}" # global