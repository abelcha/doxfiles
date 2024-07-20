function countby
    set -l argv --sort c $argv
    #set -l argv "--order" "DESC" $argv
    argparse --name=countby asc desc 'w/where=' 's/sort=' -- $argv; or return
    #echo "$_flag_sort|$_flag_s|$_flag_h|$_flag_help|$_flag_desc|$_flag_asc"
    from $argv[1] select $argv[2] , count[ $argv[2] ] as c (set -q _flag_where; and echo "WHERE";or echo "") $_flag_where group by $argv[2] order by $_flag_sort (set -q _flag_desc;and echo "DESC";or echo "ASC")
end
