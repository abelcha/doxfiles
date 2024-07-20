
function w --wraps command
    /usr/bin/which -a "$argv[1]" | while read -l file
        if test -L $file
            set origin (readlink -f $file)
            echo "$file -> $origin"
        else
            echo "$file"
        end
    end
    functions "$argv[1]"
end

