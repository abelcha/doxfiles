complete -c "btop" -s "h" -l "help" -d "show this help message and exit" # global
complete -c "btop" -s "v" -l "version" -d "show version info and exit" # global
complete -c "btop" -s "lc" -l "low-color" -d "disable truecolor, converts 24-bit colors to 256-color" # global
complete -c "btop" -s "t" -l "tty_on" -d "force (ON) tty mode, max 16 colors and tty friendly graph symbols" # global
complete -c "btop" -s "+t" -l "tty_off" -d "force (OFF) tty mode" # global
complete -c "btop" -s "p" -l "preset" -d "start with preset" -xa "0 1 2 3 4 5 6 7 8 9" # global
complete -c "btop" -s "u" -l "update" -d "set the program update rate in milliseconds" # global
complete -c "btop" -l "utf-force" -d "force start even if no UTF-8 locale was detected" # global
complete -c "btop" -l "debug" -d "start in DEBUG mode: shows microsecond timer for information collect and screen draw functions and sets loglevel to DEBUG" # global