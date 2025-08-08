function countby
    #set file $argv[1]
    #set field $argv[
    set -l argv --sort c $argv
    #set -l argv "--order" "DESC" $argv
    argparse --name=countby asc desc 'w/where=' 's/sort=' -- $argv; or return
    set file $argv[1]
    set field $argv[2]
    if not isatty stdin
        echo notatty
        set file (mktemp --suffix .csv)
        set field $argv[1]
        if test -z "$field"
            set field col1
            echo $field >$file
        end
        gcat - >>$file
    end
    #echo "$_flag_sort|$_flag_s|$_flag_h|$_flag_help|$_flag_desc|$_flag_asc"
    from $file select $field , count[ @ ] as c GROUP BY $field (set -q _flag_where; and echo "HAVING";or echo "") $_flag_where order by $_flag_sort (set -q _flag_desc;and echo "DESC";or echo "ASC")
end
