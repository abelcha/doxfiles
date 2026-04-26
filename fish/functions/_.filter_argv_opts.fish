function _.filter_argv_opts
    set -f _rtn
    for i in (string split ' ' --  "$argv")
        switch $i
            case '-*'
                continue
            case '*'
                set -f --append _rtn $i
        end
    end
    string collect $_rtn
end
