function basext
    if test -n (string match '\.' $argv[1])
        echo $argv[1]
    else
        string match --groups-only -r '^(.+)\..+$' $argv[1]
    end
end
