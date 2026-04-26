function duckv
    set dversion $argv[1]
    set dpath "/me/abin/duckdb@$dversion"
    if test -f "$dpath"
        if not command $dpath $argv[2..] 
            echo2 init failed, starting without .duckdbrc
            command $dpath -init /dev/null $argv[2..]
        end
        #/me/abin/$version
    end
    7z x (x "https://github.com/duckdb/duckdb/releases/download/v$dversion/duckdb_cli-osx-universal.zip"|psub -s .zip) -so >$dpath
    chexec $dpath
    duckv $argv
    #command $dpath -init /dev/null $argv[2..]
end
