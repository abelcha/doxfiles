function w --wraps=command
    argparse --ignore-unknown f/full -- $argv
    #echo "_flag_full: |$_flag_full|"
    #set -l realwich (realpath/usr/bin/which  $argv[1]))
    #breakpoint
    
    set xtype (fish -c "type -p $argv[1]")
    #fset xtype
    #set ztype (fish -c "type -p $argv[1]")
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
    #echo2 ggggggggg
    #echo2 "[$(file $source)] [$source]"
    if string match -rq ': text/' -- (file -I $source)
        #if [ -e "$source" -a "$(head $source|uchardet)" != unknown ]
        #echo2 preview_script "[$source]" "[$(head $source|uchardet)]"
        preview_script $source
        #string match --quiet -e "$xfile" "$source"; and set -l mainbin "--theme dracula"; or set -l mainbin "--color never"
        #set --query _flag_full; and bat --style full $xfile $asource; or preview_script $asource
    end
    return
    functions "$argv[1]"
    hr '⋍'
    set source (command -s $argv[1])
    if test -z "$source"
        echo -e (set_color --dim ) not found
        return
    end
    set realsource (realpath $source)
    set asource (anon $source)
    if test -L $file; and [ "$file" != "$asource" ]
        echo "$source"\t"->"\t"$realsource" | anon
    else
        echo "$source" | anon
    end
    
    if string match -r ASCII -- (file $source)
        #echo2 ASCII
        string match --quiet -e "$realwich" "$source"; and set -l mainbin "--theme dracula"; or set -l mainbin "--color never"
        set --query _flag_full; and bat --style full $mainbin $asource; or preview_script $asource
    end
end
