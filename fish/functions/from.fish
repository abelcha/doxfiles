function from --wraps=duckdb --argument file cmd
    echo dd $file dd $cmd xx
    if test -z $cmd
        set cmd "select *"
    end
    duckdb -c "FROM '$file' $cmd ;" $argv[3] $argv[4] $argv[5]
end
