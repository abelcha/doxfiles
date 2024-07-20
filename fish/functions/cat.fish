function cat --wraps=bat --description Use\ bat\ instead\ of\ cat\ unless\ it\'s\ a\ Markdown\ file,\ then\ use\ mdless
    if not isatty stdout
        /bin/cat $argv
        return 0
    end
    # set -l ext (get_ext $argv)
    #echo $ext
    switch ( echo $argv[-1] | sed 's/.*\.//' )
        case png jpeg jpg gif mp4 webp svg
            imgcat $argv
        case xlsx
            xls2csv $argv | csvlens

        case tzt
            zstdcat $argv | bat --color always --theme Coldark-Cold --language passwd
        case zst
            zstdcat $argv | bat --force-colorization --style plain --theme Coldark-Dark --language html
        case parquet
            pqrs cat $argv[1] -j | jq --monochrome-output | bat --color always --language json
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
