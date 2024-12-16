
function head --wraps=uhead --argument file
    if not isatty stdout
        command head $argv
        return 0
    end
    switch ( extension $file )
        case 'jso*'
            headj $argv
        case parquet
            pq head $argv
        case '*'
            uhead $argv
    end

end
