function _.filter_argv_flags
    set --path rtn
    for i in $argv
        switch $i
            case '-*'
                set --append rtn $i
            case '*'
                continue
        end
    end
    string collect --  $rtn
end
