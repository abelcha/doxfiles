function _.filter_argv_opts
    #set --append rtn
    set --path rtn
    for i in $argv
        #echo $i
        
        switch $i
            case '-*'
                continue
                #echo consitn
            case '*'
                set --append rtn $i
        end
    end
    string collect $rtn
end
