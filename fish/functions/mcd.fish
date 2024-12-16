function mcd
    mkdir -p $argv[1] && cd (basename $argv[1])
end
