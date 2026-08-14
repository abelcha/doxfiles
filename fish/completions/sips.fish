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
complete -c "sips" -s "g" -l "getProperty" -d getProperty # global
complete -c "sips" -s "X" -l "extractTag" -d extractTag # global
complete -c "sips" -l "verify" -d verify # global
complete -c "sips" -s "1" -l "oneLine" -d oneLine # global
complete -c "sips" -s "x" -l "extractProfile" -d extractProfile # global
complete -c "sips" -s "s" -l "setProperty" -d setProperty # global
complete -c "sips" -s "d" -l "deleteProperty" -d deleteProperty # global
complete -c "sips" -l "deleteTag" -d deleteTag # global
complete -c "sips" -l "copyTag" -d copyTag # global
complete -c "sips" -l "loadTag" -d loadTag # global
complete -c "sips" -l "repair" -d repair # global
complete -c "sips" -s "o" -l "out" -d out # global
complete -c "sips" -s "e" -l "embedProfile" -d embedProfile # global
complete -c "sips" -s "E" -l "embedProfileIfNone" -d embedProfileIfNone # global
complete -c "sips" -s "m" -l "matchTo" -d matchTo # global
complete -c "sips" -s "M" -l "matchToWithIntent" -d matchToWithIntent # global
complete -c "sips" -l "deleteColorManagementProperties" -d deleteColorManagementProperties # global
complete -c "sips" -s "r" -l "rotate" -d rotate # global
complete -c "sips" -s "f" -l "flip" -d flip -xa "horizontal vertical" # global
complete -c "sips" -s "c" -l "cropToHeightWidth" -d cropToHeightWidth # global
complete -c "sips" -l "cropOffset" -d cropOffset # global
complete -c "sips" -s "p" -l "padToHeightWidth" -d padToHeightWidth # global
complete -c "sips" -l "padColor" -d padColor # global
complete -c "sips" -s "z" -l "resampleHeightWidth" -d resampleHeightWidth # global
complete -c "sips" -l "resampleWidth" -d resampleWidth # global
complete -c "sips" -l "resampleHeight" -d resampleHeight # global
complete -c "sips" -s "Z" -l "resampleHeightWidthMax" -d resampleHeightWidthMax # global
complete -c "sips" -s "i" -l "addIcon" -d addIcon # global
complete -c "sips" -l "optimizeColorForSharing" -d optimizeColorForSharing # global
complete -c "sips" -s "j" -l "js" -d js # global
complete -c "sips" -l "debug" -d debug # global
complete -c "sips" -s "h" -l "help" -d help # global
complete -c "sips" -s "H" -l "helpProperties" -d helpProperties # global
complete -c "sips" -l "man" -d man # global
complete -c "sips" -s "v" -l "version" -d version # global
complete -c "sips" -l "formats" -d formats # global
