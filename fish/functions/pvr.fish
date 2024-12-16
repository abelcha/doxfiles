function pvr --wraps=pv
    pv --last-written 16 --progress --timer --bytes --average-rate $argv
end
