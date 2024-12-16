function preview_script --argument pathx len
    set fpath (echo $pathx| anon |sd '/me/.config' '/me/config' )
    set -l script_len (wcl $fpath)
    set -l preview_len (§= $len |§ 25)
    set -l more_len (math "$script_len - $preview_len")
    set -l pagging (test 40 -lt $script_len; and _ always;or _ never)
    bat --style default --paging $pagging $fpath
    #bat --line-range 0:$preview_len --style full $fpath 
    #test $preview_len -gt $script_len; and return
    #echo (set_color magenta --bold ) " $script_len"\n\t\t" ... $more_len  more lines ..."\n\n(set_color normal )(hr =)
end
