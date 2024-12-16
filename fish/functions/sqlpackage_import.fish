function sqlpackage_import --description 'SqlPackage Import' --argument file
    #set dbname (echo )
    #set -l argv --sort c $argv⏎
    argparse --min-args=1 indexes target= diagnostics= max-parallelism= max-stack-size= "props=+" -- $argv
    or return 1

    set -l cmd "~/abin/sqlpackage/sqlpackage"
    set --append cmd "/Action:Import"
    set --append cmd "/SourceFile:$file"
    set destdb (echo (basename $file|sttr title|string sub -e -7|string sub -e 10)_(random))
    # set -l connection_str (echo ")
    set --append cmd "/TargetConnectionString:\"Server=tcp:$DBNAME.database.windows.net,1433;Initial Catalog=$CATALOG;Persist Security Info=False;User ID=$USERID;Password=$PASS;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=True;Connection Timeout=10;Database=$destdb;$_flag_target\""

    if set -q _flag_diagnostics
        set --append cmd "/Diagnostics:True"
    end
    if set -q _flag_max_parallelism
        set --append cmd "/MaxParallelism:$_flag_max_parallelism"
    end
    if set -q _flag_max_stack_size
        set --append cmd "/ThreadMaxStackSize:$_flag_max_stack_size"
    end
    if not set -q _flag_indexes
        set --append cmd "/Properties:RebuildIndexesOfflineForDataPhase=True"
    end
    if set -q _flag_props
        for prop in $_flag_props
            set --append cmd "/Properties:$prop"
        end
    end
    set --append cmd $argv[2..]

    echo $cmd

end
