complete -c pmset -f

# Main options
complete -c pmset -s a -d "Apply settings to all power sources"
complete -c pmset -s b -d "Apply settings to battery power"
complete -c pmset -s c -d "Apply settings to charger (wall power)"
complete -c pmset -s u -d "Apply settings to UPS"
complete -c pmset -s g -d "Display current settings"

# Settings
set -l settings displaysleep disksleep sleep womp ring powernap proximitywake autorestart lidwake acwake lessbright halfdim sms hibernatemode hibernatefile ttyskeepawake destroyfvkeyonstandby

for setting in $settings
    complete -c pmset -n "__fish_not_contain_opt -s g" -a $setting -d "Set $setting"
end

# UPS specific arguments
complete -c pmset -n "__fish_seen_subcommand_from -u" -a haltlevel -d "Battery level to trigger emergency shutdown"
complete -c pmset -n "__fish_seen_subcommand_from -u" -a haltafter -d "Time on UPS power before emergency shutdown"
complete -c pmset -n "__fish_seen_subcommand_from -u" -a haltremain -d "Estimated time remaining before emergency shutdown"

# Schedule and repeat arguments
complete -c pmset -n "__fish_seen_subcommand_from schedule" -a "cancel cancelall" -d "Cancel scheduled events"
complete -c pmset -n "__fish_seen_subcommand_from schedule" -a "sleep wake poweron shutdown wakeorpoweron" -d "Event type"
complete -c pmset -n "__fish_seen_subcommand_from repeat" -a cancel -d "Cancel repeating events"
complete -c pmset -n "__fish_seen_subcommand_from repeat" -a "sleep wake poweron shutdown wakeorpoweron" -d "Event type"

# Other arguments
complete -c pmset -a relative -d "Schedule relative wake or poweron"
complete -c pmset -a touch -d "Re-read settings from disk"
complete -c pmset -a sleepnow -d "Cause immediate system sleep"
complete -c pmset -n 'not __fish_seen_argument .' -a displaysleepnow -d "Cause display to sleep immediately"
complete -c pmset -a resetdisplayambientparams -d "Reset ambient light parameters"
complete -c pmset -a restoredefaults -d "Restore default power management settings"

# Getting options
set -l get_options live custom cap sched ups ps bat pslog rawlog therm thermlog assertions assertionslog sysload sysloadlog ac adapter log uuid uuidlog history history_detailed powerstate powerstatelag stats systemstate everything

complete -c pmset -n "__fish_seen_subcommand_from -g" -a "$get_options" -d "Display specific information"
