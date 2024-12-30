function cleanpath --argument-names PATHBASE
    set --path -g TMP_PATH #$base_PATH
    set fdopts " --follow --has-result --base-directory"
    echo $$PATHBASE | plines | while read -l line
        #set --path -l PRATH
        if not test -d "$line"
            echo (set_color magenta ) NOPE "$line"
            continue
        end
        set allexec ( fd -tx --base-directory "$line" -L -d1 )
        set allfunc ( fd -tf .fish\$ --base-directory "$line" -L -d1 )
        if not fd -tx --base-directory "$line" --follow --has-results && not fd .fish\$ --base-directory "$line" --follow --has-results
            
            echo (set_color red ) N "$line"
            continue
        end
        set resolved ( path resolve "$line")
        if contains $resolved $TMP_PATH
            echo (set_color brred)"DUPL: " "$line\t$resolved"
            continue
        end
        set --append TMP_PATH (anon "$resolved")
        
        echo (set_color normal ) OK (anon "$line")\t\t(set_color --dim ) "# exec $(count $allexec), func $(count $allfunc)"
        #set -S PRATH
    end
    echo (set_color normal )
    set -S TMP_PATH
end
