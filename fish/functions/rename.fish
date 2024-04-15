function rename -a p
    set -l val (gum input --value "$p" )
    gum confirm "mv $p $val" && mv $p $val
end
