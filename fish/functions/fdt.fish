function fdt --wraps=fd
    set totalsize 0
    set bold "\e[1m"
    set reset "\e[0m"
    fd $argv | while read -l line
        set -l ts (stat -f %m $line)
        #echo $size\t$line
        echo -e "$bold "(TZ=UTC date -r $ts "+%Y-%m-%dT%H:%M:%SZ")"$reset\t$line"
    end
    #
    #    echo -e "$bold "(gnumfmt $totalsize --to iec)"$reset\t Total:"
    #gum log --prefix (numfmt --padding 5 $totalsize --to iec )'\tTotal'
    #echo "Total: "(echo $totalsize|numfmt --to iec)
end
