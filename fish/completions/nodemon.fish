complete -c "nodemon" -l "config" -d "alternate nodemon.json config file to use" # global
complete -c "nodemon" -l "exitcrash" -d "exit on crash, allows nodemon to work with other watchers" # global
complete -c "nodemon" -s "i" -l "ignore" -d "ignore specific files or directories" # global
complete -c "nodemon" -l "no-colors" -d "disable color output" # global
complete -c "nodemon" -l "signal" -d "use specified kill signal instead of default (ex. SIGTERM)" # global
complete -c "nodemon" -s "w" -l "watch" -d "watch directory \"dir\" or files. use once for each directory or file to watch" # global
complete -c "nodemon" -l "no-update-notifier" -d "opt-out of update version check" # global
complete -c "nodemon" -s "C" -l "on-change-only" -d "execute script on change only, not startup" # global
complete -c "nodemon" -l "cwd" -d "change into <dir> before running the script" # global
complete -c "nodemon" -s "e" -l "ext" -d "extensions to look for, ie. \"js,pug,hbs\"" # global
complete -c "nodemon" -s "I" -l "no-stdin" -d "nodemon passes stdin directly to child process" # global
complete -c "nodemon" -l "spawn" -d "force nodemon to use spawn (over fork) [node only]" # global
complete -c "nodemon" -s "x" -l "exec" -d "execute script with \"app\", ie. -x \"python -v\"" # global
complete -c "nodemon" -d "to tell nodemon stop slurping arguments" # global
complete -c "nodemon" -s "d" -l "delay" -d "debounce restart for \"n\" seconds" # global
complete -c "nodemon" -s "L" -l "legacy-watch" -d "use polling to watch for changes (typically needed when watching over a network/Docker)" # global
complete -c "nodemon" -s "P" -l "polling-interval" -d "combined with -L, milliseconds to poll for (default 100)" # global
complete -c "nodemon" -l "dump" -d "print full debug configuration" # global
complete -c "nodemon" -s "h" -l "help" -d "default help" # global
complete -c "nodemon" -l "help" -d "help on a specific feature. Try \"--help topics\"" # global
complete -c "nodemon" -s "q" -l "quiet" -d "minimise nodemon messages to start/stop only" # global
complete -c "nodemon" -s "v" -l "version" -d "current nodemon version" # global
complete -c "nodemon" -s "V" -l "verbose" -d "show detail on what is causing restarts" # global