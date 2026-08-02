function duckup
    set v $argv[1]
    set vbin "/opt/bin/duckdb@$v"
    if test -x $vbin
        command $vbin $argv[2..]
        #echo existss
    else
        curl https://install.duckdb.org/v$v/duckdb_cli-osx-universal.zip | funzip > $vbin && chmod 777 $vbin  && command $vbin $argv[2..]
    end
end
