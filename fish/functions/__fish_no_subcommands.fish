function __fish_no_subcommands
    test -z "$(commandline -opc)[2]"
end
