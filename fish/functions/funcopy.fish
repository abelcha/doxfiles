function funcopy --wraps=type --argument-names fname --argument-names destname
    if test -z "$destname"
        return (echo2 "usage fname destname")
    end
    set destpath "$__fish_config_dir/functions/$destname.fish"
    set fpath "$__fish_config_dir/functions/$fname.fish"
    command cp -n $fpath $destpath || return
    ambr "$fname" "$destname" "$destpath" || return
end
