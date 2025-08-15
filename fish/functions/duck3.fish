function duck3 --wraps=duckdb
    args --init $argv
    set dcmd (args --words)
    set --path arropts
    set --path gflags
    set dout (not isatty stdout|§ "csv")
    set outputOpts (args o/output=$dout --format "-{}" )
    #fset defOuput outputOpts
    set --append preOpts ".echo on"
    set --append preOpts (args a/attach --format "attach '{}'" )
    set --append partOpts (args f/format --format "FORMAT {}" )
    set --append partOpts (args e/extension --format "FILE_EXTENSION {}" )
    set --append partOpts (args p/pattern --format "FILENAME_PATTERN {}" )
    set --append partOpts (args c/compression --format "compression {}" )
    set --append partOpts (args partition --format "PARTITION_BY ( {} ), OVERWRITE_OR_IGNORE" )
    #fset preOpts partOpts dcmd
    if [ "$(args l/limit)" != 0 ]
        args --has copy/partition; or set --append olimit (args l/limit=1000 --format "LIMIT {}")
    end
    set zdef (test -f $dcmd[1] && _ "FROM '$dcmd[1]' $dcmd[2..] $olimit" |: "$dcmd $olimit")
    fset zdef
    set -l xcmd (args copy --format "COPY ($dcmd) TO {}" |§ $zdef )
    #test -z "$xcmd" && set xcmd (args from --format "FROM '$dcmd' ")
    #fset xcmd dcmd
    #set xcmd ()
    #fset xcmd
    if not test -z "$partOpts"
        #echo helllyeeeee $partOpts
        set --append partOpts
        set cparams (string join ','  $partOpts)
        set dcmd "$dcmd ( $cparams )"
    end
    if [ "$(args l/limit)" != 0 ]
        #echo NOLOMIT
        #fset olimit
        #args --has copy/partition; or set --append olimit (args l/limit=1000 --format "LIMIT {}")

    end
    #echo =================== $xcmd
    #echo2 -- duckdb '-c "'$outputOpts $preOpts\" -c " $xcmd " \" ( echo $dcmd | chroma -l postgresql --style vulcan --unbuffered ) \"
    #echo ============= duckdb -c \"$xcmd\" ============
    #echo duckdb $outputOpts '-c "'$preOpts"'" -c " $xcmd $olimit"
    #echo -n --
    set --append zcmd $preOpts $outputOpts -c ".echo on" -c $xcmd
    echo -- duckdb $zcmd | chroma -l postgresql --style vulcan --unbuffered >/dev/stderr
    fset zcmd
    duckdb $zcmd
    #duckdb $outputOpts -c ".echo on" -c $xcmd $olimit
    #status $cmd 

end
