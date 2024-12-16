function bacpack
    #set dbname (echo )
    #set -l argv --sort c $argv⏎
    argparse --name=bacpack --min-args=1 t/target p/property u/user d/dbname c/catalog -- $argv
    or return 1

    echo ~/abin/sqlpackage/sqlpackage /Action:Import /SourceFile:$argv[1] /Diagnostics:True /MaxParallelism:32 /ThreadMaxStackSize:2048 /TargetConnectionString:"Server=tcp:$flag_dbname.database.windows.net,1433;Initial Catalog=$flag_catalog;Persist Security Info=False;User ID=$flag_user;Password=$flag_pass;MultipleActiveResultSets=True;Encrypt=True;TrustServerCertificate=True;Connection Timeout=10;"$_flag_target /Properties:RebuildIndexesOfflineForDataPhase=True
end
