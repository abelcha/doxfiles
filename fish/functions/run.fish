function run --wraps='bun run'
    #if test "$argv[1]"
    set runtime (detect_runtime)
    #fset runtime
    for it in $argv
        switch $it
            case '*malloy'
                malloy run $argv
                return
            case '*.ts' '*.js'
                bun run $argv
                return
            case '*.gleam'
                gleam run $argv
                return
            case '*.go'
                go run $argv
                return
            case '*.py'
                uv run $argv
                return
        end
    end
    if not test -z "$runtime"
        complete -c run --wraps "$runtime"
        command "$runtime" run $argv
    else
        command bun run $argv
        
    end
    
end
