function ducklite
    duckdb -init /dev/null -readonly $argv;return
    set -a nargs
    for i in $argv
        set ex (path extension $i)
        if string match -rq '\.(sqlite|sqlite3|db)' -- $i
            set -f dbname (string replace $ex '' -- $i)
            set -f dbpath $i
        else
            set --append nargs $i
        end
    end
    echo (string escape --style script --  duckdb -echo -cmd "ATTACH \'$dbpath\' \;USE $dbname")
    #USE $dbname\" $nargs
end
