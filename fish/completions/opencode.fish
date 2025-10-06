complete -c "opencode" -l "help" -d "show help" # global
complete -c "opencode" -s "v" -l "version" -d "show version number" # global
complete -c "opencode" -l "print-logs" -d "print logs to stderr" # global
complete -c "opencode" -l "log-level" -d "log level" -xa "DEBUG INFO WARN ERROR" # global
complete -c "opencode" -s "m" -l "model" -d "model to use in the format of provider/model" # global
complete -c "opencode" -s "c" -l "continue" -d "continue the last session" # global
complete -c "opencode" -s "s" -l "session" -d "session id to continue" # global
complete -c "opencode" -s "p" -l "prompt" -d "prompt to use" # global
complete -c "opencode" -l "agent" -d "agent to use" # global
complete -c "opencode" -l "port" -d "port to listen on" # global
complete -c "opencode" -s "h" -l "hostname" -d "hostname to listen on" # global
complete -f -c "opencode" -n "__fish_use_subcommand" -a "attach" -d "attach to a running opencode server" # sub
complete -f -c "opencode" -n "__fish_use_subcommand" -a "run" -d "run opencode with a message" # sub
complete -f -c "opencode" -n "__fish_use_subcommand" -a "auth" -d "manage credentials" # sub
complete -f -c "opencode" -n "__fish_use_subcommand" -a "agent" -d "manage agents" # sub
complete -f -c "opencode" -n "__fish_use_subcommand" -a "upgrade" -d "upgrade opencode to the latest or a specific version" # sub
complete -f -c "opencode" -n "__fish_use_subcommand" -a "serve" -d "starts a headless opencode server" # sub
complete -f -c "opencode" -n "__fish_use_subcommand" -a "models" -d "list all available models" # sub
complete -f -c "opencode" -n "__fish_use_subcommand" -a "export" -d "export session data as JSON" # sub
complete -f -c "opencode" -n "__fish_use_subcommand" -a "github" -d "manage GitHub agent" # sub
complete -c "opencode" -n "__fish_seen_subcommand_from 'attach'" -l "print-logs" -d "print logs to stderr" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'attach'" -l "log-level" -d "log level" -xa "DEBUG INFO WARN ERROR" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'attach'" -s "m" -l "model" -d "model to use in the format of provider/model" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'attach'" -s "c" -l "continue" -d "continue the last session" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'attach'" -s "s" -l "session" -d "session id to continue" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'attach'" -s "p" -l "prompt" -d "prompt to use" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'attach'" -l "agent" -d "agent to use" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'attach'" -l "port" -d "port to listen on" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'attach'" -s "h" -l "hostname" -d "hostname to listen on" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'run'" -l "print-logs" -d "print logs to stderr" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'run'" -l "log-level" -d "log level" -xa "DEBUG INFO WARN ERROR" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'run'" -s "m" -l "model" -d "model to use in the format of provider/model" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'run'" -s "c" -l "continue" -d "continue the last session" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'run'" -s "s" -l "session" -d "session id to continue" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'run'" -s "p" -l "prompt" -d "prompt to use" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'run'" -l "agent" -d "agent to use" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'run'" -l "port" -d "port to listen on" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'run'" -s "h" -l "hostname" -d "hostname to listen on" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'auth'" -l "print-logs" -d "print logs to stderr" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'auth'" -l "log-level" -d "log level" -xa "DEBUG INFO WARN ERROR" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'auth'" -s "m" -l "model" -d "model to use in the format of provider/model" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'auth'" -s "c" -l "continue" -d "continue the last session" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'auth'" -s "s" -l "session" -d "session id to continue" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'auth'" -s "p" -l "prompt" -d "prompt to use" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'auth'" -l "agent" -d "agent to use" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'auth'" -l "port" -d "port to listen on" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'auth'" -s "h" -l "hostname" -d "hostname to listen on" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'agent'" -l "print-logs" -d "print logs to stderr" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'agent'" -l "log-level" -d "log level" -xa "DEBUG INFO WARN ERROR" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'agent'" -s "m" -l "model" -d "model to use in the format of provider/model" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'agent'" -s "c" -l "continue" -d "continue the last session" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'agent'" -s "s" -l "session" -d "session id to continue" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'agent'" -s "p" -l "prompt" -d "prompt to use" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'agent'" -l "agent" -d "agent to use" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'agent'" -l "port" -d "port to listen on" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'agent'" -s "h" -l "hostname" -d "hostname to listen on" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'upgrade'" -l "print-logs" -d "print logs to stderr" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'upgrade'" -l "log-level" -d "log level" -xa "DEBUG INFO WARN ERROR" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'upgrade'" -s "m" -l "model" -d "model to use in the format of provider/model" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'upgrade'" -s "c" -l "continue" -d "continue the last session" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'upgrade'" -s "s" -l "session" -d "session id to continue" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'upgrade'" -s "p" -l "prompt" -d "prompt to use" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'upgrade'" -l "agent" -d "agent to use" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'upgrade'" -l "port" -d "port to listen on" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'upgrade'" -s "h" -l "hostname" -d "hostname to listen on" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'serve'" -l "print-logs" -d "print logs to stderr" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'serve'" -l "log-level" -d "log level" -xa "DEBUG INFO WARN ERROR" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'serve'" -s "m" -l "model" -d "model to use in the format of provider/model" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'serve'" -s "c" -l "continue" -d "continue the last session" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'serve'" -s "s" -l "session" -d "session id to continue" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'serve'" -s "p" -l "prompt" -d "prompt to use" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'serve'" -l "agent" -d "agent to use" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'serve'" -l "port" -d "port to listen on" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'serve'" -s "h" -l "hostname" -d "hostname to listen on" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'models'" -l "print-logs" -d "print logs to stderr" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'models'" -l "log-level" -d "log level" -xa "DEBUG INFO WARN ERROR" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'models'" -s "m" -l "model" -d "model to use in the format of provider/model" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'models'" -s "c" -l "continue" -d "continue the last session" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'models'" -s "s" -l "session" -d "session id to continue" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'models'" -s "p" -l "prompt" -d "prompt to use" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'models'" -l "agent" -d "agent to use" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'models'" -l "port" -d "port to listen on" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'models'" -s "h" -l "hostname" -d "hostname to listen on" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'export'" -l "print-logs" -d "print logs to stderr" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'export'" -l "log-level" -d "log level" -xa "DEBUG INFO WARN ERROR" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'export'" -s "m" -l "model" -d "model to use in the format of provider/model" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'export'" -s "c" -l "continue" -d "continue the last session" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'export'" -s "s" -l "session" -d "session id to continue" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'export'" -s "p" -l "prompt" -d "prompt to use" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'export'" -l "agent" -d "agent to use" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'export'" -l "port" -d "port to listen on" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'export'" -s "h" -l "hostname" -d "hostname to listen on" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'github'" -l "print-logs" -d "print logs to stderr" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'github'" -l "log-level" -d "log level" -xa "DEBUG INFO WARN ERROR" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'github'" -s "m" -l "model" -d "model to use in the format of provider/model" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'github'" -s "c" -l "continue" -d "continue the last session" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'github'" -s "s" -l "session" -d "session id to continue" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'github'" -s "p" -l "prompt" -d "prompt to use" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'github'" -l "agent" -d "agent to use" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'github'" -l "port" -d "port to listen on" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'github'" -s "h" -l "hostname" -d "hostname to listen on" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'attach'" -l "help" -d "show help" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'attach'" -s "v" -l "version" -d "show version number" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'attach'" -l "print-logs" -d "print logs to stderr" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'attach'" -l "log-level" -d "log level" -xa "DEBUG INFO WARN ERROR" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'run'" -l "help" -d "show help" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'run'" -s "v" -l "version" -d "show version number" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'run'" -l "print-logs" -d "print logs to stderr" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'run'" -l "log-level" -d "log level" -xa "DEBUG INFO WARN ERROR" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'run'" -l "command" -d "the command to run, use message for args" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'run'" -s "c" -l "continue" -d "continue the last session" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'run'" -s "s" -l "session" -d "session id to continue" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'run'" -l "share" -d "share the session" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'run'" -s "m" -l "model" -d "model to use in the format of provider/model" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'run'" -l "agent" -d "agent to use" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'auth'" -l "help" -d "show help" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'auth'" -s "v" -l "version" -d "show version number" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'auth'" -l "print-logs" -d "print logs to stderr" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'auth'" -l "log-level" -d "log level" -xa "DEBUG INFO WARN ERROR" # global
complete -f -c "opencode" -n "__fish_seen_subcommand_from 'auth'" -a "login" -d "log in to a provider" # sub
complete -f -c "opencode" -n "__fish_seen_subcommand_from 'auth'" -a "logout" -d "log out from a configured provider" # sub
complete -f -c "opencode" -n "__fish_seen_subcommand_from 'auth'" -a "list" -d "list providers" # sub
complete -c "opencode" -n "__fish_seen_subcommand_from 'auth login'" -l "print-logs" -d "print logs to stderr" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'auth login'" -l "log-level" -d "log level" -xa "DEBUG INFO WARN ERROR" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'auth logout'" -l "print-logs" -d "print logs to stderr" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'auth logout'" -l "log-level" -d "log level" -xa "DEBUG INFO WARN ERROR" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'auth list'" -l "print-logs" -d "print logs to stderr" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'auth list'" -l "log-level" -d "log level" -xa "DEBUG INFO WARN ERROR" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'agent'" -l "help" -d "show help" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'agent'" -s "v" -l "version" -d "show version number" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'agent'" -l "print-logs" -d "print logs to stderr" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'agent'" -l "log-level" -d "log level" -xa "DEBUG INFO WARN ERROR" # global
complete -f -c "opencode" -n "__fish_seen_subcommand_from 'agent'" -a "create" -d "create a new agent" # sub
complete -c "opencode" -n "__fish_seen_subcommand_from 'agent create'" -l "print-logs" -d "print logs to stderr" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'agent create'" -l "log-level" -d "log level" -xa "DEBUG INFO WARN ERROR" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'upgrade'" -l "help" -d "show help" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'upgrade'" -s "v" -l "version" -d "show version number" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'upgrade'" -l "print-logs" -d "print logs to stderr" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'upgrade'" -l "log-level" -d "log level" -xa "DEBUG INFO WARN ERROR" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'upgrade'" -s "m" -l "method" -d "installation method to use" -xa "curl npm pnpm bun brew" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'serve'" -l "help" -d "show help" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'serve'" -s "v" -l "version" -d "show version number" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'serve'" -l "print-logs" -d "print logs to stderr" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'serve'" -l "log-level" -d "log level" -xa "DEBUG INFO WARN ERROR" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'serve'" -s "p" -l "port" -d "port to listen on" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'serve'" -s "h" -l "hostname" -d "hostname to listen on" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'models'" -l "help" -d "show help" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'models'" -s "v" -l "version" -d "show version number" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'models'" -l "print-logs" -d "print logs to stderr" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'models'" -l "log-level" -d "log level" -xa "DEBUG INFO WARN ERROR" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'export'" -l "help" -d "show help" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'export'" -s "v" -l "version" -d "show version number" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'export'" -l "print-logs" -d "print logs to stderr" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'export'" -l "log-level" -d "log level" -xa "DEBUG INFO WARN ERROR" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'github'" -l "help" -d "show help" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'github'" -s "v" -l "version" -d "show version number" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'github'" -l "print-logs" -d "print logs to stderr" # global
complete -c "opencode" -n "__fish_seen_subcommand_from 'github'" -l "log-level" -d "log level" -xa "DEBUG INFO WARN ERROR" # global
complete -f -c "opencode" -n "__fish_seen_subcommand_from 'github'" -a "install" -d "install the GitHub agent" # sub
complete -c "opencode" -n "__fish_seen_subcommand_from 'github install'" -l "print-logs" -d "print logs to stderr" # subcommands flags
complete -c "opencode" -n "__fish_seen_subcommand_from 'github install'" -l "log-level" -d "log level" -xa "DEBUG INFO WARN ERROR" # subcommands flags