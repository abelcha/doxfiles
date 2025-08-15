function cleanpath --argument-names PATHBASE
    set --path -g TMP_PATH #$base_PATH
    set fdopts " --follow --has-result --base-directory"
    set --append cnt 0
    set totalcount (count $$PATHBASE)
    set --append reminders $$PATHBASE BASE
    echo $$PATHBASE | plines | tac | while read -l line
        #set --append cnt i
        #set --erase cnt[-1]
        set i (count $cnt)
        #set --path -l PRATH
        set --erase reminders[-1]
        if not test -d "$line"
            echo2 (set_color magenta ) "#NOPE" "$line"
            echo "set --erase $PATHBASE""[$(count $reminders)]"
            #set --erase cnt[-1]
            continue
        end
        set allexec ( fd -tx --base-directory "$line" -L -d1 )
        set allfunc ( fd -tf .fish\$ --base-directory "$line" -L -d1 )
        if not fd -tx --base-directory "$line" --follow --has-results && not fd .fish\$ --base-directory "$line" --follow --has-results
            
            echo2 (set_color red ) "#N" "$line"
            echo "set -gx --erase $PATHBASE""[$i]"
            set --erase cnt[-1]
            continue
        end
        set resolved ( path resolve "$line")
        if contains $resolved $TMP_PATH
            echo2 (set_color brred)"# DUPL: " "$line\t$resolved"
            echo "set --erase $PATHBASE""[$i]"
            set --erase cnt[-1]
            continue
        end
        set --append TMP_PATH (anon "$resolved")
        
        echo2 (set_color normal )'#' OK (anon "$line")\t\t(set_color --dim ) "# exec $(count $allexec), func $(count $allfunc)"
        set --append cnt x
        
        #set -S PRATH
        
    end
    echo (set_color normal )
    set -S TMP_PATH 2>&-
    #set --show i
end
