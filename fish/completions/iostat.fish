complete -c "iostat" -s "?" -d "Display a usage statement and exit" # global
complete -c "iostat" -s "c" -d "Repeat the display count times" -xa "{}" # global
complete -c "iostat" -s "C" -d "Display CPU statistics" # global
complete -c "iostat" -s "d" -d "Display only device statistics" # global
complete -c "iostat" -s "I" -d "Display total statistics for a given time period" # global
complete -c "iostat" -s "K" -d "Display block count in kilobytes" # global
complete -c "iostat" -s "n" -d "Display up to devs number of devices" -xa "{}" # global
complete -c "iostat" -s "o" -d "Display old-style iostat device statistics" # global
complete -c "iostat" -s "T" -d "Display TTY statistics" # global
complete -c "iostat" -s "U" -d "Display system load averages" # global
complete -c "iostat" -s "w" -d "Pause wait seconds between each display" -xa "{}" # global