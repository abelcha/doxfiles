complete -c "cariddi" -s "c" -d "Concurrency level. (default 20)" # global
complete -c "cariddi" -o "cache" -d "Use the .cariddi_cache folder as cache." # global
complete -c "cariddi" -s "d" -d "Delay between a page crawled and another." # global
complete -c "cariddi" -o "debug" -d "Print debug information while crawling." # global
complete -c "cariddi" -s "e" -d "Hunt for juicy endpoints." # global
complete -c "cariddi" -o "ef" -d "Use an external file (txt, one per line) to use custom parameters for endpoints hunting." # global
complete -c "cariddi" -o "err" -d "Hunt for errors in websites." # global
complete -c "cariddi" -o "examples" -d "Print the examples." # global
complete -c "cariddi" -o "ext" -d "Hunt for juicy file extensions. Integer from 1(juicy) to 7(not juicy)." # global
complete -c "cariddi" -s "h" -d "Print the help." # global
complete -c "cariddi" -o "headers" -d "Use custom headers for each request E.g. -headers \"Cookie: auth=yes;;Client: type=2\"." # global
complete -c "cariddi" -o "headersfile" -d "Read from an external file custom headers (same format of headers flag)." # global
complete -c "cariddi" -s "i" -d "Ignore the URL containing at least one of the elements of this array." # global
complete -c "cariddi" -o "ie" -d "Comma-separated list of extensions to ignore while scanning" # global
complete -c "cariddi" -o "info" -d "Hunt for useful informations in websites." # global
complete -c "cariddi" -o "intensive" -d "Crawl searching for resources matching 2nd level domain." # global
complete -c "cariddi" -o "it" -d "Ignore the URL containing at least one of the lines of this file." # global
complete -c "cariddi" -o "json" -d "Print the output as JSON in stdout." # global
complete -c "cariddi" -o "md" -d "Maximum depth level the crawler will follow from the initial target URL." # global
complete -c "cariddi" -o "oh" -d "Write the output into an HTML file." # global
complete -c "cariddi" -o "ot" -d "Write the output into a TXT file." # global
complete -c "cariddi" -o "plain" -d "Print only results." # global
complete -c "cariddi" -o "proxy" -d "Set a Proxy, http and socks5 supported." # global
complete -c "cariddi" -o "rua" -d "Use a random browser user agent on every request." # global
complete -c "cariddi" -s "s" -d "Hunt for secrets." # global
complete -c "cariddi" -o "sf" -d "Use an external file (txt, one per line) to use custom regexes for secrets hunting." # global
complete -c "cariddi" -o "sr" -d "Store HTTP responses." # global
complete -c "cariddi" -s "t" -d "Set timeout for the requests. (default 10)" # global
complete -c "cariddi" -o "ua" -d "Use a custom User Agent." # global
complete -c "cariddi" -o "version" -d "Print the version." # global