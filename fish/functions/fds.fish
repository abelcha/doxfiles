function fds --wraps=fd
    set totalsize 0
    set bold "\e[1m"
    set reset "\e[0m"
    fd $argv | while read -l line
        set -l size "$(BLOCKSIZE=512 du -s  $line|choose 0)000"
        set totalsize (math "$totalsize + $size")
        #echo $size\t$line
        echo -e "$bold "(numfmt $size --to iec)"$reset\t$line"
    end
    echo -e "$bold "(numfmt $totalsize --to iec)"$reset\t Total:"
    #gum log --prefix (numfmt --padding 5 $totalsize --to iec )'\tTotal'
    #echo "Total: "(echo $totalsize|numfmt --to iec)
end
