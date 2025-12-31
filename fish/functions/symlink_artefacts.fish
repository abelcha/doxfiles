function symlink_artefacts
    fd -td -H --no-ignore --prune '^(node_modules|target|\.venv)$' | while read -l l
        if test -L "$l"
            echo $line allready symlink
        else
            set line (string replace -r '\/$' ''  "$l")
            set nn (path basename $line)
            set destp (dest "/mods/builds/dev/$(path dirname $line )")
            echo $line
            test -d "$destp/$nn" && fexec rm $destp/$nn
            fexec /bin/mv $line $destp
            #echo command lnx --real-path $destp/node-modules/ --fake-path $line
            fexec ln -s "$destp/$nn" (path resolve "$line")
        end
        #echo  (path dirname  $line)
    end
end
