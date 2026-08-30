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
