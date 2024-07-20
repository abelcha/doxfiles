function peek --wraps=sed
    sed -n $argv[1]p $argv[2..]
end
