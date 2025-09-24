complete -c memory_pressure -s l -d '<level>  - allocate memory until a low memory notification is received (warn OR critical)'
complete -c memory_pressure -s p -d '<percent-free> - allocate memory until percent free is this (or less)'
complete -c memory_pressure -s s -d '<seconds> - how long to sleep between checking for a set percent level'
complete -c memory_pressure -s w -d "<percent-free> - don't allocate, just wait until percent free is this then exit"
complete -c memory_pressure -s y -d '<seconds> - Hysteresis Interval: how long to wait after requested percntage free is reached, before exiting program. Requires the usage of the -p option'
complete -c memory_pressure -s v -d '<print VM stats> - print VM statistics every sampling interval'
complete -c memory_pressure -s Q -d "<quiet mode>  - reduces the tool's output"
complete -c memory_pressure -s S -d "- simulate the system's memory pressure level without applying any real pressure"
