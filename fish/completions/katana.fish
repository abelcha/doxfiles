# Ordered, flag-ignoring subcommand-path matcher.
# True when the non-option tokens after the command equal the args in order.
function __fish_seen_subcommand_path
    set -l subs
    for t in (commandline -pxc)[2..]
        string match -q -- '-*' $t; and continue
        set -a subs $t
    end
    test "$subs" = "$argv"
end
complete -c "katana" -s "u" -l "list" -d "target url / list to crawl" # global
complete -c "katana" -s "resume" -d "resume scan using resume.cfg" # global
complete -c "katana" -s "e" -l "exclude" -d "exclude host matching specified filter" -xa "cdn private-ips cidr ip regex" # global
complete -c "katana" -s "r" -l "resolvers" -d "list of custom resolver" # global
complete -c "katana" -s "d" -l "depth" -d "maximum depth to crawl" # global
complete -c "katana" -s "jc" -l "js-crawl" -d "enable endpoint parsing / crawling in javascript file" # global
complete -c "katana" -s "jsl" -l "jsluice" -d "enable jsluice parsing in javascript file (memory intensive)" # global
complete -c "katana" -s "ct" -l "crawl-duration" -d "maximum duration to crawl the target for" -xa "s m h d" # global
complete -c "katana" -s "kf" -l "known-files" -d "enable crawling of known files" -xa "all robotstxt sitemapxml" # global
complete -c "katana" -s "mrs" -l "max-response-size" -d "maximum response size to read" # global
complete -c "katana" -s "timeout" -d "time to wait for request in seconds" # global
complete -c "katana" -s "time-stable" -d "time to wait until the page is stable in seconds" # global
complete -c "katana" -s "aff" -l "automatic-form-fill" -d "enable automatic form filling" # global
complete -c "katana" -s "fx" -l "form-extraction" -d "extract form, input, textarea & select elements in jsonl output" # global
complete -c "katana" -s "retry" -d "number of times to retry the request" # global
complete -c "katana" -s "proxy" -d "http/socks5 proxy to use" # global
complete -c "katana" -s "td" -l "tech-detect" -d "enable technology detection" # global
complete -c "katana" -s "H" -l "headers" -d "custom header/cookie to include in all http request in header:value format" # global
complete -c "katana" -s "config" -d "path to the katana configuration file" # global
complete -c "katana" -s "fc" -l "form-config" -d "path to custom form configuration file" # global
complete -c "katana" -s "flc" -l "field-config" -d "path to custom field configuration file" # global
complete -c "katana" -s "s" -l "strategy" -d "Visit strategy" -xa "depth-first breadth-first" # global
complete -c "katana" -s "iqp" -l "ignore-query-params" -d "Ignore crawling same path with different query-param values" # global
complete -c "katana" -s "fsu" -l "filter-similar" -d "filter crawling of similar looking URLs" # global
complete -c "katana" -s "fst" -l "filter-similar-threshold" -d "number of distinct values before a path position is treated as parameter" # global
complete -c "katana" -s "tlsi" -l "tls-impersonate" -d "enable experimental client hello (ja3) tls randomization" # global
complete -c "katana" -s "dr" -l "disable-redirects" -d "disable following redirects" # global
complete -c "katana" -s "pc" -l "path-climb" -d "enable path climb (auto crawl parent paths)" # global
complete -c "katana" -s "kb" -l "knowledge-base" -d "enable knowledge base classification" # global
complete -c "katana" -s "mdp" -l "max-domain-pages" -d "maximum number of pages to crawl per domain" # global
complete -c "katana" -s "health-check" -l "hc" -d "run diagnostic check up" # global
complete -c "katana" -s "elog" -l "error-log" -d "file to write sent requests error log" # global
complete -c "katana" -s "pprof-server" -d "enable pprof server" # global
complete -c "katana" -s "hl" -l "headless" -d "enable headless crawling" # global
complete -c "katana" -s "hh" -l "hybrid" -d "enable headless hybrid crawling" # global
complete -c "katana" -s "sc" -l "system-chrome" -d "use local installed chrome browser instead of katana installed" # global
complete -c "katana" -s "sb" -l "show-browser" -d "show the browser on the screen with headless mode" # global
complete -c "katana" -s "ho" -l "headless-options" -d "start headless chrome with additional options" # global
complete -c "katana" -s "nos" -l "no-sandbox" -d "start headless chrome in --no-sandbox mode" # global
complete -c "katana" -s "cdd" -l "chrome-data-dir" -d "path to store chrome browser data" # global
complete -c "katana" -s "scp" -l "system-chrome-path" -d "use specified chrome browser for headless crawling" # global
complete -c "katana" -s "noi" -l "no-incognito" -d "start headless chrome without incognito mode" # global
complete -c "katana" -s "cwu" -l "chrome-ws-url" -d "use chrome browser instance launched elsewhere with the debugger listening at this URL" # global
complete -c "katana" -s "xhr" -l "xhr-extraction" -d "extract xhr request url,method in jsonl output" # global
complete -c "katana" -s "mfc" -l "max-failure-count" -d "maximum number of consecutive action failures before stopping" # global
complete -c "katana" -s "ed" -l "enable-diagnostics" -d "enable diagnostics" # global
complete -c "katana" -s "pls" -l "page-load-strategy" -d "page load strategy" -xa "heuristic load domcontentloaded networkidle none" # global
complete -c "katana" -s "dwt" -l "dom-wait-time" -d "time in seconds to wait after page load when using domcontentloaded strategy" # global
complete -c "katana" -s "csp" -l "captcha-solver-provider" -d "captcha solver provider" # global
complete -c "katana" -s "csk" -l "captcha-solver-key" -d "captcha solver provider api key" # global
complete -c "katana" -s "al" -l "auto-login" -d "automatic login with username:password" # global
complete -c "katana" -s "cs" -l "crawl-scope" -d "in scope url regex to be followed by crawler" # global
complete -c "katana" -s "cos" -l "crawl-out-scope" -d "out of scope url regex to be excluded by crawler" # global
complete -c "katana" -s "fs" -l "field-scope" -d "pre-defined scope field or custom regex" -xa "dn rdn fqdn" # global
complete -c "katana" -s "ns" -l "no-scope" -d "disables host based default scope" # global
complete -c "katana" -s "do" -l "display-out-scope" -d "display external endpoint from scoped crawling" # global
complete -c "katana" -s "mr" -l "match-regex" -d "regex or list of regex to match on output url" # global
complete -c "katana" -s "fr" -l "filter-regex" -d "regex or list of regex to filter on output url" # global
complete -c "katana" -s "f" -l "field" -d "field to display in output" -xa "url path fqdn rdn rurl qurl qpath file ufile key value kv dir udir" # global
complete -c "katana" -s "sf" -l "store-field" -d "field to store in per-host output" -xa "url path fqdn rdn rurl qurl qpath file ufile key value kv dir udir" # global
complete -c "katana" -s "em" -l "extension-match" -d "match output for given extension" # global
complete -c "katana" -s "ef" -l "extension-filter" -d "filter output for given extension" # global
complete -c "katana" -s "ndef" -l "no-default-ext-filter" -d "remove default extensions from the filter list" # global
complete -c "katana" -s "mdc" -l "match-condition" -d "match response with dsl based condition" # global
complete -c "katana" -s "fdc" -l "filter-condition" -d "filter response with dsl based condition" # global
complete -c "katana" -s "duf" -l "disable-unique-filter" -d "disable duplicate content filtering" # global
complete -c "katana" -s "fpt" -l "filter-page-type" -d "filter response with page type" -xa "error captcha parked" # global
complete -c "katana" -s "c" -l "concurrency" -d "number of concurrent fetchers to use" # global
complete -c "katana" -s "p" -l "parallelism" -d "number of concurrent inputs to process" # global
complete -c "katana" -s "rd" -l "delay" -d "request delay between each request in seconds" # global
complete -c "katana" -s "rl" -l "rate-limit" -d "maximum requests to send per second" # global
complete -c "katana" -s "rlm" -l "rate-limit-minute" -d "maximum number of requests to send per minute" # global
complete -c "katana" -s "hrl" -l "host-rate-limit" -d "maximum requests to send per second per host" # global
complete -c "katana" -s "hrlm" -l "host-rate-limit-minute" -d "maximum number of requests to send per minute per host" # global
complete -c "katana" -s "up" -l "update" -d "update katana to latest version" # global
complete -c "katana" -s "duc" -l "disable-update-check" -d "disable automatic katana update check" # global
complete -c "katana" -s "o" -l "output" -d "file to write output to" # global
complete -c "katana" -s "ot" -l "output-template" -d "custom output template" # global
complete -c "katana" -s "sr" -l "store-response" -d "store http requests/responses" # global
complete -c "katana" -s "srd" -l "store-response-dir" -d "store http requests/responses to custom directory" # global
complete -c "katana" -s "ncb" -l "no-clobber" -d "do not overwrite output file" # global
complete -c "katana" -s "sfd" -l "store-field-dir" -d "store per-host field to custom directory" # global
complete -c "katana" -s "or" -l "omit-raw" -d "omit raw requests/responses from jsonl output" # global
complete -c "katana" -s "ob" -l "omit-body" -d "omit response body from jsonl output" # global
complete -c "katana" -s "lof" -l "list-output-fields" -d "list of fields to output in jsonl format" # global
complete -c "katana" -s "eof" -l "exclude-output-fields" -d "exclude fields from jsonl output" # global
complete -c "katana" -s "j" -l "jsonl" -d "write output in jsonl format" # global
complete -c "katana" -s "nc" -l "no-color" -d "disable output content coloring (ANSI escape codes)" # global
complete -c "katana" -s "silent" -d "display output only" # global
complete -c "katana" -s "v" -l "verbose" -d "display verbose output" # global
complete -c "katana" -s "debug" -d "display debug output" # global
complete -c "katana" -s "version" -d "display project version" # global
