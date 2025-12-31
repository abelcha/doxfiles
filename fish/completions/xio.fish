complete -c xio -s p -l progress -d "Show real-time progress of open files" # global
complete -c xio -s i -l interval -d "Update interval in milliseconds (default: 2000, min: 100)" # global
complete -c xio -x -a '(__fish_complete_pids)'
