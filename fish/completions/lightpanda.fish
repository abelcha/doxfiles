complete -f -c "lightpanda" -n "__fish_use_subcommand" -a "serve" -d "starts a WebSocket CDP server" # sub
complete -f -c "lightpanda" -n "__fish_use_subcommand" -a "fetch" -d "fetches the specified URL" # sub
complete -f -c "lightpanda" -n "__fish_use_subcommand" -a "mcp" -d "starts an MCP (Model Context Protocol) server over stdio" # sub
complete -f -c "lightpanda" -n "__fish_use_subcommand" -a "agent" -d "starts an interactive AI agent that can browse the web" # sub
complete -f -c "lightpanda" -n "__fish_use_subcommand" -a "version" -d "displays the version of lightpanda" # sub
complete -f -c "lightpanda" -n "__fish_use_subcommand" -a "help" -d "displays this message" # sub
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "host" -d "Host of the CDP server." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "port" -d "Port of the CDP server." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "advertise-host" -d "The host to advertise, e.g. in the /json/version response. Useful, for example, when --host is 0.0.0.0." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "cdp-max-connections" -d "Maximum number of simultaneous CDP connections." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "cdp-max-pending-connections" -d "Maximum pending connections in the accept queue." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "cdp-max-message-size" -d "Maximum allowed incoming websocket message size." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "cdp-max-http-message-size" -d "Maximum allowed HTTP request size." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "cookie" -d "Path to a JSON file to load cookies from (read-only)." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "insecure-disable-tls-host-verification" -d "Disables host verification on all HTTP requests. Only set this if you understand and accept the risk." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "obey-robots" -d "Fetches and obeys robots.txt of the target page." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "disable-subframes" -d "Skip loading <iframe> elements. The parser still registers them in the DOM, but no child frame or Page.frameAttached events are produced." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "disable-workers" -d "Skip loading dedicated Web Workers. The Worker constructor still returns a Worker object, but no script fetch is initiated and its scope never runs." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "enable-external-stylesheets" -d "Fetch external <link rel=stylesheet> resources so their rules contribute to computed styles (and therefore to visibility checks like display, visibility, opacity, pointer-events)." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "block-private-networks" -d "Block HTTP requests to private/internal IP addresses after DNS resolution." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "block-cidrs" -d "Additional CIDR ranges to block, comma-separated. Prefix with '-' to allow (exempt from blocking)." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "http-proxy" -d "HTTP proxy for all HTTP requests. username:password may be included for basic auth." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "proxy-bearer-token" -d "Token sent for bearer authentication with the proxy: Proxy-Authorization: Bearer <token>." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "http-max-concurrent" -d "Maximum number of concurrent HTTP requests." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "http-max-host-open" -d "Maximum open connections to a given host:port." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "http-connect-timeout" -d "Time in ms to establish an HTTP connection before timing out. 0 means never." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "http-timeout" -d "Maximum time in ms the transfer is allowed to complete. 0 means never." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "http-max-response-size" -d "Limits the acceptable response size for any request e.g. XHR, fetch, script loading." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "ws-max-concurrent" -d "Maximum number of concurrent WebSocket connections." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "log-level" -d "The log level." -xa "debug info warn error fatal" # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "log-format" -d "The log format." -xa "pretty logfmt" # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "log-filter-scopes" -d "Filter logs per scope, comma-separated, applied left-to-right. \"-X\" (or bare \"X\") filters out a scope, \"+X\" filters it in, and \"all\" targets every scope. e.g. \"http,unknown_prop\" hides those two; \"-all,+cdp\" hides everything except cdp." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "user-agent" -d "Override the User-Agent header entirely. Must not impersonate other browsers; any value containing \"Mozilla\" is forbidden. The browser still sends Sec-Ch-Ua. Incompatible with --user-agent-suffix." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "user-agent-suffix" -d "Suffix appended to the Lightpanda/X.Y User-Agent." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "web-bot-auth-key-file" -d "Path to the Ed25519 private key PEM file." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "web-bot-auth-keyid" -d "The JWK thumbprint of your public key." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "web-bot-auth-domain" -d "Your domain, e.g. yourdomain.com." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "http-cache-dir" -d "Directory used as a filesystem cache for network resources. Omitting this disables caching." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "cookie" -d "Path to a JSON file to load cookies from (read-only)." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "cookie-jar" -d "Path to a JSON file to save cookies to on exit (write-only)." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "storage-engine" -d "The storage engine to use." -xa "none sqlite" # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'serve'" -l "storage-sqlite-path" -d "Path to the SQLite database file for persistent storage. Use \":memory:\" for in-memory storage." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "dump" -d "Dumps the document to stdout." -xa "{html\\tSerialized HTML of the DOM.,markdown\\tConverts content to Markdown.,semantic_tree\\tJSON-serialized semantic tree.,semantic_tree_text\\tPruned plain-text semantic tree.}" # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "strip-mode" -d "Comma-separated list of tag groups to remove from dump." -xa "{js\\tscript and link[as=script, rel=preload].,ui\\tIncludes img, picture, video, CSS and SVG.,css\\tIncludes style and link[rel=stylesheet].,full\\tStrip everything.}" # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "json" -d "Capture and print the status of the fetch in a JSON string and output it. When used with --dump <MODE> this will wrap the dumped content within the JSON value." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "with-base" -d "Add a <base> tag in dump." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "with-frames" -d "Includes the contents of iframes." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "wait-ms" -d "Wait time in milliseconds. Supersedes all other --wait parameters." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "wait-until" -d "Wait until the specified event. Checked before other --wait-* options." -xa "load domcontentloaded networkalmostidle networkidle done" # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "wait-selector" -d "Wait for an element matching the CSS selector to appear. Checked after --wait-until condition is met." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "wait-script" -d "Wait for a JavaScript expression to return truthy. Checked after --wait-until condition is met." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "wait-script-file" -d "Like --wait-script, but reads the script from a file." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "inject-script" -d "JavaScript to execute as the document's <head> is parsed, before any other scripts in the page run. Can be passed multiple times; scripts run in order." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "inject-script-file" -d "Like --inject-script, but reads the script from a file. Can be passed multiple times; can be mixed with --inject-script and runs in CLI order." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "terminate-ms" -d "Hard deadline in milliseconds. After this time elapses, JavaScript execution is forcibly terminated (e.g. for pages with endless scripts). Unlike --wait-ms, which only stops waiting, --terminate-ms aborts the page." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "cookie" -d "Path to a JSON file to load cookies from (read-only)." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "cookie-jar" -d "Path to a JSON file to save cookies to on exit (write-only)." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "insecure-disable-tls-host-verification" -d "Disables host verification on all HTTP requests. Only set this if you understand and accept the risk." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "obey-robots" -d "Fetches and obeys robots.txt of the target page." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "disable-subframes" -d "Skip loading <iframe> elements. The parser still registers them in the DOM, but no child frame or Page.frameAttached events are produced." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "disable-workers" -d "Skip loading dedicated Web Workers. The Worker constructor still returns a Worker object, but no script fetch is initiated and its scope never runs." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "enable-external-stylesheets" -d "Fetch external <link rel=stylesheet> resources so their rules contribute to computed styles (and therefore to visibility checks like display, visibility, opacity, pointer-events)." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "block-private-networks" -d "Block HTTP requests to private/internal IP addresses after DNS resolution." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "block-cidrs" -d "Additional CIDR ranges to block, comma-separated. Prefix with '-' to allow (exempt from blocking)." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "http-proxy" -d "HTTP proxy for all HTTP requests. username:password may be included for basic auth." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "proxy-bearer-token" -d "Token sent for bearer authentication with the proxy: Proxy-Authorization: Bearer <token>." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "http-max-concurrent" -d "Maximum number of concurrent HTTP requests." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "http-max-host-open" -d "Maximum open connections to a given host:port." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "http-connect-timeout" -d "Time in ms to establish an HTTP connection before timing out. 0 means never." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "http-timeout" -d "Maximum time in ms the transfer is allowed to complete. 0 means never." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "http-max-response-size" -d "Limits the acceptable response size for any request e.g. XHR, fetch, script loading." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "ws-max-concurrent" -d "Maximum number of concurrent WebSocket connections." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "log-level" -d "The log level." -xa "debug info warn error fatal" # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "log-format" -d "The log format." -xa "pretty logfmt" # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "log-filter-scopes" -d "Filter logs per scope, comma-separated, applied left-to-right. \"-X\" (or bare \"X\") filters out a scope, \"+X\" filters it in, and \"all\" targets every scope. e.g. \"http,unknown_prop\" hides those two; \"-all,+cdp\" hides everything except cdp." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "user-agent" -d "Override the User-Agent header entirely. Must not impersonate other browsers; any value containing \"Mozilla\" is forbidden. The browser still sends Sec-Ch-Ua. Incompatible with --user-agent-suffix." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "user-agent-suffix" -d "Suffix appended to the Lightpanda/X.Y User-Agent." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "web-bot-auth-key-file" -d "Path to the Ed25519 private key PEM file." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "web-bot-auth-keyid" -d "The JWK thumbprint of your public key." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "web-bot-auth-domain" -d "Your domain, e.g. yourdomain.com." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "http-cache-dir" -d "Directory used as a filesystem cache for network resources. Omitting this disables caching." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "storage-engine" -d "The storage engine to use." -xa "none sqlite" # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'fetch'" -l "storage-sqlite-path" -d "Path to the SQLite database file for persistent storage. Use \":memory:\" for in-memory storage." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'mcp'" -l "cookie" -d "Path to a JSON file to load cookies from (read-only). Defaults to no cookie loading." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'mcp'" -l "cookie-jar" -d "Path to a JSON file to save cookies to on exit (write-only). Defaults to no cookie saving." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'mcp'" -l "insecure-disable-tls-host-verification" -d "Disables host verification on all HTTP requests. Only set this if you understand and accept the risk." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'mcp'" -l "obey-robots" -d "Fetches and obeys robots.txt of the target page. Defaults to false." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'mcp'" -l "disable-subframes" -d "Skip loading <iframe> elements. The parser still registers them in the DOM, but no child frame or Page.frameAttached events are produced. Defaults to false." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'mcp'" -l "disable-workers" -d "Skip loading dedicated Web Workers. The Worker constructor still returns a Worker object, but no script fetch is initiated and its scope never runs. Defaults to false." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'mcp'" -l "enable-external-stylesheets" -d "Fetch external <link rel=stylesheet> resources so their rules contribute to computed styles (and therefore to visibility checks like display, visibility, opacity, pointer-events). Defaults to false, except in agent mode with an LLM, where it is on." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'mcp'" -l "block-private-networks" -d "Block HTTP requests to private/internal IP addresses after DNS resolution. Defaults to false." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'mcp'" -l "block-cidrs" -d "Additional CIDR ranges to block, comma-separated. Prefix with '-' to allow (exempt from blocking). e.g. --block-cidrs 10.0.0.0/8,-10.0.0.42/32. Can be combined with --block-private-networks." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'mcp'" -l "http-proxy" -d "HTTP proxy for all HTTP requests. username:password may be included for basic auth. Defaults to none." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'mcp'" -l "proxy-bearer-token" -d "Token sent for bearer authentication with the proxy: Proxy-Authorization: Bearer <token>." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'mcp'" -l "http-max-concurrent" -d "Maximum number of concurrent HTTP requests. Defaults to 10." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'mcp'" -l "http-max-host-open" -d "Maximum open connections to a given host:port. Defaults to 4." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'mcp'" -l "http-connect-timeout" -d "Time in ms to establish an HTTP connection before timing out. 0 means never. Defaults to 0." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'mcp'" -l "http-timeout" -d "Maximum time in ms the transfer is allowed to complete. 0 means never. Defaults to 10000." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'mcp'" -l "http-max-response-size" -d "Limits the acceptable response size for any request e.g. XHR, fetch, script loading. Defaults to no limit." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'mcp'" -l "ws-max-concurrent" -d "Maximum number of concurrent WebSocket connections. Defaults to 8." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'mcp'" -l "log-level" -d "The log level. Defaults to warn." -xa "debug info warn error fatal" # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'mcp'" -l "log-format" -d "The log format. Defaults to logfmt." -xa "pretty logfmt" # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'mcp'" -l "log-filter-scopes" -d "Filter logs per scope, comma-separated, applied left-to-right. \"-X\" (or bare \"X\") filters out a scope, \"+X\" filters it in, and \"all\" targets every scope. e.g. \"http,unknown_prop\" hides those two; \"-all,+cdp\" hides everything except cdp." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'mcp'" -l "user-agent" -d "Override the User-Agent header entirely. Must not impersonate other browsers; any value containing \"Mozilla\" is forbidden. The browser still sends Sec-Ch-Ua. Incompatible with --user-agent-suffix." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'mcp'" -l "user-agent-suffix" -d "Suffix appended to the Lightpanda/X.Y User-Agent." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'mcp'" -l "web-bot-auth-key-file" -d "Path to the Ed25519 private key PEM file." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'mcp'" -l "web-bot-auth-keyid" -d "The JWK thumbprint of your public key." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'mcp'" -l "web-bot-auth-domain" -d "Your domain, e.g. yourdomain.com." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'mcp'" -l "http-cache-dir" -d "Directory used as a filesystem cache for network resources. Omitting this disables caching. Defaults to no caching." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'mcp'" -l "storage-engine" -d "The storage engine to use. Defaults to none." -xa "none sqlite" # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'mcp'" -l "storage-sqlite-path" -d "Path to the SQLite database file for persistent storage. Use \":memory:\" for in-memory storage." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "provider" -d "The AI provider. When omitted, lightpanda auto-detects an API key from your environment. Local servers (ollama, llama_cpp) are never auto-detected. In the REPL, use /provider to list and change providers." -xa "anthropic openai gemini huggingface vercel mistral ollama llama_cpp" # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "no-llm" -d "Force the basic REPL even when an API key is present or --provider is set. Useful for testing slash commands without burning tokens, or for disabling the LLM in a saved command without editing the existing flags. Wins over --provider." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "model" -d "The model name to use. Defaults to a sensible default per provider. In the REPL, use /model to list and change models for the active provider." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "base-url" -d "Override the API base URL for the provider. Defaults to the provider's standard endpoint." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "system-prompt" -d "Override the default system prompt." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "task" -d "One-shot mode: run a single user turn, print the final answer to stdout, and exit. Conflicts with the positional script. With --save, the answer is suppressed and a script is written instead." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "save" -d "Synthesize a replayable .js script from the --task run and write it to PATH, instead of printing the answer. Replay it later with `agent PATH` (no LLM calls). Overwrites PATH if it exists. Requires --task." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -s "a" -l "attach" -d "Feed a local file to the model alongside --task. Repeatable, one file per flag. Text files are inlined (max 512 KiB each); images/audio/pdf are base64-encoded (max 20 MiB each). Requires --task." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "list-models" -d "Print the model IDs usable with `agent` for --provider, one per line, sorted, and exit. Auto-detects the provider from env when --provider is omitted." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "verbosity" -d "Stderr chatter level. Default: high when --task captures stderr to a pipe or file; low otherwise." -xa "low medium high" # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "effort" -d "Per-turn reasoning budget, mapped to each provider's native thinking/reasoning knob. Default: low in the REPL (snappy turns), medium in one-shot --task mode." -xa "none minimal low medium high xhigh" # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "insecure-disable-tls-host-verification" -d "Disables host verification on all HTTP requests. Only set this if you understand and accept the risk." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "obey-robots" -d "Fetches and obeys robots.txt of the target page. Defaults to false." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "disable-subframes" -d "Skip loading <iframe> elements. The parser still registers them in the DOM, but no child frame or Page.frameAttached events are produced. Defaults to false." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "disable-workers" -d "Skip loading dedicated Web Workers. The Worker constructor still returns a Worker object, but no script fetch is initiated and its scope never runs. Defaults to false." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "enable-external-stylesheets" -d "Fetch external <link rel=stylesheet> resources so their rules contribute to computed styles (and therefore to visibility checks like display, visibility, opacity, pointer-events). Defaults to false, except in agent mode with an LLM, where it is on." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "block-private-networks" -d "Block HTTP requests to private/internal IP addresses after DNS resolution. Defaults to false." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "block-cidrs" -d "Additional CIDR ranges to block, comma-separated. Prefix with '-' to allow (exempt from blocking)." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "http-proxy" -d "HTTP proxy for all HTTP requests. username:password may be included for basic auth." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "proxy-bearer-token" -d "Token sent for bearer authentication with the proxy: Proxy-Authorization: Bearer <token>." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "http-max-concurrent" -d "Maximum number of concurrent HTTP requests. Defaults to 10." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "http-max-host-open" -d "Maximum open connections to a given host:port. Defaults to 4." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "http-connect-timeout" -d "Time in ms to establish an HTTP connection before timing out. 0 means never. Defaults to 0." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "http-timeout" -d "Maximum time in ms the transfer is allowed to complete. 0 means never. Defaults to 10000." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "http-max-response-size" -d "Limits the acceptable response size for any request e.g. XHR, fetch, script loading. Defaults to no limit." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "ws-max-concurrent" -d "Maximum number of concurrent WebSocket connections. Defaults to 8." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "log-level" -d "The log level. Defaults to warn." -xa "debug info warn error fatal" # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "log-format" -d "The log format. Defaults to logfmt." -xa "pretty logfmt" # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "log-filter-scopes" -d "Filter logs per scope, comma-separated, applied left-to-right. \"-X\" (or bare \"X\") filters out a scope, \"+X\" filters it in, and \"all\" targets every scope." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "user-agent" -d "Override the User-Agent header entirely. Must not impersonate other browsers; any value containing \"Mozilla\" is forbidden. The browser still sends Sec-Ch-Ua. Incompatible with --user-agent-suffix." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "user-agent-suffix" -d "Suffix appended to the Lightpanda/X.Y User-Agent." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "web-bot-auth-key-file" -d "Path to the Ed25519 private key PEM file." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "web-bot-auth-keyid" -d "The JWK thumbprint of your public key." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "web-bot-auth-domain" -d "Your domain, e.g. yourdomain.com." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "http-cache-dir" -d "Directory used as a filesystem cache for network resources. Omitting this disables caching. Defaults to no caching." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "cookie" -d "Path to a JSON file to load cookies from (read-only). Defaults to no cookie loading." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "cookie-jar" -d "Path to a JSON file to save cookies to on exit (write-only). Defaults to no cookie saving." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "storage-engine" -d "The storage engine to use. Defaults to none." -xa "none sqlite" # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'agent'" -l "storage-sqlite-path" -d "Path to the SQLite database file for persistent storage. Use \":memory:\" for in-memory storage." # global
complete -c "lightpanda" -n "__fish_seen_subcommand_from 'help'" -l "help" -d "Show help for a command or subcommand." # global