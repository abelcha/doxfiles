function getz

    set max_jobs 3
    #echo "=====gets======$argv====="
    ztor $argv[1] >/dev/null
    #sleep 1
    #echo "==============="
    #echo $resp > logsxx.txt
    ztor $argv[1] | grep "<a" | grep -v "\.\." | sd '^[^"]+\"' '' | sd '".+>' '' | shuf | while read -l line -a
        if endsWith $line[1] /
            #echo 'going to' "$argv[1]/$line[1]" '..'
            #sleep 1
            getz "$argv[1]/$line[1]" &
            #echo done
        else
            set -l formatteduri (echo "$argv[1]/$line[1]" |sttr url-decode|sd -F '//', '/')
            echo "$formatteduri,$argv[2],$line[3],"(echo $line[4]|sd '[^0-9]' ''| numfmt --to si)
        end
    end

end
