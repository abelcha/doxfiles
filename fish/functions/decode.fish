function decode --wraps='charm table' --argument str
    set -l decoders (sttr -h|awk { print \$1 } |grep decode)
    # echo xx $decoders xx
    for decoder in $decoders
        echo \"$decoder\",\"(sttr $decoder $str 2> /dev/null)\"
    end # | charm table -p -c 'method,result' --border thick -b rounded --selected.foreground="4" --border.foreground "#DDB6F2" --header.foreground="#96CDFB" $argv[2..]
end
