function fish_run_function --no-scope-shadowing --argument-names file
    begin
        /bin/cat "$file"
        echo (path basename --no-extension $argv)
    end 
end
