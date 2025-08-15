function genman
    #set argv[1] (man -w $argv[1])
    #if not test -e (path basename $argv[1])
    set cname "$argv[1]"
    set mpath (fexec man -w "$argv[1]" 2>&-)
    set -S mpath
    if not test -f "$mpath"
        echo man NOT FOUND
        return -1
    end
    #fset mpath
    set argv[1] $mpath
    #set argv[1]
    #fset argv[1]
    #end
    #echo $mpat :: $argv
    #if string match -q "dry-run" -- "$argv"
    set zcmd /usr/local/share/fish/tools/create_manpage_completions.py $mpath --stdout $argv[2..]
    python $zcmd | command chroma --lexer sh --style average
    set dpath "$__fish_config_dir/completions/$cname.fish"
    execo $zcmd \| sponge $dpath
    #if not gum confirm "copy file ? cp"
    #return -1
    #end
    #echo python $zcmd $dpath
end
