function wcl
    wc -l $argv | string trim|choose 0
end
