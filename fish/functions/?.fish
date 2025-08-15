function ? --wraps=§= --wraps=command
    #argparse --ignore-unkns/status -- $argv
    args --init $argv
    if isatty stdin
        echo2 "?should be used with pipe"
        return -1
    end
    if [ $status != 0 ]
        return 42
    end
    read in
    if not test -z "$in"; or args --has s/status
        echo $in | _.rwrap echo $argv
    end
end
