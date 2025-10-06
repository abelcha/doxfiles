function confirm
    #echo ""
    echo (set_color blue )
    if not read --shell --prompt-str "$argv" --nchars 1 --array --local xchar
        echo2 ...
        echo2 abording...
        return -1
    end
    if [ "$xchar" = "" -o "$xchar" = y ]
        echo2 ...
        echo2 lets go
        eval $argv
    end
end
