complete -c "crwl" -s "B" -l "browser-config" -d "Browser config file (YAML/JSON)" -xa "{}" # global
complete -c "crwl" -s "C" -l "crawler-config" -d "Crawler config file (YAML/JSON)" -xa "{}" # global
complete -c "crwl" -s "f" -l "filter-config" -d "Content filter config file" -xa "{}" # global
complete -c "crwl" -s "e" -l "extraction-config" -d "Extraction strategy config file" -xa "{}" # global
complete -c "crwl" -s "j" -l "json-extract" -d "Extract structured data using LLM with optional description" -xa "{}" # global
complete -c "crwl" -s "s" -l "schema" -d "JSON schema for extraction" -xa "{}" # global
complete -c "crwl" -s "b" -l "browser" -d "Browser parameters as key1=value1,key2=value2" -xa "{}" # global
complete -c "crwl" -s "c" -l "crawler" -d "Crawler parameters as key1=value1,key2=value2" -xa "{}" # global
complete -c "crwl" -s "o" -l "output" -xa "all json markdown md markdown-fit md-fit" # global
complete -c "crwl" -s "O" -l "output-file" -d "Output file path (default: stdout)" -xa "{}" # global
complete -c "crwl" -s "bc" -l "bypass-cache" -d "Bypass cache when crawling" -xa "{}" # global
complete -c "crwl" -s "q" -l "question" -d "Ask a question about the crawled content" -xa "{}" # global
complete -c "crwl" -s "v" -l "verbose" -xa "{}" # global
complete -c "crwl" -s "p" -l "profile" -d "Use a specific browser profile (by name)" -xa "{}" # global
complete -c "crwl" -l "deep-crawl" -d "Enable deep crawling with specified strategy" -xa "bfs dfs best-first" # global
complete -c "crwl" -l "max-pages" -d "Maximum number of pages to crawl in deep crawl mode" -xa "{}" # global
complete -c "crwl" -s "h" -l "help" -d "Show this message and exit." -xa "{}" # global
complete -f -c "crwl" -n "__fish_use_subcommand" -a "crawl" -d "Crawl a website and extract content" # sub
complete -c "crwl" -n "__fish_seen_subcommand_from 'crawl'" -s "B" -l "browser-config" -d "Browser config file (YAML/JSON)" -xa "{}" # subcommands flags
complete -c "crwl" -n "__fish_seen_subcommand_from 'crawl'" -s "C" -l "crawler-config" -d "Crawler config file (YAML/JSON)" -xa "{}" # subcommands flags
complete -c "crwl" -n "__fish_seen_subcommand_from 'crawl'" -s "f" -l "filter-config" -d "Content filter config file" -xa "{}" # subcommands flags
complete -c "crwl" -n "__fish_seen_subcommand_from 'crawl'" -s "e" -l "extraction-config" -d "Extraction strategy config file" -xa "{}" # subcommands flags
complete -c "crwl" -n "__fish_seen_subcommand_from 'crawl'" -s "j" -l "json-extract" -d "Extract structured data using LLM with optional description" -xa "{}" # subcommands flags
complete -c "crwl" -n "__fish_seen_subcommand_from 'crawl'" -s "s" -l "schema" -d "JSON schema for extraction" -xa "{}" # subcommands flags
complete -c "crwl" -n "__fish_seen_subcommand_from 'crawl'" -s "b" -l "browser" -d "Browser parameters as key1=value1,key2=value2" -xa "{}" # subcommands flags
complete -c "crwl" -n "__fish_seen_subcommand_from 'crawl'" -s "c" -l "crawler" -d "Crawler parameters as key1=value1,key2=value2" -xa "{}" # subcommands flags
complete -c "crwl" -n "__fish_seen_subcommand_from 'crawl'" -s "o" -l "output" -xa "all json markdown md markdown-fit md-fit" # subcommands flags
complete -c "crwl" -n "__fish_seen_subcommand_from 'crawl'" -s "O" -l "output-file" -d "Output file path (default: stdout)" -xa "{}" # subcommands flags
complete -c "crwl" -n "__fish_seen_subcommand_from 'crawl'" -s "bc" -l "bypass-cache" -d "Bypass cache when crawling" -xa "{}" # subcommands flags
complete -c "crwl" -n "__fish_seen_subcommand_from 'crawl'" -s "q" -l "question" -d "Ask a question about the crawled content" -xa "{}" # subcommands flags
complete -c "crwl" -n "__fish_seen_subcommand_from 'crawl'" -s "v" -l "verbose" -xa "{}" # subcommands flags
complete -c "crwl" -n "__fish_seen_subcommand_from 'crawl'" -s "p" -l "profile" -d "Use a specific browser profile (by name)" -xa "{}" # subcommands flags
complete -c "crwl" -n "__fish_seen_subcommand_from 'crawl'" -l "deep-crawl" -d "Enable deep crawling with specified strategy" -xa "bfs dfs best-first" # subcommands flags
complete -c "crwl" -n "__fish_seen_subcommand_from 'crawl'" -l "max-pages" -d "Maximum number of pages to crawl in deep crawl mode" -xa "{}" # subcommands flags
complete -c "crwl" -n "__fish_seen_subcommand_from 'crawl'" -s "B" -l "browser-config" -d "Browser config file (YAML/JSON)" # global
complete -c "crwl" -n "__fish_seen_subcommand_from 'crawl'" -s "C" -l "crawler-config" -d "Crawler config file (YAML/JSON)" # global
complete -c "crwl" -n "__fish_seen_subcommand_from 'crawl'" -s "f" -l "filter-config" -d "Content filter config file" # global
complete -c "crwl" -n "__fish_seen_subcommand_from 'crawl'" -s "e" -l "extraction-config" -d "Extraction strategy config file" # global
complete -c "crwl" -n "__fish_seen_subcommand_from 'crawl'" -s "j" -l "json-extract" -d "Extract structured data using LLM with optional description" # global
complete -c "crwl" -n "__fish_seen_subcommand_from 'crawl'" -s "s" -l "schema" -d "JSON schema for extraction" # global
complete -c "crwl" -n "__fish_seen_subcommand_from 'crawl'" -s "b" -l "browser" -d "Browser parameters as key1=value1,key2=value2" # global
complete -c "crwl" -n "__fish_seen_subcommand_from 'crawl'" -s "c" -l "crawler" -d "Crawler parameters as key1=value1,key2=value2" # global
complete -c "crwl" -n "__fish_seen_subcommand_from 'crawl'" -s "o" -l "output" -xa "all json markdown md markdown-fit md-fit" # global
complete -c "crwl" -n "__fish_seen_subcommand_from 'crawl'" -s "O" -l "output-file" -d "Output file path (default: stdout)" # global
complete -c "crwl" -n "__fish_seen_subcommand_from 'crawl'" -s "bc" -l "bypass-cache" -d "Bypass cache when crawling" # global
complete -c "crwl" -n "__fish_seen_subcommand_from 'crawl'" -s "q" -l "question" -d "Ask a question about the crawled content" # global
complete -c "crwl" -n "__fish_seen_subcommand_from 'crawl'" -s "v" -l "verbose" # global
complete -c "crwl" -n "__fish_seen_subcommand_from 'crawl'" -s "p" -l "profile" -d "Use a specific browser profile (by name)" # global
complete -c "crwl" -n "__fish_seen_subcommand_from 'crawl'" -l "deep-crawl" -d "Enable deep crawling with specified strategy (bfs, dfs, or best-first)" -xa "bfs dfs best-first" # global
complete -c "crwl" -n "__fish_seen_subcommand_from 'crawl'" -l "max-pages" -d "Maximum number of pages to crawl in deep crawl mode" # global
complete -c "crwl" -n "__fish_seen_subcommand_from 'crawl'" -s "h" -l "help" -d "Show this message and exit." # global