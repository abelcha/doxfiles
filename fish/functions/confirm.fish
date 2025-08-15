function confirm
    if not read --prompt-str "$argv" --nchars 1 --array --local xchar
        echo2 abording...
        return -1
    end
    if [ "$xchar" = "" -o "$xchar" = y ]
        eval $argv
    end
end
