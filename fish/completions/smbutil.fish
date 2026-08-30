# Ordered, flag-ignoring subcommand-path matcher.
# True when the non-option tokens after the command equal the args in order.
function __fish_seen_subcommand_path
    set -l subs
    for t in (commandline -pxc)[2..]
        string match -q -- '-*' $t; and continue
        set -a subs $t
    end
    test "$subs" = "$argv"
end
complete -c "smbutil" -l "h" -d "display usage" # global
complete -c "smbutil" -l "v" -d "verbose" # global
complete -f -c "smbutil" -n "__fish_use_subcommand" -a "help" -d "display help on specified subcommand" # sub
complete -f -c "smbutil" -n "__fish_use_subcommand" -a "lookup" -d "resolve NetBIOS name to IP address" # sub
complete -f -c "smbutil" -n "__fish_use_subcommand" -a "status" -d "resolve IP address or DNS name to NetBIOS names" # sub
complete -f -c "smbutil" -n "__fish_use_subcommand" -a "view" -d "list resources on specified host" # sub
complete -f -c "smbutil" -n "__fish_use_subcommand" -a "dfs" -d "list DFS referrals" # sub
complete -f -c "smbutil" -n "__fish_use_subcommand" -a "identity" -d "identity of the user as known by the specified host" # sub
complete -f -c "smbutil" -n "__fish_use_subcommand" -a "statshares" -d "list the attributes of mounted share(s)" # sub
complete -f -c "smbutil" -n "__fish_use_subcommand" -a "multichannel" -d "list the attributes of the channels of mounted share(s)" # sub
complete -f -c "smbutil" -n "__fish_use_subcommand" -a "snapshot" -d "list snapshots for the mount path" # sub
complete -f -c "smbutil" -n "__fish_use_subcommand" -a "smbstat" -d "list info about item at path" # sub
complete -c "smbutil" -n "__fish_seen_subcommand_from 'help'" -l "h" -d "display usage" # subcommands flags
complete -c "smbutil" -n "__fish_seen_subcommand_from 'help'" -l "v" -d "verbose" # subcommands flags
complete -c "smbutil" -n "__fish_seen_subcommand_from 'lookup'" -l "h" -d "display usage" # subcommands flags
complete -c "smbutil" -n "__fish_seen_subcommand_from 'lookup'" -l "v" -d "verbose" # subcommands flags
complete -c "smbutil" -n "__fish_seen_subcommand_from 'status'" -l "h" -d "display usage" # subcommands flags
complete -c "smbutil" -n "__fish_seen_subcommand_from 'status'" -l "v" -d "verbose" # subcommands flags
complete -c "smbutil" -n "__fish_seen_subcommand_from 'view'" -l "h" -d "display usage" # subcommands flags
complete -c "smbutil" -n "__fish_seen_subcommand_from 'view'" -l "v" -d "verbose" # subcommands flags
complete -c "smbutil" -n "__fish_seen_subcommand_from 'dfs'" -l "h" -d "display usage" # subcommands flags
complete -c "smbutil" -n "__fish_seen_subcommand_from 'dfs'" -l "v" -d "verbose" # subcommands flags
complete -c "smbutil" -n "__fish_seen_subcommand_from 'identity'" -l "h" -d "display usage" # subcommands flags
complete -c "smbutil" -n "__fish_seen_subcommand_from 'identity'" -l "v" -d "verbose" # subcommands flags
complete -c "smbutil" -n "__fish_seen_subcommand_from 'statshares'" -l "h" -d "display usage" # subcommands flags
complete -c "smbutil" -n "__fish_seen_subcommand_from 'statshares'" -l "v" -d "verbose" # subcommands flags
complete -c "smbutil" -n "__fish_seen_subcommand_from 'multichannel'" -l "h" -d "display usage" # subcommands flags
complete -c "smbutil" -n "__fish_seen_subcommand_from 'multichannel'" -l "v" -d "verbose" # subcommands flags
complete -c "smbutil" -n "__fish_seen_subcommand_from 'snapshot'" -l "h" -d "display usage" # subcommands flags
complete -c "smbutil" -n "__fish_seen_subcommand_from 'snapshot'" -l "v" -d "verbose" # subcommands flags
complete -c "smbutil" -n "__fish_seen_subcommand_from 'smbstat'" -l "h" -d "display usage" # subcommands flags
complete -c "smbutil" -n "__fish_seen_subcommand_from 'smbstat'" -l "v" -d "verbose" # subcommands flags
complete -c "smbutil" -n "__fish_seen_subcommand_from 'lookup'" -l "e" # global
complete -c "smbutil" -n "__fish_seen_subcommand_from 'lookup'" -l "w" # global
complete -c "smbutil" -n "__fish_seen_subcommand_from 'lookup'" -l "t" # global
complete -c "smbutil" -n "__fish_seen_subcommand_from 'status'" -l "a" # global
complete -c "smbutil" -n "__fish_seen_subcommand_from 'status'" -l "e" # global
complete -c "smbutil" -n "__fish_seen_subcommand_from 'status'" -l "hostname" # global
complete -c "smbutil" -n "__fish_seen_subcommand_from 'view'" -s "A" -d "authorize only" # global
complete -c "smbutil" -n "__fish_seen_subcommand_from 'view'" -s "N" -d "don't prompt for a password" # global
complete -c "smbutil" -n "__fish_seen_subcommand_from 'view'" -s "G" -d "allow guest access" # global
complete -c "smbutil" -n "__fish_seen_subcommand_from 'view'" -s "g" -d "authorize with guest only" # global
complete -c "smbutil" -n "__fish_seen_subcommand_from 'view'" -s "a" -d "authorize with anonymous only" # global
complete -c "smbutil" -n "__fish_seen_subcommand_from 'view'" -s "f" -d "don't share session" # global
complete -c "smbutil" -n "__fish_seen_subcommand_from 'identity'" -s "N" -d "don't prompt for a password" # global
complete -c "smbutil" -n "__fish_seen_subcommand_from 'statshares'" -s "a" -d "attributes of all mounted shares" # global
complete -c "smbutil" -n "__fish_seen_subcommand_from 'statshares'" -s "m" -d "attributes of share mounted at mount_path" # global
complete -c "smbutil" -n "__fish_seen_subcommand_from 'statshares'" -s "f" -d "print info in the provided format. Supported formats: JSON" -xa "JSON" # global
complete -c "smbutil" -n "__fish_seen_subcommand_from 'multichannel'" -l "a" -d "attributes of all mounted shares" # global
complete -c "smbutil" -n "__fish_seen_subcommand_from 'multichannel'" -l "m" -d "attributes of share mounted at mount_path" # global
complete -c "smbutil" -n "__fish_seen_subcommand_from 'multichannel'" -l "i" -d "display session information" # global
complete -c "smbutil" -n "__fish_seen_subcommand_from 'multichannel'" -l "c" -d "show information about client interfaces" # global
complete -c "smbutil" -n "__fish_seen_subcommand_from 'multichannel'" -l "s" -d "show information about server interfaces" # global
complete -c "smbutil" -n "__fish_seen_subcommand_from 'multichannel'" -l "x" -d "show information about the established connections" # global
complete -c "smbutil" -n "__fish_seen_subcommand_from 'multichannel'" -l "f" -d "print info in the provided format" -xa "JSON" # global
complete -c "smbutil" -n "__fish_seen_subcommand_from 'snapshot'" -s "m" -d "do snapshot command on mount_path (can be root or item in mount_path)" # global
complete -c "smbutil" -n "__fish_seen_subcommand_from 'snapshot'" -s "a" -d "do snapshot command on root of all mounted shares" # global
complete -c "smbutil" -n "__fish_seen_subcommand_from 'snapshot'" -s "f" -d "print info in the provided format" -xa "JSON" # global
complete -c "smbutil" -n "__fish_seen_subcommand_from 'smbstat'" -l "f" -d "print info in the provided format" -xa "JSON" # global
