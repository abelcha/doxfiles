complete -c "vonage" -l "version" -d "Show version number [boolean]" # global
complete -c "vonage" -s "v" -l "verbose" -d "Print more information [boolean]" # global
complete -c "vonage" -s "d" -l "debug" -d "Print debug information [boolean]" # global
complete -c "vonage" -l "no-color" -d "Toggle color output off [boolean]" # global
complete -c "vonage" -s "h" -l "help" -d "Show help [boolean]" # global
complete -f -c "vonage" -n "__fish_use_subcommand" -a "apps" -d "Manage applications" # sub
complete -f -c "vonage" -n "__fish_use_subcommand" -a "auth" -d "Manage authentication information" # sub
complete -f -c "vonage" -n "__fish_use_subcommand" -a "balance" -d "Check your account balance" # sub
complete -f -c "vonage" -n "__fish_use_subcommand" -a "conversations" -d "Manage conversations" # sub
complete -f -c "vonage" -n "__fish_use_subcommand" -a "jwt" -d "Manage JWT tokens" # sub
complete -f -c "vonage" -n "__fish_use_subcommand" -a "members" -d "Manage members" # sub
complete -f -c "vonage" -n "__fish_use_subcommand" -a "mock" -d "Launch a mock server for Vonage APIs using Prism" # sub
complete -f -c "vonage" -n "__fish_use_subcommand" -a "numbers" -d "Manage numbers" # sub
complete -f -c "vonage" -n "__fish_use_subcommand" -a "tunnel" -d "Open a tunnel in order to test webhooks" # sub
complete -f -c "vonage" -n "__fish_use_subcommand" -a "users" -d "Manage users" # sub
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps'" -l "version" -d "Show version number [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps'" -s "v" -l "verbose" -d "Print more information [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps'" -s "d" -l "debug" -d "Print debug information [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps'" -l "no-color" -d "Toggle color output off [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps'" -s "h" -l "help" -d "Show help [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'auth'" -l "version" -d "Show version number [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'auth'" -s "v" -l "verbose" -d "Print more information [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'auth'" -s "d" -l "debug" -d "Print debug information [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'auth'" -l "no-color" -d "Toggle color output off [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'auth'" -s "h" -l "help" -d "Show help [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'balance'" -l "version" -d "Show version number [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'balance'" -s "v" -l "verbose" -d "Print more information [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'balance'" -s "d" -l "debug" -d "Print debug information [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'balance'" -l "no-color" -d "Toggle color output off [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'balance'" -s "h" -l "help" -d "Show help [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'conversations'" -l "version" -d "Show version number [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'conversations'" -s "v" -l "verbose" -d "Print more information [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'conversations'" -s "d" -l "debug" -d "Print debug information [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'conversations'" -l "no-color" -d "Toggle color output off [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'conversations'" -s "h" -l "help" -d "Show help [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'jwt'" -l "version" -d "Show version number [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'jwt'" -s "v" -l "verbose" -d "Print more information [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'jwt'" -s "d" -l "debug" -d "Print debug information [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'jwt'" -l "no-color" -d "Toggle color output off [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'jwt'" -s "h" -l "help" -d "Show help [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'members'" -l "version" -d "Show version number [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'members'" -s "v" -l "verbose" -d "Print more information [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'members'" -s "d" -l "debug" -d "Print debug information [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'members'" -l "no-color" -d "Toggle color output off [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'members'" -s "h" -l "help" -d "Show help [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'mock'" -l "version" -d "Show version number [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'mock'" -s "v" -l "verbose" -d "Print more information [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'mock'" -s "d" -l "debug" -d "Print debug information [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'mock'" -l "no-color" -d "Toggle color output off [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'mock'" -s "h" -l "help" -d "Show help [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'numbers'" -l "version" -d "Show version number [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'numbers'" -s "v" -l "verbose" -d "Print more information [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'numbers'" -s "d" -l "debug" -d "Print debug information [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'numbers'" -l "no-color" -d "Toggle color output off [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'numbers'" -s "h" -l "help" -d "Show help [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'tunnel'" -l "version" -d "Show version number [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'tunnel'" -s "v" -l "verbose" -d "Print more information [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'tunnel'" -s "d" -l "debug" -d "Print debug information [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'tunnel'" -l "no-color" -d "Toggle color output off [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'tunnel'" -s "h" -l "help" -d "Show help [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'users'" -l "version" -d "Show version number [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'users'" -s "v" -l "verbose" -d "Print more information [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'users'" -s "d" -l "debug" -d "Print debug information [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'users'" -l "no-color" -d "Toggle color output off [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'users'" -s "h" -l "help" -d "Show help [boolean]" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps'" -l "version" -d "Show version number" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps'" -s "v" -l "verbose" -d "Print more information" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps'" -s "d" -l "debug" -d "Print debug information" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps'" -l "no-color" -d "Toggle color output off" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps'" -s "h" -l "help" -d "Show help" # global
complete -f -c "vonage" -n "__fish_seen_subcommand_from 'apps'; and not __fish_seen_subcommand_from 'capabilitiesaction' 'createname' 'deleteid' 'init' 'list' 'numberscommand' 'showid' 'updateid' 'validateid'" -a "capabilitiesaction" -d "Manage application capabilities" # sub
complete -f -c "vonage" -n "__fish_seen_subcommand_from 'apps'; and not __fish_seen_subcommand_from 'capabilitiesaction' 'createname' 'deleteid' 'init' 'list' 'numberscommand' 'showid' 'updateid' 'validateid'" -a "createname" -d "Create a new application" # sub
complete -f -c "vonage" -n "__fish_seen_subcommand_from 'apps'; and not __fish_seen_subcommand_from 'capabilitiesaction' 'createname' 'deleteid' 'init' 'list' 'numberscommand' 'showid' 'updateid' 'validateid'" -a "deleteid" -d "Delete application" # sub
complete -f -c "vonage" -n "__fish_seen_subcommand_from 'apps'; and not __fish_seen_subcommand_from 'capabilitiesaction' 'createname' 'deleteid' 'init' 'list' 'numberscommand' 'showid' 'updateid' 'validateid'" -a "init" -d "Interactively create a new application" # sub
complete -f -c "vonage" -n "__fish_seen_subcommand_from 'apps'; and not __fish_seen_subcommand_from 'capabilitiesaction' 'createname' 'deleteid' 'init' 'list' 'numberscommand' 'showid' 'updateid' 'validateid'" -a "list" -d "List applications" # sub
complete -f -c "vonage" -n "__fish_seen_subcommand_from 'apps'; and not __fish_seen_subcommand_from 'capabilitiesaction' 'createname' 'deleteid' 'init' 'list' 'numberscommand' 'showid' 'updateid' 'validateid'" -a "numberscommand" -d "Manage application numbers" # sub
complete -f -c "vonage" -n "__fish_seen_subcommand_from 'apps'; and not __fish_seen_subcommand_from 'capabilitiesaction' 'createname' 'deleteid' 'init' 'list' 'numberscommand' 'showid' 'updateid' 'validateid'" -a "showid" -d "Get information for an application" # sub
complete -f -c "vonage" -n "__fish_seen_subcommand_from 'apps'; and not __fish_seen_subcommand_from 'capabilitiesaction' 'createname' 'deleteid' 'init' 'list' 'numberscommand' 'showid' 'updateid' 'validateid'" -a "updateid" -d "Update an application" # sub
complete -f -c "vonage" -n "__fish_seen_subcommand_from 'apps'; and not __fish_seen_subcommand_from 'capabilitiesaction' 'createname' 'deleteid' 'init' 'list' 'numberscommand' 'showid' 'updateid' 'validateid'" -a "validateid" -d "Validate an application" # sub
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps capabilitiesaction'" -s "v" -l "verbose" -d "Print more information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps capabilitiesaction'" -s "d" -l "debug" -d "Print debug information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps capabilitiesaction'" -l "no-color" -d "Toggle color output off" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps createname'" -s "v" -l "verbose" -d "Print more information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps createname'" -s "d" -l "debug" -d "Print debug information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps createname'" -l "no-color" -d "Toggle color output off" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps deleteid'" -s "v" -l "verbose" -d "Print more information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps deleteid'" -s "d" -l "debug" -d "Print debug information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps deleteid'" -l "no-color" -d "Toggle color output off" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps init'" -s "v" -l "verbose" -d "Print more information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps init'" -s "d" -l "debug" -d "Print debug information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps init'" -l "no-color" -d "Toggle color output off" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps list'" -s "v" -l "verbose" -d "Print more information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps list'" -s "d" -l "debug" -d "Print debug information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps list'" -l "no-color" -d "Toggle color output off" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps numberscommand'" -s "v" -l "verbose" -d "Print more information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps numberscommand'" -s "d" -l "debug" -d "Print debug information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps numberscommand'" -l "no-color" -d "Toggle color output off" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps showid'" -s "v" -l "verbose" -d "Print more information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps showid'" -s "d" -l "debug" -d "Print debug information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps showid'" -l "no-color" -d "Toggle color output off" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps updateid'" -s "v" -l "verbose" -d "Print more information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps updateid'" -s "d" -l "debug" -d "Print debug information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps updateid'" -l "no-color" -d "Toggle color output off" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps validateid'" -s "v" -l "verbose" -d "Print more information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps validateid'" -s "d" -l "debug" -d "Print debug information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'apps validateid'" -l "no-color" -d "Toggle color output off" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'auth'" -l "version" -d "Show version number" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'auth'" -s "v" -l "verbose" -d "Print more information" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'auth'" -s "d" -l "debug" -d "Print debug information" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'auth'" -l "no-color" -d "Toggle color output off" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'auth'" -s "h" -l "help" -d "Show help" # global
complete -f -c "vonage" -n "__fish_seen_subcommand_from 'auth'; and not __fish_seen_subcommand_from 'check' 'set' 'show'" -a "check" -d "Checks Vonage credentials" # sub
complete -f -c "vonage" -n "__fish_seen_subcommand_from 'auth'; and not __fish_seen_subcommand_from 'check' 'set' 'show'" -a "set" -d "Set authentication information" # sub
complete -f -c "vonage" -n "__fish_seen_subcommand_from 'auth'; and not __fish_seen_subcommand_from 'check' 'set' 'show'" -a "show" -d "Show configured Vonage API authentication information" # sub
complete -c "vonage" -n "__fish_seen_subcommand_from 'auth check'" -l "version" -d "Show version number" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'auth check'" -s "v" -l "verbose" -d "Print more information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'auth check'" -s "d" -l "debug" -d "Print debug information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'auth check'" -l "no-color" -d "Toggle color output off" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'auth check'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'auth set'" -l "version" -d "Show version number" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'auth set'" -s "v" -l "verbose" -d "Print more information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'auth set'" -s "d" -l "debug" -d "Print debug information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'auth set'" -l "no-color" -d "Toggle color output off" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'auth set'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'auth show'" -l "version" -d "Show version number" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'auth show'" -s "v" -l "verbose" -d "Print more information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'auth show'" -s "d" -l "debug" -d "Print debug information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'auth show'" -l "no-color" -d "Toggle color output off" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'auth show'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'balance'" -l "api-key" -d "Your Vonage API key" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'balance'" -l "api-secret" -d "Your Vonage API secret" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'balance'" -l "yaml" -d "Output as YAML" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'balance'" -l "json" -d "Output as JSON" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'balance'" -l "version" -d "Show version number" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'balance'" -s "v" -l "verbose" -d "Print more information" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'balance'" -s "d" -l "debug" -d "Print debug information" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'balance'" -l "no-color" -d "Toggle color output off" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'balance'" -s "h" -l "help" -d "Show help" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'conversations'" -l "version" -d "Show version number" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'conversations'" -s "v" -l "verbose" -d "Print more information" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'conversations'" -s "d" -l "debug" -d "Print debug information" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'conversations'" -l "no-color" -d "Toggle color output off" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'conversations'" -s "h" -l "help" -d "Show help" # global
complete -f -c "vonage" -n "__fish_seen_subcommand_from 'conversations'; and not __fish_seen_subcommand_from 'create' 'delete' 'list' 'show' 'update'" -a "create" -d "Create a conversation" # sub
complete -f -c "vonage" -n "__fish_seen_subcommand_from 'conversations'; and not __fish_seen_subcommand_from 'create' 'delete' 'list' 'show' 'update'" -a "delete" -d "Delete conversation" # sub
complete -f -c "vonage" -n "__fish_seen_subcommand_from 'conversations'; and not __fish_seen_subcommand_from 'create' 'delete' 'list' 'show' 'update'" -a "list" -d "List conversations" # sub
complete -f -c "vonage" -n "__fish_seen_subcommand_from 'conversations'; and not __fish_seen_subcommand_from 'create' 'delete' 'list' 'show' 'update'" -a "show" -d "Show conversation" # sub
complete -f -c "vonage" -n "__fish_seen_subcommand_from 'conversations'; and not __fish_seen_subcommand_from 'create' 'delete' 'list' 'show' 'update'" -a "update" -d "Update conversation" # sub
complete -c "vonage" -n "__fish_seen_subcommand_from 'conversations create'" -l "version" -d "Show version number" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'conversations create'" -s "v" -l "verbose" -d "Print more information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'conversations create'" -s "d" -l "debug" -d "Print debug information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'conversations create'" -l "no-color" -d "Toggle color output off" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'conversations create'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'conversations delete'" -l "version" -d "Show version number" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'conversations delete'" -s "v" -l "verbose" -d "Print more information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'conversations delete'" -s "d" -l "debug" -d "Print debug information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'conversations delete'" -l "no-color" -d "Toggle color output off" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'conversations delete'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'conversations list'" -l "version" -d "Show version number" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'conversations list'" -s "v" -l "verbose" -d "Print more information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'conversations list'" -s "d" -l "debug" -d "Print debug information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'conversations list'" -l "no-color" -d "Toggle color output off" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'conversations list'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'conversations show'" -l "version" -d "Show version number" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'conversations show'" -s "v" -l "verbose" -d "Print more information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'conversations show'" -s "d" -l "debug" -d "Print debug information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'conversations show'" -l "no-color" -d "Toggle color output off" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'conversations show'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'conversations update'" -l "version" -d "Show version number" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'conversations update'" -s "v" -l "verbose" -d "Print more information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'conversations update'" -s "d" -l "debug" -d "Print debug information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'conversations update'" -l "no-color" -d "Toggle color output off" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'conversations update'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'jwt'" -l "version" -d "Show version number" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'jwt'" -s "v" -l "verbose" -d "Print more information" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'jwt'" -s "d" -l "debug" -d "Print debug information" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'jwt'" -l "no-color" -d "Toggle color output off" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'jwt'" -s "h" -l "help" -d "Show help" # global
complete -f -c "vonage" -n "__fish_seen_subcommand_from 'jwt'; and not __fish_seen_subcommand_from 'create' 'validate'" -a "create" -d "Create a JWT token for authentication" # sub
complete -f -c "vonage" -n "__fish_seen_subcommand_from 'jwt'; and not __fish_seen_subcommand_from 'create' 'validate'" -a "validate" -d "Validate a JWT token." # sub
complete -c "vonage" -n "__fish_seen_subcommand_from 'jwt create'" -l "version" -d "Show version number" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'jwt create'" -s "v" -l "verbose" -d "Print more information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'jwt create'" -s "d" -l "debug" -d "Print debug information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'jwt create'" -l "no-color" -d "Toggle color output off" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'jwt create'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'jwt validate'" -l "version" -d "Show version number" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'jwt validate'" -s "v" -l "verbose" -d "Print more information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'jwt validate'" -s "d" -l "debug" -d "Print debug information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'jwt validate'" -l "no-color" -d "Toggle color output off" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'jwt validate'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'members'" -l "version" -d "Show version number" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'members'" -s "v" -l "verbose" -d "Print more information" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'members'" -s "d" -l "debug" -d "Print debug information" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'members'" -l "no-color" -d "Toggle color output off" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'members'" -s "h" -l "help" -d "Show help" # global
complete -f -c "vonage" -n "__fish_seen_subcommand_from 'members'; and not __fish_seen_subcommand_from 'create' 'list' 'show' 'update'" -a "create" -d "Create a member in a conversation" # sub
complete -f -c "vonage" -n "__fish_seen_subcommand_from 'members'; and not __fish_seen_subcommand_from 'create' 'list' 'show' 'update'" -a "list" -d "List members" # sub
complete -f -c "vonage" -n "__fish_seen_subcommand_from 'members'; and not __fish_seen_subcommand_from 'create' 'list' 'show' 'update'" -a "show" -d "Show a member. \"me\" is not supported as the CLI will automatically generate the JWT token." # sub
complete -f -c "vonage" -n "__fish_seen_subcommand_from 'members'; and not __fish_seen_subcommand_from 'create' 'list' 'show' 'update'" -a "update" -d "Update a member" # sub
complete -c "vonage" -n "__fish_seen_subcommand_from 'members create'" -l "version" -d "Show version number" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'members create'" -s "v" -l "verbose" -d "Print more information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'members create'" -s "d" -l "debug" -d "Print debug information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'members create'" -l "no-color" -d "Toggle color output off" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'members create'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'members list'" -l "version" -d "Show version number" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'members list'" -s "v" -l "verbose" -d "Print more information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'members list'" -s "d" -l "debug" -d "Print debug information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'members list'" -l "no-color" -d "Toggle color output off" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'members list'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'members show'" -l "version" -d "Show version number" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'members show'" -s "v" -l "verbose" -d "Print more information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'members show'" -s "d" -l "debug" -d "Print debug information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'members show'" -l "no-color" -d "Toggle color output off" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'members show'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'members update'" -l "version" -d "Show version number" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'members update'" -s "v" -l "verbose" -d "Print more information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'members update'" -s "d" -l "debug" -d "Print debug information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'members update'" -l "no-color" -d "Toggle color output off" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'members update'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'mock'" -l "port" -d "Port to run the mock server on" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'mock'" -l "host" -d "Host to bind the mock server to" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'mock'" -l "download-only" -d "Only download the OpenAPI spec without starting the server" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'mock'" -l "latest" -d "Force re-download of the OpenAPI spec even if it already exists" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'mock'" -l "api-key" -d "Your Vonage API key" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'mock'" -l "api-secret" -d "Your Vonage API secret" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'mock'" -l "json" -d "Output as JSON" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'mock'" -l "yaml" -d "Output as YAML" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'mock'" -l "version" -d "Show version number" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'mock'" -s "v" -l "verbose" -d "Print more information" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'mock'" -s "d" -l "debug" -d "Print debug information" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'mock'" -l "no-color" -d "Toggle color output off" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'mock'" -s "h" -l "help" -d "Show help" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'mock'" -s "f" -l "force" -d "Force the command to run without confirmation" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'numbers'" -l "version" -d "Show version number" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'numbers'" -s "v" -l "verbose" -d "Print more information" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'numbers'" -s "d" -l "debug" -d "Print debug information" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'numbers'" -l "no-color" -d "Toggle color output off" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'numbers'" -s "h" -l "help" -d "Show help" # global
complete -f -c "vonage" -n "__fish_seen_subcommand_from 'numbers'; and not __fish_seen_subcommand_from 'buy' 'cancel' 'list' 'search' 'update'" -a "buy" -d "Purchase a number" # sub
complete -f -c "vonage" -n "__fish_seen_subcommand_from 'numbers'; and not __fish_seen_subcommand_from 'buy' 'cancel' 'list' 'search' 'update'" -a "cancel" -d "Cancel a number" # sub
complete -f -c "vonage" -n "__fish_seen_subcommand_from 'numbers'; and not __fish_seen_subcommand_from 'buy' 'cancel' 'list' 'search' 'update'" -a "list" -d "List all numbers that you own" # sub
complete -f -c "vonage" -n "__fish_seen_subcommand_from 'numbers'; and not __fish_seen_subcommand_from 'buy' 'cancel' 'list' 'search' 'update'" -a "search" -d "Search for numbers for purchase" # sub
complete -f -c "vonage" -n "__fish_seen_subcommand_from 'numbers'; and not __fish_seen_subcommand_from 'buy' 'cancel' 'list' 'search' 'update'" -a "update" -d "Update a number" # sub
complete -c "vonage" -n "__fish_seen_subcommand_from 'numbers buy'" -l "version" -d "Show version number" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'numbers buy'" -s "v" -l "verbose" -d "Print more information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'numbers buy'" -s "d" -l "debug" -d "Print debug information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'numbers buy'" -l "no-color" -d "Toggle color output off" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'numbers buy'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'numbers cancel'" -l "version" -d "Show version number" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'numbers cancel'" -s "v" -l "verbose" -d "Print more information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'numbers cancel'" -s "d" -l "debug" -d "Print debug information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'numbers cancel'" -l "no-color" -d "Toggle color output off" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'numbers cancel'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'numbers list'" -l "version" -d "Show version number" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'numbers list'" -s "v" -l "verbose" -d "Print more information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'numbers list'" -s "d" -l "debug" -d "Print debug information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'numbers list'" -l "no-color" -d "Toggle color output off" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'numbers list'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'numbers search'" -l "version" -d "Show version number" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'numbers search'" -s "v" -l "verbose" -d "Print more information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'numbers search'" -s "d" -l "debug" -d "Print debug information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'numbers search'" -l "no-color" -d "Toggle color output off" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'numbers search'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'numbers update'" -l "version" -d "Show version number" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'numbers update'" -s "v" -l "verbose" -d "Print more information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'numbers update'" -s "d" -l "debug" -d "Print debug information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'numbers update'" -l "no-color" -d "Toggle color output off" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'numbers update'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'tunnel'" -l "version" -d "Show version number" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'tunnel'" -s "v" -l "verbose" -d "Print more information" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'tunnel'" -s "d" -l "debug" -d "Print debug information" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'tunnel'" -l "no-color" -d "Toggle color output off" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'tunnel'" -s "h" -l "help" -d "Show help" # global
complete -f -c "vonage" -n "__fish_seen_subcommand_from 'tunnel'; and not __fish_seen_subcommand_from 'ngrokid'" -a "ngrokid" -d "Open an ngrok tunnel for an application" # sub
complete -c "vonage" -n "__fish_seen_subcommand_from 'tunnel ngrokid'" -l "version" -d "Show version number" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'tunnel ngrokid'" -s "v" -l "verbose" -d "Print more information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'tunnel ngrokid'" -s "d" -l "debug" -d "Print debug information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'tunnel ngrokid'" -l "no-color" -d "Toggle color output off" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'tunnel ngrokid'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'users'" -l "version" -d "Show version number" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'users'" -s "v" -l "verbose" -d "Print more information" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'users'" -s "d" -l "debug" -d "Print debug information" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'users'" -l "no-color" -d "Toggle color output off" # global
complete -c "vonage" -n "__fish_seen_subcommand_from 'users'" -s "h" -l "help" -d "Show help" # global
complete -f -c "vonage" -n "__fish_seen_subcommand_from 'users'; and not __fish_seen_subcommand_from 'create' 'delete' 'list' 'show' 'update'" -a "create" -d "Create a user" # sub
complete -f -c "vonage" -n "__fish_seen_subcommand_from 'users'; and not __fish_seen_subcommand_from 'create' 'delete' 'list' 'show' 'update'" -a "delete" -d "Delete a user" # sub
complete -f -c "vonage" -n "__fish_seen_subcommand_from 'users'; and not __fish_seen_subcommand_from 'create' 'delete' 'list' 'show' 'update'" -a "list" -d "List users" # sub
complete -f -c "vonage" -n "__fish_seen_subcommand_from 'users'; and not __fish_seen_subcommand_from 'create' 'delete' 'list' 'show' 'update'" -a "show" -d "Show user" # sub
complete -f -c "vonage" -n "__fish_seen_subcommand_from 'users'; and not __fish_seen_subcommand_from 'create' 'delete' 'list' 'show' 'update'" -a "update" -d "Update a user" # sub
complete -c "vonage" -n "__fish_seen_subcommand_from 'users create'" -l "version" -d "Show version number" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'users create'" -s "v" -l "verbose" -d "Print more information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'users create'" -s "d" -l "debug" -d "Print debug information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'users create'" -l "no-color" -d "Toggle color output off" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'users create'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'users delete'" -l "version" -d "Show version number" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'users delete'" -s "v" -l "verbose" -d "Print more information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'users delete'" -s "d" -l "debug" -d "Print debug information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'users delete'" -l "no-color" -d "Toggle color output off" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'users delete'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'users list'" -l "version" -d "Show version number" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'users list'" -s "v" -l "verbose" -d "Print more information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'users list'" -s "d" -l "debug" -d "Print debug information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'users list'" -l "no-color" -d "Toggle color output off" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'users list'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'users show'" -l "version" -d "Show version number" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'users show'" -s "v" -l "verbose" -d "Print more information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'users show'" -s "d" -l "debug" -d "Print debug information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'users show'" -l "no-color" -d "Toggle color output off" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'users show'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'users update'" -l "version" -d "Show version number" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'users update'" -s "v" -l "verbose" -d "Print more information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'users update'" -s "d" -l "debug" -d "Print debug information" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'users update'" -l "no-color" -d "Toggle color output off" # subcommands flags
complete -c "vonage" -n "__fish_seen_subcommand_from 'users update'" -s "h" -l "help" -d "Show help" # subcommands flags