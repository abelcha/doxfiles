function importsql
    rgg '^(http+.+)\s(.+\()' "$argv[1]" -r 'INSERT INTO $2' --passthru | sd '^(http[^\s]+)' 'ALTER TABLE' | sd 'CREATE TABLE `' 'CREATE TABLE  IF NOT EXISTS `' | sd 'json_object\([^\)]+\)' 'json_object()' | sd 'http.+\.com' '' >d5.sql
    rm create*.sql
    ucsplit d5.sql -n 3 -k -f "create." -b "%03d.sql" "/CREATE.TABLE/" "{*}"
    rm xx.db
    sqlite-utils create-database xx.db
    fd create. | slice 100 215 | while read -l line
        echo "running $line"
        echo "==============================="
        mysql2sqlite_awk $line | sqlite3 ./xx.db 2>| grep -v INFO | shiki --lang sql --theme material-theme
    end
end
