function cat --wraps=bat --wraps=/bin/cat
    function command_or_cat
        if type -q $argv[1]
            exec $argv
        else if type -q bat
            bat $argv
        else
            /bin/cat $argv
        end
    end
    if test -n "$VSCODE_INJECTION"
        /bin/cat $argv
        return
    end
    if not isatty stdout; and test -z "$FORCE_RENDERING"
        /bin/cat $argv
        return 0
    end
    set -l dotspl (string split '.' $argv[-1])
    set -l decompname (string join -n '.' $dotspl[1..-2])
    switch ( echo $dotspl[-1] )
        case md
            command_or_cat glow --pager $argv
        case zng zjson zson
            command_or_cat zq $argv
        case json
            if type -q jfmt
                jfmt $argv 2>/dev/null | bat --theme TwoDark $argv --language JSON --file-name $decompname
            else
                bat --theme TwoDark $argv
            end
        case png jpeg jpg gif mp4 webp svg ico heif pdf
            command_or_cat imgcat $argv
        case xlsx
            command_or_cat xls2csv $argv | command_or_cat csvlens
        case gz
            command_or_cat rapidgzip -c -d $argv | command_or_cat bat --color always --theme=ansi --file-name $decompname --language json
        case hjson
            command_or_cat cat (hjson-cli -j $argv|psub -s .json)
        case 7z
            command_or_cat 7zz e $argv -so | command_or_cat bat --file-name $argv
        case lz4
            command_or_cat lz4cat $argv -c | command_or_cat bat --file-name $decompname --force-colorization --theme Monokai\ Extended
        case xz
            command_or_cat xzcat $argv | command_or_cat cat --file-name $decompname
        case zstd
            command_or_cat zstdcat $argv | command_or_cat bat --color always --theme=Nord --file-name $decompname --language json
        case tzt
            command_or_cat zstdcat $argv | command_or_cat bat --color always --theme Coldark-Cold --language passwd
        case zst
            command_or_cat zstdcat $argv | command_or_cat bat --force-colorization --style plain --theme Coldark-Dark --language html
        case parquet
            command_or_cat pq cat $argv | command_or_cat jq --monochrome-output | command_or_cat bat --color always --language json
        case plist
            command_or_cat cat (plist-parser $argv[1]|psub -s ".$(path basename $argv[1]).json" )
        case bson
            command_or_cat bsondump $argv[1] | command_or_cat jq --monochrome-output | command_or_cat bat --color always --theme Coldark-Dark --language java
        case torrent
            command_or_cat aria2c -S $argv[1] | command_or_cat bat --language groovy
        case msg
            command_or_cat extract_msg --dump-stdout $argv
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
