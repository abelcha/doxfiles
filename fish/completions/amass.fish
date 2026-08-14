complete -c "amass" -s "h" -d "Show the program usage message" # global
complete -c "amass" -l "help" -d "Show the program usage message" # global
complete -c "amass" -l "version" -d "Print the version number of this Amass binary" # global
complete -f -c "amass" -n "__fish_use_subcommand" -a "intel" -d "Discover targets for enumerations" # sub
complete -f -c "amass" -n "__fish_use_subcommand" -a "enum" -d "Perform enumerations and network mapping" # sub
complete -c "amass" -n "__fish_seen_subcommand_from 'intel'" -s "h" -d "Show the program usage message" # subcommands flags
complete -c "amass" -n "__fish_seen_subcommand_from 'intel'" -l "help" -d "Show the program usage message" # subcommands flags
complete -c "amass" -n "__fish_seen_subcommand_from 'intel'" -l "version" -d "Print the version number of this Amass binary" # subcommands flags
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -s "h" -d "Show the program usage message" # subcommands flags
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "help" -d "Show the program usage message" # subcommands flags
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "version" -d "Print the version number of this Amass binary" # subcommands flags
complete -c "amass" -n "__fish_seen_subcommand_from 'intel'" -l "active" -d "Attempt certificate name grabs" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'intel'" -l "addr" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'intel'" -l "asn" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'intel'" -l "cidr" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'intel'" -l "config" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'intel'" -l "d" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'intel'" -l "demo" -d "Censor output to make it suitable for demonstrations" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'intel'" -l "df" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'intel'" -l "dir" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'intel'" -l "ef" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'intel'" -l "exclude" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'intel'" -s "h" -l "help" -d "Show the program usage message" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'intel'" -l "if" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'intel'" -l "include" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'intel'" -l "ip" -d "Show the IP addresses for discovered names" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'intel'" -l "ipv4" -d "Show the IPv4 addresses for discovered names" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'intel'" -l "ipv6" -d "Show the IPv6 addresses for discovered names" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'intel'" -l "list" -d "Print additional information" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'intel'" -l "log" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'intel'" -l "max-dns-queries" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'intel'" -l "o" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'intel'" -l "org" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'intel'" -l "p" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'intel'" -l "r" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'intel'" -l "rf" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'intel'" -l "timeout" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'intel'" -s "v" -d "Output status / debug / troubleshooting info" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'intel'" -l "whois" -d "All provided domains are run through reverse whois" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "active" -d "Attempt zone transfers and certificate name grabs" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "addr" -d "IPs and ranges (192.168.1.1-254) separated by commas" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "alts" -d "Enable generation of altered names" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "asn" -d "ASNs separated by commas (can be used multiple times)" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "aw" -d "Path to a different wordlist file for alterations" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "awm" -d "\"hashcat-style\" wordlist masks for name alterations" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "bl" -d "Blacklist of subdomain names that will not be investigated" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "blf" -d "Path to a file providing blacklisted subdomains" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "brute" -d "Execute brute forcing after searches" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "cidr" -d "CIDRs separated by commas (can be used multiple times)" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "config" -d "Path to the YAML configuration file. Additional details below" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -s "d" -d "Domain names separated by commas (can be used multiple times)" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "demo" -d "Censor output to make it suitable for demonstrations" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "df" -d "Path to a file providing root domain names" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "dir" -d "Path to the directory containing the output files" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "dns-qps" -d "Maximum number of DNS queries per second across all resolvers" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "ef" -d "Path to a file providing data sources to exclude" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "exclude" -d "Data source names separated by commas to be excluded" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -s "h" -d "Show the program usage message" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "help" -d "Show the program usage message" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "if" -d "Path to a file providing data sources to include" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "iface" -d "Provide the network interface to send traffic through" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "include" -d "Data source names separated by commas to be included" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "list" -d "Print the names of all available data sources" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "log" -d "Path to the log file where errors will be written" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "max-depth" -d "Maximum number of subdomain labels for brute forcing" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "max-dns-queries" -d "Deprecated flag to be replaced by dns-qps in version 4.0" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "min-for-recursive" -d "Subdomain labels seen before recursive brute forcing (Default: 1) (default 1)" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "nf" -d "Path to a file providing already known subdomain names (from other tools/sources)" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "nocolor" -d "Disable colorized output" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "norecursive" -d "Turn off recursive brute forcing" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -s "o" -d "Path to the text file containing terminal stdout/stderr" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "oA" -d "Path prefix used for naming all output files" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -s "p" -d "Ports separated by commas (default: 80, 443)" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "passive" -d "Deprecated since passive is the default setting" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -s "r" -d "IP addresses of untrusted DNS resolvers (can be used multiple times)" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "rf" -d "Path to a file providing untrusted DNS resolvers" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "rqps" -d "Maximum number of DNS queries per second for each untrusted resolver" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "scripts" -d "Path to a directory containing ADS scripts" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "silent" -d "Disable all output during execution" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "timeout" -d "Number of minutes to let enumeration run before quitting" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "tr" -d "IP addresses of trusted DNS resolvers (can be used multiple times)" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "trf" -d "Path to a file providing trusted DNS resolvers" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "trqps" -d "Maximum number of DNS queries per second for each trusted resolver" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -s "v" -d "Output status / debug / troubleshooting info" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "w" -d "Path to a different wordlist file for brute forcing" # global
complete -c "amass" -n "__fish_seen_subcommand_from 'enum'" -l "wm" -d "\"hashcat-style\" wordlist masks for DNS brute forcing" # global