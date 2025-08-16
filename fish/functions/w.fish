function w --wraps=command
    set xtype (fish -c "type -p $argv[1]")
    if string match -q '*builtin' -- $xtype
        echo $xtype
        return
    end
    if [ (echo $xtype| wc -m) -lt 10 ]
        type $argv[1]
        return
    end
    
    if not test -e "$xtype"
        echo -e (set_color --dim ) not found
        return
    end
    set source (realpath "$xtype"|choose 0)
    echo -n "$xtype" | anon
    test -L "$xtype"; and echo -n (set_color blue) " -> $(realpath $source|anon)"
    echo
    if string match -rq ': text/' -- (file -I $source)
        preview_script $source
    end
end
