function ??=
    if [ (count $argv) -lt 2 ]
        echo $argv[1]
    else
        echo $argv[2..]
    end
end
