#!/usr/local/bin/fish
function preview_script --argument pathx len
    set fpath (echo $pathx| anon |sd '/me/.config' '/me/config' )
    set -l script_len (wcl $fpath)
    set -l preview_len (§= $len |§ 25)
    set -l more_len (math "$script_len - $preview_len")
    set -l pagging (test 40 -lt $script_len; and _ always;or _ never)
    bat --style header,header-filesize,header-filename,grid --theme Nord --paging $pagging $fpath
end
