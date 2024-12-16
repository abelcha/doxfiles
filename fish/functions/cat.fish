function cat --wraps=bat
        if not isatty stdout; and test -z "$FORCE_RENDERING"
                ucat $argv
                return 0
        end
        set -l dotspl (string split '.' $argv[-1])
        set -l decompname (string join -n '.' $dotspl[1..-2])
        switch ( echo $dotspl[-1] )
                case md
                        glow --pager $argv
                case zng zjson zson
                        zq $argv
                case json
                        jfmt $argv 2>/dev/null | bat --theme TwoDark $argv --language JSON --file-name $decompname
                case png jpeg jpg gif mp4 webp svg ico heif pdf
                        imgcat $argv
                case xlsx
                        xls2csv $argv | csvlens
                case gz
                        rapidgzip -c -d $argv | bat --color always --theme=ansi --file-name $decompname --language json
                case hjson
                        cat (hjson-cli -j $argv|psub -s .json)
                case 7z
                        7z e $argv -so | bat --file-name $argv
                case lz4
                        lz4cat $argv -c | bat --file-name $decompname --force-colorization --theme Monokai\ Extended
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
                case plist
                        plist_cat $argv[1] | jq
                case bson
                        bsondump $argv[1] | jq --monochrome-output | bat --color always --theme Coldark-Dark --language java
                case torrent
                        aria2c -S $argv[1] | bat --language groovy
                case msg
                        extract_msg --dump-stdout $argv
                case '*'
                        if test -n '$argv[1]' -a -d '$argv[1]'
                                lld $argv
                        else if test (string match -r '^http' -- "$argv[1]")
                                x $argv
                        else
                                bat --force-colorization --style full --theme OneHalfDark $argv
                        end
        end
end
