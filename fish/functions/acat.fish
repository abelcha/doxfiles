function cat --wraps=bat
    argparse --ignore-unknown force -- $argv
    if not isatty stdout
        #and not test -z "$_flag_force"
        /bin/cat $argv
        return 0
    end
    # set -l ext (get_ext $argv)
    #echo $ext
    #set -l ext (echo $argv[-1] | sed 's/.*\.//')
    set -l dotspl (string split '.' $argv[-1])
    #echo $dotspl
    set -l decompname (string join -n '.' $dotspl[1..-2])
    switch ( echo $dotspl[-1] )
        case png jpeg jpg gif mp4 webp svg ico heif
            imgcat $argv
        case xlsx
            xls2csv $argv | csvlens
        case gz
            #echo "decompname: $decompname"
            cat (rapidgzip -c -d $argv|psub -s $decompname) #| bat --color always --theme Coldark-Cold --file-name "$decompname"
        case hjson
            cat (hjson-cli -j $argv|psub -s .json)
        case xz
            xzcat $argv | cat --file-name $decompname
        case zstd
            zstdcat $argv | bat --color always --theme=Nord --file-name $decompname --language json
        case tzt
            zstdcat $argv | bat --color always --theme Coldark-Cold --language passwd
        case zst
            zstdcat $argv | bat --force-colorization --style plain --theme Coldark-Dark --language html
        case parquet
            pq cat $argv | jq --monochrome-output | bat --color always --language json
            #rk $argv
        case bson
            bsondump $argv[1] | jq --monochrome-output | bat --color always --theme Coldark-Dark --language java
        case zip tar.gz
            # echo "遲   Extract $argv[1]"
        case msg
            extract_msg --dump-stdout $argv
        case '*'
            if test -n '$argv[1]' -a -d '$argv[1]'
                lld $argv
            else
                command bat --force-colorization --style plain --theme OneHalfDark $argv
            end
    end
end
