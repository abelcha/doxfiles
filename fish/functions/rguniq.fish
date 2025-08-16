function rguniq --wraps=rg --argument-names file
    #echo (set_color blue)$argv[1](set_color normal ) >/dev/stderr
    rg -wza $regphone2 "$file" $argv[2..] --only-matching | sd -f e '[^\d\n]+' '' | rev | string sub -l 8 | sort -u | read -z matches
    #echo $matches
    test -z "$matches"; and return 0
    set cnt (echo $matches|wc -l)
    test $cnt -gt 10; or return 0
    echo (set_color blue) (echo (_ $matches|wcl) matches)\t$file (set_color normal )
    #echo $matches
    #test $status; and echo (set_color blue)$file(set_color normal ) >/dev/stderr
end
